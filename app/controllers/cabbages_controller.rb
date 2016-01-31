class CabbagesController < ApplicationController
  before_action :set_cabbage, only: [:show, :edit, :update, :destroy, :clear_image]

  http_basic_authenticate_with name: "captain", password: "carrot"

  # GET /cabbages
  def index
    @cabbages = Cabbage.all
  end

  # GET /cabbages/1
  def show
  end

  # GET /cabbages/new
  def new
    @cabbage = Cabbage.new
  end

  # GET /cabbages/1/edit
  def edit
  end

  # POST /cabbages
  def create
    @cabbage = Cabbage.new(cabbage_params)
    if @cabbage.save
      redirect_to @cabbage, notice: 'Cabbage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cabbages/1
  def update
    if @cabbage.update(cabbage_params)
      redirect_to @cabbage, notice: 'Right, it`s time to let past go!'
    else
      render :edit
    end
  end

  # DELETE /cabbages/1
  def destroy
    @cabbage.destroy
    redirect_to cabbages_url, notice: 'Cabbage was successfully destroyed.'
  end

  def clear_image
    @cabbage.update(image: nil)
    redirect_to @cabbage, notice: 'Image was deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabbage
      @cabbage = Cabbage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabbage_params
      params.require(:cabbage).permit(:name, :content, :image)
    end
end
