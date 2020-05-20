class BooksController < ApplicationController
  before_action :set_book, only: [:show,:edit,:destroy]
  before_action :authenticate_user!

  # GET /books
  # GET /books.json
  def index
    @books = current_user.books.all
    @book_ranks = current_user.books.where(readBook: true)
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = current_user.books.new
  end

  # GET /books/1/edit
  def edit
  end

  def update_read
    @book =  Book.find(params[:book_id])
    if @book.update(book_params)
      @books = current_user.books.all
      if params[:book][:readBook] == "1"
        redirect_to user_books_path, flash: {notice: "#{@book.name} by #{@book.author} was successfully read."} 
      else
        redirect_to user_books_path, flash: {notice: "#{@book.name} by #{@book.author} was successfully changed to unread."} 
      end
    else
      @books = current_user.books.all
      redirect_to user_books_path, flash: {notice: "#{@book.name} by #{@book.author} was not successfully read."} 

    end
  end

  # POST /books
  # POST /books.json
  def create
    @book = current_user.books.new(book_params)
    if @book.save
      @books = current_user.books.all
      redirect_to user_books_path, flash: {notice: "#{@book.name} was  by #{@book.author} successfully created."} 
    else
      render :new
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book = Book.find(params[:format])
    if @book.update(book_params)
      @books = current_user.books.all
      redirect_to user_books_path, flash: {notice: "#{@book.name} by #{@book.author} was successfully edited."} 
    else
      render 'edit'
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    @books = current_user.books.all
    redirect_to user_books_path,flash: {notice: "#{@book.name}  by #{@book.author} was successfully deleted."} 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:pages, :name, :review, :author, :readBook)
    end
end
