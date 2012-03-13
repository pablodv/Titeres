class NotificationsMailer < ActionMailer::Base
  default :to => "pablo.moreiramora@gmail.com"

  def new_message(message)
    @message = message
    mail(
      :from    => message.email,
      :subject => "Nueva Consulta"
    )
  end

end
