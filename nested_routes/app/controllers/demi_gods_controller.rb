class DemiGodsController < ApplicationController
  before_action :set_demi_gods
  before_action :set_demi_god, only: [:show, :edit, :update, :destroy]

  # GET universes/1/demi_gods
  def index
    @demi_gods = @universe.demi_gods
  end

  # GET universes/1/demi_gods/1
  def show
  end

  # GET universes/1/demi_gods/new
  def new
    @demi_god = @universe.demi_gods.build
  end

  # GET universes/1/demi_gods/1/edit
  def edit
  end

  # POST universes/1/demi_gods
  def create
    @demi_god = @universe.demi_gods.build(demi_god_params)

    if @demi_god.save
      redirect_to([@demi_god.universe, @demi_god], notice: 'Demi god was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT universes/1/demi_gods/1
  def update
    if @demi_god.update_attributes(demi_god_params)
      redirect_to([@demi_god.universe, @demi_god], notice: 'Demi god was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE universes/1/demi_gods/1
  def destroy
    @demi_god.destroy

    redirect_to universe_demi_gods_url(@universe)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demi_gods
      @universe = Universe.find(params[:universe_id])
    end

    def set_demi_god
      @demi_god = @universe.demi_gods.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def demi_god_params
      params.require(:demi_god).permit(:name, :parent, :child, :attribute, :description, :is_approved, :is_cannon, :up_vote, :universe_id)
    end
end
