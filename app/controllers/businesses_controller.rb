class BusinessesController < ApplicationController
  require 'net/http'
  before_action :get_json_businesses

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

  def get_json_businesses
    source = 'https://young-temple-44207.herokuapp.com/businesses?token=617604678'
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    result = JSON.parse(data)
  end

  def business_params
    params.require(:business).permit(:name, :status)
  end

end
