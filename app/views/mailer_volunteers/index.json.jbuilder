json.array!(@mailer_volunteers) do |mailer_volunteer|
  json.extract! mailer_volunteer, :id, :name, :email, :position, :linkedin, :phone_number, :reason
  json.url mailer_volunteer_url(mailer_volunteer, format: :json)
end
