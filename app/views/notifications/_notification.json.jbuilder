json.extract! notification, :id, :sms, :textCode, :shablon, :created_at, :updated_at
json.url notification_url(notification, format: :json)
