class SlidesController < ApplicationController
  def index
    @slides = Slide.all
  end

  def show
    @slide = Slide.find params[:id]
  end
end
