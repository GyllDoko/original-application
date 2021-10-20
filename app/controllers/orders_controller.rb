class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end
  def get_orders
    @user = User.find(params[:user_id])
    render json: @user.orders.all
  end
  
  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @user = User.find(params[:user_id])
    @order = Order.create!(user_id: @user.id, status: true, total_price: params[:total_price], transaction_id: params[:transaction_id])
    if params[:product]
        OrderProduct.create!(order_id: @order.id, product_id: params[:product], quantity: params[:quantity])
        render json: @order, status: :created
    elsif params[:cart]
      params[:cart][:cartItems].each do |product|         
          OrderProduct.create!(order_id: @order.id, product_id: product[:id], quantity: product[:quantity])
        end
        render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity 
    end 
    
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :status, :total_price)
    end
end
