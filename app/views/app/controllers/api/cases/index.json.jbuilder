json.array!(@app_controllers_api_cases) do |app_controllers_api_case|
  json.extract! app_controllers_api_case, :id
  json.url app_controllers_api_case_url(app_controllers_api_case, format: :json)
end
