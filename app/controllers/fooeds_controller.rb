class FooedsController < ApplicationController
  before_action :set_fooed, only: [:show, :edit, :update, :destroy]

  # GET /fooeds
  # GET /fooeds.json
  def index
    @fooeds = Fooed.all
  end

  # GET /fooeds/1
  # GET /fooeds/1.json
  def show
  end

  # GET /fooeds/new
  def new
    @fooed = Fooed.new
  end

  # GET /fooeds/1/edit
  def edit
  end

  # POST /fooeds
  # POST /fooeds.json
  def create
    @fooed = Fooed.new(fooed_params)

    respond_to do |format|
      if @fooed.save
        format.html { redirect_to @fooed, notice: 'Fooed was successfully created.' }
        format.json { render :show, status: :created, location: @fooed }
      else
        format.html { render :new }
        format.json { render json: @fooed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fooeds/1
  # PATCH/PUT /fooeds/1.json
  def update
    respond_to do |format|
      if @fooed.update(fooed_params)
        format.html { redirect_to @fooed, notice: 'Fooed was successfully updated.' }
        format.json { render :show, status: :ok, location: @fooed }
      else
        format.html { render :edit }
        format.json { render json: @fooed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fooeds/1
  # DELETE /fooeds/1.json
  def destroy
    @fooed.destroy
    respond_to do |format|
      format.html { redirect_to fooeds_url, notice: 'Fooed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fooed
      @fooed = Fooed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fooed_params
      params.require(:fooed).permit(:name, :content, :category_id, :price, :course_id, :image)
    end
end
