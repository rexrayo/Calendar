json.extract! meeting, :id, :title, :start, :end, :color, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)