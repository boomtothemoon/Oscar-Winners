class OscareMaleWinnersController < ApplicationController
  before_action :set_oscare_male_winner, only: [:show, :edit, :update, :destroy]

  # GET /oscare_male_winners
  # GET /oscare_male_winners.json
  def index
    @oscare_male_winners = OscareMaleWinner.all
  end

  # GET /oscare_male_winners/1
  # GET /oscare_male_winners/1.json
  def show
  end

  # GET /oscare_male_winners/new
  def new
    @oscare_male_winner = OscareMaleWinner.new
  end

  # GET /oscare_male_winners/1/edit
  def edit
  end

  # POST /oscare_male_winners
  # POST /oscare_male_winners.json
  def create
    @oscare_male_winner = OscareMaleWinner.new(oscare_male_winner_params)

    respond_to do |format|
      if @oscare_male_winner.save
        format.html { redirect_to @oscare_male_winner, notice: 'Oscare male winner was successfully created.' }
        format.json { render :show, status: :created, location: @oscare_male_winner }
      else
        format.html { render :new }
        format.json { render json: @oscare_male_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oscare_male_winners/1
  # PATCH/PUT /oscare_male_winners/1.json
  def update
    respond_to do |format|
      if @oscare_male_winner.update(oscare_male_winner_params)
        format.html { redirect_to @oscare_male_winner, notice: 'Oscare male winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @oscare_male_winner }
      else
        format.html { render :edit }
        format.json { render json: @oscare_male_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oscare_male_winners/1
  # DELETE /oscare_male_winners/1.json
  def destroy
    @oscare_male_winner.destroy
    respond_to do |format|
      format.html { redirect_to oscare_male_winners_url, notice: 'Oscare male winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oscare_male_winner
      @oscare_male_winner = OscareMaleWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oscare_male_winner_params
      params.require(:oscare_male_winner).permit(:winnerId, :year, :age, :name, :movie)
    end
end
