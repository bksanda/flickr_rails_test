class SiteController < ApplicationController

  def index
    # render plain: "good bye cruel world"
  end

  def results

    @search = params[:search]
    list = flickr.photos.search :text => @search, :sort => "relevance"

    @results = list.map do |photo|
      FlickRaw.url_s(photo)
    end

  end

end
