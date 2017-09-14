class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  has_many :order_details, dependent: :destroy

  enum status: {pending: Settings.default.order.pending,
    waiting: Settings.default.order.waiting,
    accepted: Settings.default.order.accepted}

  scope :by_receiver_name, -> receiver_name do
    where "receiver_name like ?", "%#{receiver_name}%" if receiver_name.present?
  end

  scope :qty_state, -> state do
    where "status = ?", "#{state}" if state.present?
  end

  scope :orders_by_date, -> d do
    where "DATE(updated_at) = ? and status = ?", "#{d}",
      Settings.default.order.accepted if d.present?
  end

  scope :total_revenue, -> do
   sum(:amount)
  end

  def total_price
    total = 0
    order_details.each do |od|
      total = total + od.total_price
    end
    return total
  end
end
