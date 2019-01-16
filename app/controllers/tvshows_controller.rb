class TvshowsController < ApplicationController
  
  
  # GET request to /tvshows/:id
  def show
    @gameOfThrones = Tvshow.find_by(name: 'Game of Thrones')
  end
end