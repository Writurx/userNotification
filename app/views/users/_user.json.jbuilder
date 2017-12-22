json.extract! user, :id, :firstName, :lastName, :phone, :email, :sendToMail, :sendToSms, :created_at, :updated_at
json.url user_url(user, format: :json)
