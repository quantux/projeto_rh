class CompetenciaController < ApplicationController
  layout 'default'
  before_action :set_competencium, only: [:show, :edit, :update, :destroy]

  # GET /competencia
  # GET /competencia.json
  def index
    @competencia = Competencium.all
  end

  # GET /competencia/1
  # GET /competencia/1.json
  def show
  end

  # GET /competencia/new
  def new
    @competencium = Competencium.new
  end

  # GET /competencia/1/edit
  def edit
  end

  # POST /competencia
  # POST /competencia.json
  def create
    @competencium = Competencium.new(competencium_params)

    respond_to do |format|
      if @competencium.save
        format.html { redirect_to @competencium, notice: 'Competencium was successfully created.' }
        format.json { render :show, status: :created, location: @competencium }
      else
        format.html { render :new }
        format.json { render json: @competencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competencia/1
  # PATCH/PUT /competencia/1.json
  def update
    respond_to do |format|
      if @competencium.update(competencium_params)
        format.html { redirect_to @competencium, notice: 'Competencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @competencium }
      else
        format.html { render :edit }
        format.json { render json: @competencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competencia/1
  # DELETE /competencia/1.json
  def destroy
    @competencium.destroy
    respond_to do |format|
      format.html { redirect_to competencia_url, notice: 'Competencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competencium
      @competencium = Competencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competencium_params
      params.require(:competencium).permit(:nome, :descricao)
    end
end
