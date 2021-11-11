class BookmarksController < ApplicationController

  def new
    @list.find(params[list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list.find(params[list_id])
    @bookmark.list = @list
    if bookmark.save
      redirect_to lists_path
    else
      render :new
    end
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmarks = Book
  end
end
