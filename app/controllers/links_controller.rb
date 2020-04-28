class LinksController < ApplicationController

  def create
    shortener = Shortener.new(link_params[:original_url])
    @link = shortener.generate_short_link
  end

  private

  def link_params
    params.require(:link).permit(:original_url)
  end

end
