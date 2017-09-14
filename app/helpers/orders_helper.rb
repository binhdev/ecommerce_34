module OrdersHelper

  def show_status order
    st = t "orders.not_found"
    st = t "orders.waiting" if order.waiting?
    st = t "orders.finished" if order.accepted?
    st
  end

  def set_class order
    style_class = "danger"
    style_class = "warning" if order.waiting?
    style_class = "success" if order.accepted?
    style_class
  end

end
