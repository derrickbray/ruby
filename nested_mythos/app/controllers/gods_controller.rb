class GodsController < ApplicationController
  before_action :set_gods
  before_action :set_god, only: [:show, :edit, :update, :destroy]

  # GET mythos/1/gods
  def index
    @gods = @mythos.gods
  end

  # GET mythos/1/gods/1
  def show
  end

  # GET mythos/1/gods/new
  def new
    @god = @mythos.gods.build
  end

  # GET mythos/1/gods/1/edit
  def edit
  end

  # POST mythos/1/gods
  def create
    @god = @mythos.gods.build(god_params)

    if @god.save
      redirect_to([@god.mythos, @god], notice: 'God was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mythos/1/gods/1
  def update
    if @god.update_attributes(god_params)
      redirect_to([@god.mythos, @god], notice: 'God was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mythos/1/gods/1
  def destroy
    @god.destroy

    redirect_to mythos_gods_url(@mythos)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gods
      @mythos = Mytho.find(params[:mythos_id])
    end

    def set_god
      @god = @mythos.gods.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def god_params
      params.require(:god).permit(:title, :parent, :children, :attributes, :description, :is_approved, :is_cannon, :up_vote)
    end
end
