class BookmarksController < ApplicationController
  respond_to :json

  def index
    @bookmarks = Bookmark.all
    respond_with @bookmarks
  end

  def show
    @bookmark = Bookmark.find params[:id]
    respond_with @bookmark
  end

  def create
    @bookmark = Bookmark.new bookmark_params

    if @bookmark.save
      render json: { callback: { content: 'Bookmark created', success: true } }
    else
      render json: { callback: { content: @bookmark.errors.full_messages.to_sentence, success: false } }
    end
  end

  def update
    @bookmark = Bookmark.find params[:id]

    if @bookmark.update bookmark_params
      render json: { callback: { content: 'Bookmark updated', success: true } }
    else
      render json: { callback: { content: @bookmark.errors.full_messages.to_sentence, success: false } }
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id]).destroy
    render json: { callback: { content: 'Bookmark deleted', success: true } }
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:title, :link)
  end
end
