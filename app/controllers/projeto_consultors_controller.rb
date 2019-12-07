class ProjetoConsultorsController < ApplicationController
  layout 'default'
  before_action :set_projeto_consultor, only: [:show, :edit, :update, :destroy]

  # GET /projeto_consultors
  # GET /projeto_consultors.json
  def index
    @projeto_consultors = ProjetoConsultor.all
  end

  # GET /projeto_consultors/1
  # GET /projeto_consultors/1.json
  def show
  end

  # GET /projeto_consultors/new
  def new
    @projeto_consultor = ProjetoConsultor.new
  end

  # GET /projeto_consultors/1/edit
  def edit
  end

  # POST /projeto_consultors
  # POST /projeto_consultors.json
  def create
    @projeto_consultor = ProjetoConsultor.new(projeto_consultor_params)

    respond_to do |format|
      if @projeto_consultor.save
        format.html { redirect_to @projeto_consultor, notice: 'Projeto consultor was successfully created.' }
        format.json { render :show, status: :created, location: @projeto_consultor }
      else
        format.html { render :new }
        format.json { render json: @projeto_consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projeto_consultors/1
  # PATCH/PUT /projeto_consultors/1.json
  def update
    respond_to do |format|
      if @projeto_consultor.update(projeto_consultor_params)
        format.html { redirect_to @projeto_consultor, notice: 'Projeto consultor was successfully updated.' }
        format.json { render :show, status: :ok, location: @projeto_consultor }
      else
        format.html { render :edit }
        format.json { render json: @projeto_consultor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projeto_consultors/1
  # DELETE /projeto_consultors/1.json
  def destroy
    @projeto_consultor.destroy
    respond_to do |format|
      format.html { redirect_to projeto_consultors_url, notice: 'Projeto consultor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto_consultor
      @projeto_consultor = ProjetoConsultor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projeto_consultor_params
      params.require(:projeto_consultor).permit(:projeto_id, :consultor_id)
    end
end
