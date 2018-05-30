class UserMailer < ApplicationMailer
  #default from: 'default@mail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.create_event.subject
  #
  def create_event(current_user, event)
    @current_user = current_user
    @event = event

    mail(to: current_user.email, subject: "New Event").deliver
  end

  def send_notification(current_user, event)
    @current_user = current_user
    @event = event

    mail(to: current_user.email, subject: "Notification").deliver
  end
end
