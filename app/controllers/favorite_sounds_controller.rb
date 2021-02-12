class FavoriteSoundsController < ApplicationController
  def index
    @sound = Sound.all
  end

  def create
  end

  def update
  end
end
