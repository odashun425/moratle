class TopController < ApplicationController
  def index
    @reviews = Review.all
  end
end
