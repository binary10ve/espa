class HowMetsController < EspaBaseController
  before_action :authenticate_user!
  before_action :set_how_met, only: [:show, :edit, :update, :destroy]

  # GET /how_mets
  # GET /how_mets.json
  def index
    @how_mets = HowMet.all
  end

  # GET /how_mets/1
  # GET /how_mets/1.json
  def show
  end

  # GET /how_mets/new
  def new
    @how_met = HowMet.new
  end

  # GET /how_mets/1/edit
  def edit
  end

  # POST /how_mets
  # POST /how_mets.json
  def create
    @how_met = HowMet.new(how_met_params)

    respond_to do |format|
      if @how_met.save
        format.html { redirect_to @how_met, notice: 'How met was successfully created.' }
        format.json { render action: 'show', status: :created, location: @how_met }
      else
        format.html { render action: 'new' }
        format.json { render json: @how_met.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /how_mets/1
  # PATCH/PUT /how_mets/1.json
  def update
    respond_to do |format|
      if @how_met.update(how_met_params)
        format.html { redirect_to @how_met, notice: 'How met was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @how_met.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_mets/1
  # DELETE /how_mets/1.json
  def destroy
    @how_met.destroy
    respond_to do |format|
      format.html { redirect_to how_mets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_how_met
      @how_met = HowMet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def how_met_params
      params.require(:how_met).permit(:name)
    end
end
