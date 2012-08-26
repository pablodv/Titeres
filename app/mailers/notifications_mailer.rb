class NotificationsMailer < ActionMailer::Base
  default :to => "leonel_la@yahoo.com.ar"

  def new_message(message)
    @message = message
    mail(
      :from    => message.email,
      :subject => "Nueva Consulta"
    )
  end

end
