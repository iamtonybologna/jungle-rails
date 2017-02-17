class OrderMailer < ApplicationMailer

  def order_email(user, order, line_items)
    @user = user
    @order = order
    @line_items = line_items
    @url  = 'http://localhost:3000/orders/:id'
    mail(to: @order.email, subject: 'Jungle - Order ' + @order.id.to_s + ' Details')
  end

end
