class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @order = Order.new(params[:order])
    @order.item_id = params[:item_id]



    respond_to do |format|
      if @order.save
        format.html { redirect_to(items_path, :notice => 'order was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

end

