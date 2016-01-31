class MainPageController < ApplicationController
  before_action :set_cabbage, only: [:show]

  # GET /cabbages
  def index
    @cabbages = Cabbage.all
  end

  # GET /cabbages/1
  def show
  end
  private
  def mainpage_params
      params.require(:cabbage).permit(:image)
    end
end