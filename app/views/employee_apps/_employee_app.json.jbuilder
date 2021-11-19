json.extract! employee_app, :id, :employee_name, :age, :gender, :designation, :created_at, :updated_at
json.url employee_app_url(employee_app, format: :json)
