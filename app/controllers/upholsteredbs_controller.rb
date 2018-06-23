class UpholsteredbsController < ApplicationController
  before_action :set_upholsteredb, only: [:show, :edit, :update, :destroy]

  # GET /upholsteredbs
  # GET /upholsteredbs.json
  def index
    @upholsteredbs = Upholsteredb.all
  end

  # GET /upholsteredbs/1
  # GET /upholsteredbs/1.json
  def show
  end

  # GET /upholsteredbs/new
  def new
    @upholsteredb = Upholsteredb.new
  end

  # GET /upholsteredbs/1/edit
  def edit
  end

  # POST /upholsteredbs
  # POST /upholsteredbs.json
  def create
    @upholsteredb = Upholsteredb.new(upholsteredb_params)

    respond_to do |format|
      if @upholsteredb.save
        format.html { redirect_to @upholsteredb, notice: 'Upholsteredb was successfully created.' }
        format.json { render :show, status: :created, location: @upholsteredb }
      else
        format.html { render :new }
        format.json { render json: @upholsteredb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upholsteredbs/1
  # PATCH/PUT /upholsteredbs/1.json
  def update
    respond_to do |format|
      if @upholsteredb.update(upholsteredb_params)
        format.html { redirect_to @upholsteredb, notice: 'Upholsteredb was successfully updated.' }
        format.json { render :show, status: :ok, location: @upholsteredb }
      else
        format.html { render :edit }
        format.json { render json: @upholsteredb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upholsteredbs/1
  # DELETE /upholsteredbs/1.json
  def destroy
    @upholsteredb.destroy
    respond_to do |format|
      format.html { redirect_to upholsteredbs_url, notice: 'Upholsteredb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upholsteredb
      @upholsteredb = Upholsteredb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upholsteredb_params
      params.require(:upholsteredb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
