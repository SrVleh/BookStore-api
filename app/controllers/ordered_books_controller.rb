class OrderedBooksController < ApplicationController
  before_action :set_ordered_book, only: %i[ show update destroy ]

  # GET /ordered_books
  def index
    @ordered_books = OrderedBook.all

    render json: @ordered_books
  end

  # GET /ordered_books/1
  def show
    render json: @ordered_book
  end

  # POST /ordered_books
  def create
    @ordered_book = OrderedBook.new(ordered_book_params)

    if @ordered_book.save
      render json: @ordered_book, status: :created, location: @ordered_book
    else
      render json: @ordered_book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ordered_books/1
  def update
    if @ordered_book.update(ordered_book_params)
      render json: @ordered_book
    else
      render json: @ordered_book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ordered_books/1
  def destroy
    @ordered_book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered_book
      @ordered_book = OrderedBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordered_book_params
      params.require(:ordered_book).permit(:order_id, :book_id, :quantity)
    end
end
