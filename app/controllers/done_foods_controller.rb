class DoneFoodsController < ApplicationController
  before_action :set_done_food, only: [:show, :edit, :update, :destroy]

  # GET /done_foods
  # GET /done_foods.json
  def index
    @done_foods = DoneFood.all
  end

  # GET /done_foods/1
  # GET /done_foods/1.json
  def show
  end

  # GET /done_foods/new
  def new
    @done_food = DoneFood.new
  end

  # GET /done_foods/1/edit
  def edit
  end

  # POST /done_foods
  # POST /done_foods.json
  def create
    @done_food = DoneFood.new(done_food_params)

    respond_to do |format|
      if @done_food.save
        format.html { redirect_to @done_food, notice: 'Done food was successfully created.' }
        format.json { render :show, status: :created, location: @done_food }
      else
        format.html { render :new }
        format.json { render json: @done_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /done_foods/1
  # PATCH/PUT /done_foods/1.json
  def update
    respond_to do |format|
      if @done_food.update(done_food_params)
        format.html { redirect_to @done_food, notice: 'Done food was successfully updated.' }
        format.json { render :show, status: :ok, location: @done_food }
      else
        format.html { render :edit }
        format.json { render json: @done_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /done_foods/1
  # DELETE /done_foods/1.json
  def destroy
    @done_food.destroy
    respond_to do |format|
      format.html { redirect_to done_foods_url, notice: 'Done food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_done_food
      @done_food = DoneFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def done_food_params
      params.require(:done_food).permit(:Client_id, :Food_id, :count)
    end
end
