Rails.application.config.middleware.insert_before 0, Rack::Cors do
	allow do
		origins 'localhost:3500', '127.0.0.1:3500', 'http://homelessnetwork.me:3500'
		resource '*', :headers => :any, :methods => [:get, :post, :options]
	end
end