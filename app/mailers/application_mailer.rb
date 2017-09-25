class ApplicationMailer < ActionMailer::Base
  default from: ENV['mail_username']

  layout 'mailer'

  def send_welcome_email(user)
    @user = user
    @url = 'https://Audovare.com/login'
    mail(:to => @user.email, :subject => "Welcome on Audovare!")
  end

end
