class OrderChartService

  def legend_order_chart
    [I18n.t("pending"), I18n.t("waiting"), I18n.t("accpeted")]
  end

  def total_order_chart
    @qty_pending = Order.qty_state(Settings.default.order.pending).size
    @qty_waiting = Order.qty_state(Settings.default.order.waiting).size
    @qty_accepted = Order.qty_state(Settings.default.order.qty_accepted).size
    [@qty_pending, @qty_waiting, @qty_accepted]
  end

end
