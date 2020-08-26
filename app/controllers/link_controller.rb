class LinkController < ApplicationController
  def show
    @link = Link.find_by_slug(params[:slug])
    render 'errors/404', status: 404 if @link.nil?
    redirect_to @link.url
  end

  def create
    link = Link.shorten(params[:url])
    render json: link
  end
end
