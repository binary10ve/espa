class Admin::RateCardsController < Admin::AdminBaseController
  before_action :set_rate_card, only: [:show, :edit, :update, :destroy]

  # GET /rate_cards
  # GET /rate_cards.json
  def index
    @rate_cards = RateCard.all
  end

  # GET /rate_cards/1
  # GET /rate_cards/1.json
  def show
  end

  # GET /rate_cards/new
  def new
    @rate_card = RateCard.new
  end

  # GET /rate_cards/1/edit
  def edit
  end

  # POST /rate_cards
  # POST /rate_cards.json
  def create
    @rate_card = RateCard.new(rate_card_params)

    respond_to do |format|
      if @rate_card.save
        format.html { redirect_to @rate_card, notice: 'Rate card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rate_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @rate_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rate_cards/1
  # PATCH/PUT /rate_cards/1.json
  def update
    respond_to do |format|
      if @rate_card.update(rate_card_params)
        format.html { redirect_to @rate_card, notice: 'Rate card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rate_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rate_cards/1
  # DELETE /rate_cards/1.json
  def destroy
    @rate_card.destroy
    respond_to do |format|
      format.html { redirect_to rate_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate_card
      @rate_card = RateCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rate_card_params
      params.require(:rate_card).permit(:job_id, :service_charge)
    end
end
