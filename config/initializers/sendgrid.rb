begin
  if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :login,
    :user_name      => 'catarse',
    :password       =>  Configuration[:sendgrid],
    :domain         => 'heroku.com'
    }
    ActionMailer::Base.delivery_method = :smtp
  end
rescue
  nil
end
