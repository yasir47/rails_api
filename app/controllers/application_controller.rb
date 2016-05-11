class ApplicationController < ActionController::API

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  include ActionController::MimeResponds
  include ActionController::Serialization

  def error_response(response_code, error_message)
    [{ message: error_message, code: response_code }]
  end

  def success_response(response_code, object)
    [{ data: object, code: response_code }]
  end

end
