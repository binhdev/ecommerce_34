class Admin::StatisticsController < BaseAdminController
  before_action :authenticate_user!, :load_order, except: [:index, :create]

  def index
    @catChart = CatalogChartService.new
    @orderChart = OrderChartService.new
    @revenueChart = RevenueChartService.new
  end
end
