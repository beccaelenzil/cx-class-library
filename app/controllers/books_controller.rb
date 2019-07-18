
#BOOKS = [
#  { title: "Hidden Figures", author: "Margot Lee Shetterly"},
#  { title: "Practical Object-Oriented Design in Ruby", author: "Sandi Metz"},
#  { title: "Kindred", author: "Octavia E. Butler"}
#]


class BooksController < ApplicationController
    def index
       @books = Book.all
    end

    def show
        book_id = params[:id].to_i
        @book = Book.find(book_id)
        if @book.nil?
            head :not_found
        end
    end

end
