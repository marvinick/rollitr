class AppMailer < ActionMailer::Base
  def signup_confirmation(user)
    @user = user
    mail to: user.email, from: "chefleo@ontherolltulsa.com", subject: "Get ready for some great food!"
  end
end
