class MythosController < ApplicationController
  before_action :set_mytho, only: [:show, :edit, :update, :destroy]

  # GET /mythos
  # GET /mythos.json
  def index
    @mythos = Mytho.all
  end

  # GET /mythos/1
  # GET /mythos/1.json
  def show
  end

  # GET /mythos/new
  def new
    @mytho = Mytho.new
  end

  # GET /mythos/1/edit
  def edit
  end

  # POST /mythos
  # POST /mythos.json
  def create
    @mytho = Mytho.new(mytho_params)

    respond_to do |format|
      if @mytho.save
        format.html { redirect_to @mytho, notice: 'Mytho was successfully created.' }
        format.json { render :show, status: :created, location: @mytho }
      else
        format.html { render :new }
        format.json { render json: @mytho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mythos/1
  # PATCH/PUT /mythos/1.json
  def update
    respond_to do |format|
      if @mytho.update(mytho_params)
        format.html { redirect_to @mytho, notice: 'Mytho was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytho }
      else
        format.html { render :edit }
        format.json { render json: @mytho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mythos/1
  # DELETE /mythos/1.json
  def destroy
    @mytho.destroy
    respond_to do |format|
      format.html { redirect_to mythos_url, notice: 'Mytho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytho
      @mytho = Mytho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytho_params
      params.require(:mytho).permit(:title, :discription)
    end
end
