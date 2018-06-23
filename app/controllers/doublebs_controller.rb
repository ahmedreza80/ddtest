class DoublebsController < ApplicationController
  before_action :set_doubleb, only: [:show, :edit, :update, :destroy]

  # GET /doublebs
  # GET /doublebs.json
  def index
    @doublebs = Doubleb.all
  end

  # GET /doublebs/1
  # GET /doublebs/1.json
  def show
  end

  # GET /doublebs/new
  def new
    @doubleb = Doubleb.new
  end

  # GET /doublebs/1/edit
  def edit
  end

  # POST /doublebs
  # POST /doublebs.json
  def create
    @doubleb = Doubleb.new(doubleb_params)

    respond_to do |format|
      if @doubleb.save
        format.html { redirect_to @doubleb, notice: 'Doubleb was successfully created.' }
        format.json { render :show, status: :created, location: @doubleb }
      else
        format.html { render :new }
        format.json { render json: @doubleb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doublebs/1
  # PATCH/PUT /doublebs/1.json
  def update
    respond_to do |format|
      if @doubleb.update(doubleb_params)
        format.html { redirect_to @doubleb, notice: 'Doubleb was successfully updated.' }
        format.json { render :show, status: :ok, location: @doubleb }
      else
        format.html { render :edit }
        format.json { render json: @doubleb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doublebs/1
  # DELETE /doublebs/1.json
  def destroy
    @doubleb.destroy
    respond_to do |format|
      format.html { redirect_to doublebs_url, notice: 'Doubleb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doubleb
      @doubleb = Doubleb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doubleb_params
      params.require(:doubleb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
