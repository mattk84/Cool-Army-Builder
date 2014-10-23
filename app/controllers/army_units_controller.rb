class ArmyUnitsController < ApplicationController
  before_action :set_army_unit, only: [:show, :edit, :update, :destroy]

  # GET /army_units
  # GET /army_units.json
  def index
    @army_units = ArmyUnit.all
  end

  # GET /army_units/1
  # GET /army_units/1.json
  def show
  end

  # GET /army_units/new
  def new
    @army_unit = ArmyUnit.new
  end

  # GET /army_units/1/edit
  def edit
  end

  # POST /army_units
  # POST /army_units.json
  def create
    @army_unit = ArmyUnit.new(army_unit_params)

    respond_to do |format|
      if @army_unit.save
        format.html { redirect_to @army_unit, notice: 'Army unit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @army_unit }
      else
        format.html { render action: 'new' }
        format.json { render json: @army_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /army_units/1
  # PATCH/PUT /army_units/1.json
  def update
    respond_to do |format|
      if @army_unit.update(army_unit_params)
        format.html { redirect_to @army_unit, notice: 'Army unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @army_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /army_units/1
  # DELETE /army_units/1.json
  def destroy
    @army_unit.destroy
    respond_to do |format|
      format.html { redirect_to army_units_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_army_unit
      @army_unit = ArmyUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def army_unit_params
      params.require(:army_unit).permit(:unit_id, :army_id)
    end
end
