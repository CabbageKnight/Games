class CabbagesController < ApplicationController
  before_action :set_cabbage, only: [:show, :edit, :update, :destroy]

  # GET /cabbages
  # GET /cabbages.json
  def index
    @cabbages = Cabbage.all
  end

  # GET /cabbages/1
  # GET /cabbages/1.json
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
  # POST /cabbages.json
  def create
    @cabbage = Cabbage.new(cabbage_params)

    respond_to do |format|
      if @cabbage.save
        format.html { redirect_to @cabbage, notice: 'Cabbage was successfully created.' }
        format.json { render :show, status: :created, location: @cabbage }
      else
        format.html { render :new }
        format.json { render json: @cabbage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabbages/1
  # PATCH/PUT /cabbages/1.json
  def update
    respond_to do |format|
      if @cabbage.update(cabbage_params)
        format.html { redirect_to @cabbage, notice: 'Right, it`s time to let past go!' }
        format.json { render :show, status: :ok, location: @cabbage }
      else
        format.html { render :edit }
        format.json { render json: @cabbage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabbages/1
  # DELETE /cabbages/1.json
  def destroy
    @cabbage.destroy
    respond_to do |format|
      format.html { redirect_to cabbages_url, notice: 'Cabbage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabbage
      @cabbage = Cabbage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabbage_params
      params.require(:cabbage).permit(:name, :content)
    end
end
