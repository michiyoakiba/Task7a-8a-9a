class FavoritesController < ApplicationController
    
  def create
    @book = Book.find(params[:book_id]) #book => @bookへ変更
    favorite = current_user.favorites.new(book_id: @book.id) #book => @bookへ変更
    favorite.save
    # redirect_back(fallback_location: root_path)ここを削除！
  end

  def destroy
    @book = Book.find(params[:book_id]) #book => @bookへ変更
    favorite = current_user.favorites.find_by(book_id: @book.id) #book => @bookへ変更
    favorite.destroy
    # redirect_back(fallback_location: root_path)ここを削除！
      
  end  
end
