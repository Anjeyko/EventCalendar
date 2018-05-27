class UserMailer < ApplicationMailer
  #default from: 'default@mail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.create_event.subject
  #
  def create_event(current_user)
    @current_user = current_user

    mail to: current_user.email, subject: "New Event"
  end
end
