class FightersController < ApplicationController
  before_action :set_fighter, only: [:show, :edit, :update, :destroy]

  # GET /fighters/new
  def new
    @fighter = Fighter.new
  end

  # POST /fighters
  # POST /fighters.json
  def create
    @fighter = Fighter.new(fighter_params)

    respond_to do |format|
      if @fighter.save
        format.html { redirect_to root_path, notice: 'Fighter was successfully created.' }
        format.json { render :show, status: :created, location: @fighter }
      else
        format.html { render :new }
        format.json { render json: @fighter.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighter
      @fighter = Fighter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fighter_params
      params.require(:fighter).permit(:name, :password, :password_confirmation)
    end
end
