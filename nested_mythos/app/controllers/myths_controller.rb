class MythsController < ApplicationController
  before_action :set_myths
  before_action :set_myth, only: [:show, :edit, :update, :destroy]

  # GET mythos/1/myths
  def index
    @myths = @mythos.myths
  end

  # GET mythos/1/myths/1
  def show
  end

  # GET mythos/1/myths/new
  def new
    @myth = @mythos.myths.build
  end

  # GET mythos/1/myths/1/edit
  def edit
  end

  # POST mythos/1/myths
  def create
    @myth = @mythos.myths.build(myth_params)

    if @myth.save
      redirect_to([@myth.mythos, @myth], notice: 'Myth was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mythos/1/myths/1
  def update
    if @myth.update_attributes(myth_params)
      redirect_to([@myth.mythos, @myth], notice: 'Myth was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mythos/1/myths/1
  def destroy
    @myth.destroy

    redirect_to mythos_myths_url(@mythos)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myths
      @mythos = Mytho.find(params[:mythos_id])
    end

    def set_myth
      @myth = @mythos.myths.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def myth_params
      params.require(:myth).permit(:title, :author, :year_started, :description, :body, :is_approved, :is_cannon, :up_vote)
    end
end
