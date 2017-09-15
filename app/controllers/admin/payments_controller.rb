class Admin::PaymentsController < BaseAdminController
  before_action :authenticate_user!
  before_action :load_payment, only: [:edit, :update, :destroy]

  def index
    @search = Payment.search(params[:q])
    @payments = @search.result
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new payment_params
    if @payment.save
      flash[:succes] = t "success"
      redirect_to admin_payments_path
    else
      flash[:danger] = t "danger"
      redirect_to request.referrer
    end
  end

  def edit
  end

  def update
    if @payment.update_attributes payment_params
      flash[:success] = t "success"
    else
      flash[:danger] = t "failed"
    end
    redirect_to request.referer
  end

  def destroy
    if @payment.destroy
      flash[:success] = t "success"
    else
      flash[:danger] = t "failed"
    end
    redirect_to request.referer
  end

  private

  def load_payment
    @payment = Payment.find_by id: params[:id]
    if @payment.blank?
      flash[:danger] = t ".not_found"
      redirect_to request.referer
    end
  end

  def payment_params
    params.require(:payment).permit :name, :payment_info
  end

end
