class MainPageController < ApplicationController
  before_action :set_cabbage, only: [:show]

  # GET /cabbages
  # GET /cabbages.json
  def index
    @cabbages = Cabbage.all
  end

  # GET /cabbages/1
  # GET /cabbages/1.json
  def show
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabbage_params
      params.require(:cabbage).permit(:name, :content)
    end
end