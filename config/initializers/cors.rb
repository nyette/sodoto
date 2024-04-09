# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000' # Update with the actual URL of your React frontend
    resource '*', headers: :any, methods: %i[get post put patch delete options head]
  end
end
