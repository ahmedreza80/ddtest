class WardrobesController < ApplicationController
  before_action :set_wardrobe, only: [:show, :edit, :update, :destroy]

  # GET /wardrobes
  # GET /wardrobes.json
  def index
    @wardrobes = Wardrobe.all
  end

  # GET /wardrobes/1
  # GET /wardrobes/1.json
  def show
  end

  # GET /wardrobes/new
  def new
    @wardrobe = Wardrobe.new
  end

  # GET /wardrobes/1/edit
  def edit
  end

  # POST /wardrobes
  # POST /wardrobes.json
  def create
    @wardrobe = Wardrobe.new(wardrobe_params)

    respond_to do |format|
      if @wardrobe.save
        format.html { redirect_to @wardrobe, notice: 'Wardrobe was successfully created.' }
        format.json { render :show, status: :created, location: @wardrobe }
      else
        format.html { render :new }
        format.json { render json: @wardrobe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wardrobes/1
  # PATCH/PUT /wardrobes/1.json
  def update
    respond_to do |format|
      if @wardrobe.update(wardrobe_params)
        format.html { redirect_to @wardrobe, notice: 'Wardrobe was successfully updated.' }
        format.json { render :show, status: :ok, location: @wardrobe }
      else
        format.html { render :edit }
        format.json { render json: @wardrobe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wardrobes/1
  # DELETE /wardrobes/1.json
  def destroy
    @wardrobe.destroy
    respond_to do |format|
      format.html { redirect_to wardrobes_url, notice: 'Wardrobe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wardrobe
      @wardrobe = Wardrobe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wardrobe_params
      params.require(:wardrobe).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
