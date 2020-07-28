class Portal::OffersController < ApplicationController
  before_action :set_portal_offer, only: [:show, :edit, :update, :destroy]
  layout 'portal'

  # GET /portal/offers
  # GET /portal/offers.json
  def index
    @portal_offers = Portal::Offer.all
  end

  # GET /portal/offers/1
  # GET /portal/offers/1.json
  def show
  end

  # GET /portal/offers/new
  def new
    @portal_offer = Portal::Offer.new
  end

  # GET /portal/offers/1/edit
  def edit
  end

  # POST /portal/offers
  # POST /portal/offers.json
  def create
    @portal_offer = Portal::Offer.new(portal_offer_params)

    respond_to do |format|
      if @portal_offer.save
        format.html { redirect_to @portal_offer, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @portal_offer }
      else
        format.html { render :new }
        format.json { render json: @portal_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portal/offers/1
  # PATCH/PUT /portal/offers/1.json
  def update
    respond_to do |format|
      if @portal_offer.update(portal_offer_params)
        format.html { redirect_to @portal_offer, notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @portal_offer }
      else
        format.html { render :edit }
        format.json { render json: @portal_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portal/offers/1
  # DELETE /portal/offers/1.json
  def destroy
    @portal_offer.destroy
    respond_to do |format|
      format.html { redirect_to portal_offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portal_offer
      @portal_offer = Portal::Offer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portal_offer_params
      params.require(:portal_offer).permit(:advertiser_name, :url, :description, :starts_at, :ends_at, :premium)
    end
end
