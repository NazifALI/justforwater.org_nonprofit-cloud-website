json.extract! application_contact, :id, :name, :email, :phone, :description, :created_at, :updated_at
json.url application_contact_url(application_contact, format: :json)
