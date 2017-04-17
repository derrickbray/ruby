class MythsController < ApplicationController
  before_action :set_myths
  before_action :set_myth, only: [:show, :edit, :update, :destroy]

  # GET universes/1/myths
  def index
    @myths = @universe.myths
  end

  # GET universes/1/myths/1
  def show
  end

  # GET universes/1/myths/new
  def new
    @myth = @universe.myths.build
  end

  # GET universes/1/myths/1/edit
  def edit
  end

  # POST universes/1/myths
  def create
    @myth = @universe.myths.build(myth_params)

    if @myth.save
      redirect_to([@myth.universe, @myth], notice: 'Myth was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT universes/1/myths/1
  def update
    if @myth.update_attributes(myth_params)
      redirect_to([@myth.universe, @myth], notice: 'Myth was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE universes/1/myths/1
  def destroy
    @myth.destroy

    redirect_to universe_myths_url(@universe)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myths
      @universe = Universe.find(params[:universe_id])
    end

    def set_myth
      @myth = @universe.myths.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def myth_params
      params.require(:myth).permit(:title, :author, :charactors, :body, :description, :is_approved, :is_cannon, :up_vote, :universe_id)
    end
end
