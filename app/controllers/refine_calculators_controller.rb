class RefineCalculatorsController < ApplicationController
  before_action :set_refine_calculator, only: %i[ show edit update destroy ]

  # GET /refine_calculators or /refine_calculators.json
  def index
    @refine_calculators = RefineCalculator.all
  end

  # GET /refine_calculators/1 or /refine_calculators/1.json
  def show
  end

  # GET /refine_calculators/new
  def new
    @refine_calculator = RefineCalculator.new
  end

  # GET /refine_calculators/1/edit
  def edit
  end

  # POST /refine_calculators or /refine_calculators.json
  def create
    @refine_calculator = RefineCalculator.new(refine_calculator_params)

    respond_to do |format|
      if @refine_calculator.save
        format.html { redirect_to @refine_calculator, notice: "Refine calculator was successfully created." }
        format.json { render :show, status: :created, location: @refine_calculator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @refine_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refine_calculators/1 or /refine_calculators/1.json
  def update
    respond_to do |format|
      if @refine_calculator.update(refine_calculator_params)
        @refine_calculator.url_image = (@refine_calculator.refine_fee.to_f / 100) * (100 - refine_calculator_params[:tax].to_f)
        @refine_calculator.save!
        format.html { redirect_to @refine_calculator, notice: "Refine calculator was successfully updated." }
        format.json { render :show, status: :ok, location: @refine_calculator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @refine_calculator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refine_calculators/1 or /refine_calculators/1.json
  def destroy
    @refine_calculator.destroy
    respond_to do |format|
      format.html { redirect_to refine_calculators_url, notice: "Refine calculator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refine_calculator
      @refine_calculator = RefineCalculator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def refine_calculator_params
      params.require(:refine_calculator).permit(:item, :value, :refined, :refine_fee, :transmutation_fee, :url_image, :tax)
    end
end
