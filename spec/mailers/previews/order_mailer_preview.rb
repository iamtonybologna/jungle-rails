class OrderMailerPreview < ActionMailer::Preview

  def order_email
    @order = Order.first
    @user = User.find_by(email: @order.email)
    @line_items = LineItem.where(order_id: @order.id)
    OrderMailer.order_email(@user, @order, @line_items)
  end

end