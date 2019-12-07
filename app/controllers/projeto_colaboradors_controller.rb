class ProjetoColaboradorsController < ApplicationController
  layout 'default'
  before_action :set_projeto_colaborador, only: [:show, :edit, :update, :destroy]

  # GET /projeto_colaboradors
  # GET /projeto_colaboradors.json
  def index
    @projeto_colaboradors = ProjetoColaborador.all
  end

  # GET /projeto_colaboradors/1
  # GET /projeto_colaboradors/1.json
  def show
  end

  # GET /projeto_colaboradors/new
  def new
    @projeto_colaborador = ProjetoColaborador.new
  end

  # GET /projeto_colaboradors/1/edit
  def edit
  end

  # POST /projeto_colaboradors
  # POST /projeto_colaboradors.json
  def create
    @projeto_colaborador = ProjetoColaborador.new(projeto_colaborador_params)

    respond_to do |format|
      if @projeto_colaborador.save
        format.html { redirect_to @projeto_colaborador, notice: 'Projeto colaborador was successfully created.' }
        format.json { render :show, status: :created, location: @projeto_colaborador }
      else
        format.html { render :new }
        format.json { render json: @projeto_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeto_colaboradors/1
  # PATCH/PUT /projeto_colaboradors/1.json
  def update
    respond_to do |format|
      if @projeto_colaborador.update(projeto_colaborador_params)
        format.html { redirect_to @projeto_colaborador, notice: 'Projeto colaborador was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeto_colaborador }
      else
        format.html { render :edit }
        format.json { render json: @projeto_colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeto_colaboradors/1
  # DELETE /projeto_colaboradors/1.json
  def destroy
    @projeto_colaborador.destroy
    respond_to do |format|
      format.html { redirect_to projeto_colaboradors_url, notice: 'Projeto colaborador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_colaborador
      @projeto_colaborador = ProjetoColaborador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_colaborador_params
      params.require(:projeto_colaborador).permit(:projeto_id, :colaborador_id)
    end
end
