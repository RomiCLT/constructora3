class MaterialsHasObrasController < ApplicationController
  before_action :set_materials_has_obra, only: %i[ show edit update destroy ]

  # GET /materials_has_obras or /materials_has_obras.json
  def index
    @materials_has_obras = MaterialsHasObra.all
  end

  # GET /materials_has_obras/1 or /materials_has_obras/1.json
  def show
  end

  # GET /materials_has_obras/new
  def new
    @materials_has_obra = MaterialsHasObra.new
  end

  # GET /materials_has_obras/1/edit
  def edit
  end

  # POST /materials_has_obras or /materials_has_obras.json
  def create
    @materials_has_obra = MaterialsHasObra.new(materials_has_obra_params)

    respond_to do |format|
      if @materials_has_obra.save
        format.html { redirect_to materials_has_obra_url(@materials_has_obra), notice: "Materials has obra was successfully created." }
        format.json { render :show, status: :created, location: @materials_has_obra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @materials_has_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials_has_obras/1 or /materials_has_obras/1.json
  def update
    respond_to do |format|
      if @materials_has_obra.update(materials_has_obra_params)
        format.html { redirect_to materials_has_obra_url(@materials_has_obra), notice: "Materials has obra was successfully updated." }
        format.json { render :show, status: :ok, location: @materials_has_obra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @materials_has_obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials_has_obras/1 or /materials_has_obras/1.json
  def destroy
    @materials_has_obra.destroy

    respond_to do |format|
      format.html { redirect_to materials_has_obras_url, notice: "Materials has obra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materials_has_obra
      @materials_has_obra = MaterialsHasObra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def materials_has_obra_params
      params.require(:materials_has_obra).permit(:material_id, :brand_id, :cantidad)
    end
end
