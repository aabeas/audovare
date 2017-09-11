class ApplicationMailer < ActionMailer::Base
  default from: ENV['mail_username']

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end

end
