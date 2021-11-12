class BookmarksController < ApplicationController

  def new
    @list.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmarks = Book
  end
end
