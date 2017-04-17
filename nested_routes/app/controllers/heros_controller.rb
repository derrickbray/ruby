class HerosController < ApplicationController
  before_action :set_heros
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  # GET universes/1/heros
  def index
    @heros = @universe.heros
  end

  # GET universes/1/heros/1
  def show
  end

  # GET universes/1/heros/new
  def new
    @hero = @universe.heros.build
  end

  # GET universes/1/heros/1/edit
  def edit
  end

  # POST universes/1/heros
  def create
    @hero = @universe.heros.build(hero_params)

    if @hero.save
      redirect_to([@hero.universe, @hero], notice: 'Hero was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT universes/1/heros/1
  def update
    if @hero.update_attributes(hero_params)
      redirect_to([@hero.universe, @hero], notice: 'Hero was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE universes/1/heros/1
  def destroy
    @hero.destroy

    redirect_to universe_heros_url(@universe)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heros
      @universe = Universe.find(params[:universe_id])
    end

    def set_hero
      @hero = @universe.heros.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hero_params
      params.require(:hero).permit(:name, :parent, :child, :attribute, :description, :is_approved, :is_cannon, :up_vote, :universe_id)
    end
end
