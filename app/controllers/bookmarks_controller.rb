class BookmarksController < ApplicationController
  respond_to :json

  def index
    @bookmarks = Bookmark.all
    respond_with(@bookmarks)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    respond_with(@bookmark)
  end
end
