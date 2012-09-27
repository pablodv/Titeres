ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'pablo.moreiramora',
  :password       => 'dv1306',
  :domain         => 'www.gmail.com'
}
ActionMailer::Base.delivery_method = :smtp
