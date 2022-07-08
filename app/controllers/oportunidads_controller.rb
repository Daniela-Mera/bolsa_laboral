class OportunidadsController < ApplicationController
  before_action :set_oportunidad, only: %i[ show edit update destroy ]

  # GET /oportunidads or /oportunidads.json
  def index
    @oportunidads = Oportunidad.all
  end

  # GET /oportunidads/1 or /oportunidads/1.json
  def show
  end

  # GET /oportunidads/new
  def new
    @oportunidad = Oportunidad.new
  end

  # GET /oportunidads/1/edit
  def edit
  end

  # POST /oportunidads or /oportunidads.json
  def create
    @oportunidad = Oportunidad.new(oportunidad_params)

    respond_to do |format|
      if @oportunidad.save
        format.html { redirect_to oportunidad_url(@oportunidad), notice: "Oportunidad was successfully created." }
        format.json { render :show, status: :created, location: @oportunidad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @oportunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oportunidads/1 or /oportunidads/1.json
  def update
    respond_to do |format|
      if @oportunidad.update(oportunidad_params)
        format.html { redirect_to oportunidad_url(@oportunidad), notice: "Oportunidad was successfully updated." }
        format.json { render :show, status: :ok, location: @oportunidad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @oportunidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oportunidads/1 or /oportunidads/1.json
  def destroy
    @oportunidad.destroy

    respond_to do |format|
      format.html { redirect_to oportunidads_url, notice: "Oportunidad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oportunidad
      @oportunidad = Oportunidad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def oportunidad_params
      params.fetch(:oportunidad, {})
    end
end
