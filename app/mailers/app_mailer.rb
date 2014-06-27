class AppMailer < ActionMailer::Base
  def signup_confirmation(user)
    @user = user
    mail to: user.email, from: "chefleo@ontherolltulsa.com", subject: "Get ready for some great food!"
  end

  def newsletter_update(page)
    @page = page
    mail to: @users.email, from: "chefleo@ontherolltulsa.com", subject: "Seasonal updates"
  end
end
