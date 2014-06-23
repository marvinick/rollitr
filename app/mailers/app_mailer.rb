class AppMailer < ActionMailer::Base
  def signup_confirmation(user)
    @user = user
    mail to: user.email, from: "marvin8214@gmail.com", subject: "Get ready for some great food!"
  end
end
