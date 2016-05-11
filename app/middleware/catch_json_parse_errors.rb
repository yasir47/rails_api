class CatchJsonParseErrors

  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  rescue ActionDispatch::ParamsParser::ParseError
    return build_response if content_type_is_json?(env)
  end

private

  def content_type_is_json?(env)
    return false if env["CONTENT_TYPE"].blank?
    env['CONTENT_TYPE'].downcase == 'application/json'
  end

  def error_message
    I18n.t("invalid_json")
  end

  def build_response
    [{ message: error_message, code: :bad_request }]
  end

end
