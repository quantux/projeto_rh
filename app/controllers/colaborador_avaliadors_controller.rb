class ColaboradorAvaliadorsController < ApplicationController
  layout 'default'
  before_action :set_colaborador_avaliador, only: [:show, :edit, :update, :destroy]

  # GET /colaborador_avaliadors
  # GET /colaborador_avaliadors.json
  def index
    @colaborador_avaliadors = ColaboradorAvaliador.all
  end

  # GET /colaborador_avaliadors/1
  # GET /colaborador_avaliadors/1.json
  def show
  end

  # GET /colaborador_avaliadors/new
  def new
    @colaborador_avaliador = ColaboradorAvaliador.new
  end

  # GET /colaborador_avaliadors/1/edit
  def edit
  end

  # POST /colaborador_avaliadors
  # POST /colaborador_avaliadors.json
  def create
    @colaborador_avaliador = ColaboradorAvaliador.new(colaborador_avaliador_params)

    respond_to do |format|
      if @colaborador_avaliador.save
        format.html { redirect_to @colaborador_avaliador, notice: 'Colaborador avaliador was successfully created.' }
        format.json { render :show, status: :created, location: @colaborador_avaliador }
      else
        format.html { render :new }
        format.json { render json: @colaborador_avaliador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaborador_avaliadors/1
  # PATCH/PUT /colaborador_avaliadors/1.json
  def update
    respond_to do |format|
      if @colaborador_avaliador.update(colaborador_avaliador_params)
        format.html { redirect_to @colaborador_avaliador, notice: 'Colaborador avaliador was successfully updated.' }
        format.json { render :show, status: :ok, location: @colaborador_avaliador }
      else
        format.html { render :edit }
        format.json { render json: @colaborador_avaliador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaborador_avaliadors/1
  # DELETE /colaborador_avaliadors/1.json
  def destroy
    @colaborador_avaliador.destroy
    respond_to do |format|
      format.html { redirect_to colaborador_avaliadors_url, notice: 'Colaborador avaliador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborador_avaliador
      @colaborador_avaliador = ColaboradorAvaliador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colaborador_avaliador_params
      params.require(:colaborador_avaliador).permit(:nota_competencia_1, :nota_competencia_2, :nota_competencia_3, :avaliador_id, :colaborador_id)
    end
end
