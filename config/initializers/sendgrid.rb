begin
  if Rails.env.production?
    config.action_mailer.smtp_settings = {
      :enable_starttls_auto => true,
      :address => "smtp.gmail.com",
      :port => 587,
      :domain => "gmail.com",
      :authentication => :login,
      :user_name => 'seedstarter.maisa@gmail.com',
      :password => 'maisa1234',
    }
  end
rescue
  nil
end
