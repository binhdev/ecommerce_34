class Admin::FeedbacksController < BaseAdminController
  before_action :authenticate_user!
  before_action :load_feedback, only: :destroy

  def index
    @search = Feedback.search(params[:q])
    @feedbacks = @search.result
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

  def load_feedback
    @feedback = Feedback.find_by id: params[:id]
    if @feedback.blank?
      flash[:danger] = t ".not_found"
      redirect_to request.referer
    end
  end

end
