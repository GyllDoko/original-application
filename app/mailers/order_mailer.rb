class OrderMailer < ApplicationMailer

    def order_mail(user)
      @user = user
      mail to: user.email , subject: "Notification for buying product" 
    end
  end
  