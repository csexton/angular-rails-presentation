class SlidesController < ApplicationController
  def index
    @slides = Slide.all
  end
end
