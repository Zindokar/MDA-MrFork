json.extract! alert, :id, :subject, :content, :user_id, :created_at, :updated_at
json.url alert_url(alert, format: :json)
