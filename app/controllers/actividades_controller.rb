class ActividadesController < ApplicationController
  before_action :set_actividade, only: [:show, :edit, :update, :destroy]

  # GET /actividades
  # GET /actividades.json
  def index
    @actividades = Actividade.all
  end

  # GET /actividades/1
  # GET /actividades/1.json
  def show
  end

  # GET /actividades/new
  def new
    @actividade = Actividade.new
  end

  # GET /actividades/1/edit
  def edit
  end

  # POST /actividades
  # POST /actividades.json
  def create
    @actividade = Actividade.new(actividade_params)

    respond_to do |format|
      if @actividade.save
        format.html { redirect_to @actividade, notice: 'Actividade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @actividade }
      else
        format.html { render action: 'new' }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actividades/1
  # PATCH/PUT /actividades/1.json
  def update
    respond_to do |format|
      if @actividade.update(actividade_params)
        format.html { redirect_to @actividade, notice: 'Actividade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actividades/1
  # DELETE /actividades/1.json
  def destroy
    @actividade.destroy
    respond_to do |format|
      format.html { redirect_to actividades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actividade
      @actividade = Actividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actividade_params
      params.require(:actividade).permit(:nombre, :description, :fecha)
    end
end
