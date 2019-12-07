class ColaboradorsController < ApplicationController
  layout 'default'
  before_action :set_colaborador, only: [:show, :edit, :update, :destroy]

  # GET /colaboradors
  # GET /colaboradors.json
  def index
    @colaboradors = Colaborador.all
  end

  # GET /colaboradors/1
  # GET /colaboradors/1.json
  def show
  end

  # GET /colaboradors/new
  def new
    @colaborador = Colaborador.new
  end

  # GET /colaboradors/1/edit
  def edit
  end

  # POST /colaboradors
  # POST /colaboradors.json
  def create
    @colaborador = Colaborador.new(colaborador_params)

    respond_to do |format|
      if @colaborador.save
        format.html { redirect_to @colaborador, notice: 'Colaborador was successfully created.' }
        format.json { render :show, status: :created, location: @colaborador }
      else
        format.html { render :new }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaboradors/1
  # PATCH/PUT /colaboradors/1.json
  def update
    respond_to do |format|
      if @colaborador.update(colaborador_params)
        format.html { redirect_to @colaborador, notice: 'Colaborador was successfully updated.' }
        format.json { render :show, status: :ok, location: @colaborador }
      else
        format.html { render :edit }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaboradors/1
  # DELETE /colaboradors/1.json
  def destroy
    @colaborador.destroy
    respond_to do |format|
      format.html { redirect_to colaboradors_url, notice: 'Colaborador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborador
      @colaborador = Colaborador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colaborador_params
      params.require(:colaborador).permit(:nome, :email, :cpf, :telefone, :dependentes, :data_nascimento, :data_admissao, :cargo, :competencia_id, :empresa_id)
    end
end
