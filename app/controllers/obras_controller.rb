class ObrasController < ApplicationController
  before_action :set_obra, only: %i[ show edit update destroy ]

  # GET /obras or /obras.json
  def index
    @obras = Obra.all
  end

  # GET /obras/1 or /obras/1.json
  def show
  end

  # GET /obras/new
  def new
    @obra = Obra.new
  end

  # GET /obras/1/edit
  def edit
  end

  # POST /obras or /obras.json
  def create
    @obra = Obra.new(obra_params)

    respond_to do |format|
      if @obra.save
        format.html { redirect_to obra_url(@obra), notice: "Obra was successfully created." }
        format.json { render :show, status: :created, location: @obra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obras/1 or /obras/1.json
  def update
    respond_to do |format|
      if @obra.update(obra_params)
        format.html { redirect_to obra_url(@obra), notice: "Obra was successfully updated." }
        format.json { render :show, status: :ok, location: @obra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1 or /obras/1.json
  def destroy
    @obra.destroy

    respond_to do |format|
      format.html { redirect_to obras_url, notice: "Obra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obra
      @obra = Obra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obra_params
      params.require(:obra).permit(:nombre, :fecha_inicio, :fecha_fin, :costo, :calle, :numero, :ciudad, :estado, :codigo_postal)
    end
end
