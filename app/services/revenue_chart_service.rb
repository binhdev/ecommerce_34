class RevenueChartService

  def legend_revenue_chart
    seven_days_ago.map{ |date| date.strftime("%b %d") }
  end

  def total_revenue_chart
    seven_days_ago.each.map {|date| Order.orders_by_date(date).total_revenue}
  end

  private

  def seven_days_ago
    (7.days.ago.to_date..1.days.ago)
  end
end
