json.extract! task, :id, :title, :description, :theme_id, :created_at, :updated_at
json.url task_url(task, format: :json)
