class Api::UsersController < ApplicationController

  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: success_response(:ok, @users)
  end

  def show
    render json: success_response(:ok, @user)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: success_response(:ok, @user)
    else
      render json: error_response(:bad_request, @user.errors)
    end
  end

  def update
    if @user.update(user_params)
      render json: success_response(:ok, @user)
    else
      render json: error_response(:bad_request, @user.errors)
    end
  end

  def destroy
    @user.destroy
    render json: error_response(:ok, I18n.t("delete_data"))
  end

private

  def set_user
    @user = User.find(params[:id])
  rescue
    render json: error_response(:bad_request, I18n.t("invalid_request"))
  end

  def user_params
    params.require(:user).permit(:name, :email, :phone_no, :password, :gender)
  end

end
