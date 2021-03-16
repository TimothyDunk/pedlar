class PedalsController < ApplicationController
  before_action :set_pedal, only: %i[ show edit update destroy ]

  # GET /pedals or /pedals.json
  def index
    @pedals = Pedal.all
  end

  # GET /pedals/1 or /pedals/1.json
  def show
  end

  # GET /pedals/new
  def new
    @pedal = Pedal.new
  end

  # GET /pedals/1/edit
  def edit
  end

  # POST /pedals or /pedals.json
  def create
    @pedal = Pedal.new(pedal_params.merge(user_id: current_user.id))
    respond_to do |format|
      if @pedal.save
        format.html { redirect_to @pedal, notice: "Pedal was successfully created." }
        format.json { render :show, status: :created, location: @pedal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedals/1 or /pedals/1.json
  def update
    respond_to do |format|
      if @pedal.update(pedal_params)
        format.html { redirect_to @pedal, notice: "Pedal was successfully updated." }
        format.json { render :show, status: :ok, location: @pedal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedals/1 or /pedals/1.json
  def destroy
    @pedal.destroy
    respond_to do |format|
      format.html { redirect_to pedals_url, notice: "Pedal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedal
      @pedal = Pedal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedal_params
      params.require(:pedal).permit(:title, :price, :description)
    end
end
