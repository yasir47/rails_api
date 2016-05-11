class Api::CasesController < ApplicationController
  before_action :set_app_controllers_api_case, only: [:show, :update, :destroy]

  # GET /app/controllers/api/cases
  # GET /app/controllers/api/cases.json
  def index
    @app_controllers_api_cases = User.all

    render json: @app_controllers_api_cases
  end

  # GET /app/controllers/api/cases/1
  # GET /app/controllers/api/cases/1.json
  def show
    render json: @app_controllers_api_case
  end

  # POST /app/controllers/api/cases
  # POST /app/controllers/api/cases.json
  def create
    @app_controllers_api_case = App::Controllers::Api::Case.new(app_controllers_api_case_params)

    if @app_controllers_api_case.save
      render json: @app_controllers_api_case, status: :created, location: @app_controllers_api_case
    else
      render json: @app_controllers_api_case.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app/controllers/api/cases/1
  # PATCH/PUT /app/controllers/api/cases/1.json
  def update
    @app_controllers_api_case = App::Controllers::Api::Case.find(params[:id])

    if @app_controllers_api_case.update(app_controllers_api_case_params)
      head :no_content
    else
      render json: @app_controllers_api_case.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app/controllers/api/cases/1
  # DELETE /app/controllers/api/cases/1.json
  def destroy
    @app_controllers_api_case.destroy

    head :no_content
  end

  private

    def set_app_controllers_api_case
      @app_controllers_api_case = User.find(params[:id])
    end

    def app_controllers_api_case_params
      params[:app_controllers_api_case]
    end
end
