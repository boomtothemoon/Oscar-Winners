class OscareFemaleWinnersController < ApplicationController
  before_action :set_oscare_female_winner, only: [:show, :edit, :update, :destroy]

  # GET /oscare_female_winners
  # GET /oscare_female_winners.json
  def index
    @oscare_female_winners = OscareFemaleWinner.all
  end

  # GET /oscare_female_winners/1
  # GET /oscare_female_winners/1.json
  def show
  end

  # GET /oscare_female_winners/new
  def new
    @oscare_female_winner = OscareFemaleWinner.new
  end

  # GET /oscare_female_winners/1/edit
  def edit
  end

  # POST /oscare_female_winners
  # POST /oscare_female_winners.json
  def create
    @oscare_female_winner = OscareFemaleWinner.new(oscare_female_winner_params)

    respond_to do |format|
      if @oscare_female_winner.save
        format.html { redirect_to @oscare_female_winner, notice: 'Oscare female winner was successfully created.' }
        format.json { render :show, status: :created, location: @oscare_female_winner }
      else
        format.html { render :new }
        format.json { render json: @oscare_female_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oscare_female_winners/1
  # PATCH/PUT /oscare_female_winners/1.json
  def update
    respond_to do |format|
      if @oscare_female_winner.update(oscare_female_winner_params)
        format.html { redirect_to @oscare_female_winner, notice: 'Oscare female winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @oscare_female_winner }
      else
        format.html { render :edit }
        format.json { render json: @oscare_female_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oscare_female_winners/1
  # DELETE /oscare_female_winners/1.json
  def destroy
    @oscare_female_winner.destroy
    respond_to do |format|
      format.html { redirect_to oscare_female_winners_url, notice: 'Oscare female winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oscare_female_winner
      @oscare_female_winner = OscareFemaleWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oscare_female_winner_params
      params.require(:oscare_female_winner).permit(:winnerId, :year, :age, :name, :movie)
    end
end
