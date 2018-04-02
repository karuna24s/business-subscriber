class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @subscribers }
    end
  end

  def show
    @subscriber = Subscriber.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json:  @subscriber }
    end
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to subscriber_path(@subscriber)
    else
      redirect_to new_subscriber_path, alert: "You must a name and email address.."
    end
  end

  def update
    @subscriber = Subscriber.find(params[:id])
    @subscriber.update(subscriber_params)
    redirect_to subscriber_path(@subscriber)
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
   redirect_to subscribers_path
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:name, :email_address, :business_id)
  end
end
