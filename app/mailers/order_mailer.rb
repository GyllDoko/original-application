class OrderMailer < ApplicationMailer

  def order_mail(user)
    @user = user

    mail to: user.email, subject: "Product checkout confirmation"
  end
end
