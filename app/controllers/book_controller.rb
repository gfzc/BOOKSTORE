class BookController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create, :delete]
    
    def index
        #consulta con todos los libros
        @books = Book.all #varible de clase
    end


    def new 
        @authors = Author.all
       # Authors.find()
       # Authors.find_by
    end

    def create
        book_params = params.require(:book).permit(:title, :description, :author_id)
        Book.create(book_params)
        redirect_to action: "index" 
    end

    def show
        @book = Book.find(params[:id])
    end

    def delete
        @book = Book.find(params[:id])
        unless @book.nil?
        @book.delete
        end
    redirect_to action: "index"
    end
end

    
