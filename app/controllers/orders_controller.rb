class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: %i[ show ordered_books update destroy ]
  before_action :set_total_price, only: %i[ index ]
  before_action :set_books_count, only: %i[ index ]

  # GET /orders
  def index
    @orders = current_user.orders
    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  def ordered_books
    @order = current_user.orders.find(params[:id])
    render json: @order.books
  end

  def ongoing_order
    @order = current_user.orders.where(:order_completed => false)
    render json: @order
  end

  # POST /orders
  def create
    @order = Order.new(user_id: current_user.id)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = current_user.orders.find(params[:id])
  end

  def set_total_price
    Order.all.each do | order |
      total_price = 0
      order.books.each do | book |
        total_price += book.price
      end
      Order.find(order.id).update(total_price: total_price)
    end
  end

  def set_books_count
    Order.all.each do | order |
      books_count = order.books.count
      Order.find(order.id).update(books_count: books_count)
    end
  end

  # Only allow a list of trusted parameters through.
  def order_params
    params.require(:order).permit(:order_completed)
  end
end
