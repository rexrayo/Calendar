json.extract! employee, :id, :name, :lastname, :sex, :created_at, :updated_at
json.url employee_url(employee, format: :json)
