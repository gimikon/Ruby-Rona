Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3001','https://rona-covid19-tracker.netlify.app'
    resource '*',
      :headers => :any,
      :methods => %i(get post put patch delete options head),
      :credentials => true
      # %i is array of symbols
  end
end
