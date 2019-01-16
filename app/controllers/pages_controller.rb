class PagesController < ApplicationController
  def home 
    # B
    @blackMirror = Tvshow.find_by(name: 'Black Mirror')
    @breakingBad = Tvshow.find_by(name: 'Breaking Bad')
    
    # G
    @gameOfThrones = Tvshow.find_by(name: 'Game of Thrones')
  end
  
  def about
  end
end