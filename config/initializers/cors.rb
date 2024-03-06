# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
	allow do
	  origins 'http://localhost:8080' # Update with the actual URL of your React frontend
	  resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
	end
  end
  