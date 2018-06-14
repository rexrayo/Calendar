json.extract! meeting_employee, :id, :meeting_id, :employee_id, :created_at, :updated_at
json.url meeting_employee_url(meeting_employee, format: :json)
