class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @businesses }
    end
  end

  def show
    @business = Business.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json:  @business }
    end
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to business_path(@business)
    else
      redirect_to new_business_path, alert: "You must a business name.."
    end
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
    redirect_to business_path(@business)
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
   redirect_to businesses_path
  end

  private

  def business_params
    params.require(:business).permit(:business_name, :status)
  end

end
