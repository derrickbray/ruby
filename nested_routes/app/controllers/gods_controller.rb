class GodsController < ApplicationController
  before_action :set_gods
  before_action :set_god, only: [:show, :edit, :update, :destroy]

  # GET universes/1/gods
  def index
    @gods = @universe.gods
  end

  # GET universes/1/gods/1
  def show
  end

  # GET universes/1/gods/new
  def new
    @god = @universe.gods.build
  end

  # GET universes/1/gods/1/edit
  def edit
  end

  # POST universes/1/gods
  def create
    @god = @universe.gods.build(god_params)

    if @god.save
      redirect_to([@god.universe, @god], notice: 'God was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT universes/1/gods/1
  def update
    if @god.update_attributes(god_params)
      redirect_to([@god.universe, @god], notice: 'God was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE universes/1/gods/1
  def destroy
    @god.destroy

    redirect_to universe_gods_url(@universe)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gods
      @universe = Universe.find(params[:universe_id])
    end

    def set_god
      @god = @universe.gods.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def god_params
      params.require(:god).permit(:name, :parent, :child, :attribute, :description, :is_approved, :is_cannon, :up_vote, :universe_id)
    end
end
