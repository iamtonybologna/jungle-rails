class UserMailer < ApplicationMailer

  def order_email(user)
    @user = user
    @url  = 'http://localhost:3000/orders/:id'
    mail(to: @user.email, subject: 'Order Details')
  end

end
