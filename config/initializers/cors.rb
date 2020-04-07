Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://rona-tracker.herokuapp.com'
    resource '*',
      :headers => :any,
      :methods => %i(get post put patch delete options head),
      :credentials => true
      # %i is array of symbols
  end
end
