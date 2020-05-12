class ReadCyclesController < ApplicationController
  before_action :set_read_cycle, only: [:show, :edit, :update, :destroy]

  # GET /read_cycles
  # GET /read_cycles.json
  def index
    @read_cycles = ReadCycle.all
  end

  # GET /read_cycles/1
  # GET /read_cycles/1.json
  def show
  end

  # GET /read_cycles/new
  def new
    @read_cycle = ReadCycle.new
  end

  # GET /read_cycles/1/edit
  def edit
  end

  # POST /read_cycles
  # POST /read_cycles.json
  def create
    @read_cycle = ReadCycle.new(read_cycle_params)

    respond_to do |format|
      if @read_cycle.save
        format.html { redirect_to @read_cycle, notice: 'Read cycle was successfully created.' }
        format.json { render :show, status: :created, location: @read_cycle }
      else
        format.html { render :new }
        format.json { render json: @read_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_cycles/1
  # PATCH/PUT /read_cycles/1.json
  def update
    respond_to do |format|
      if @read_cycle.update(read_cycle_params)
        format.html { redirect_to @read_cycle, notice: 'Read cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @read_cycle }
      else
        format.html { render :edit }
        format.json { render json: @read_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_cycles/1
  # DELETE /read_cycles/1.json
  def destroy
    @read_cycle.destroy
    respond_to do |format|
      format.html { redirect_to read_cycles_url, notice: 'Read cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_cycle
      @read_cycle = ReadCycle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def read_cycle_params
      params.require(:read_cycle).permit(:pagesGoal)
    end
end
