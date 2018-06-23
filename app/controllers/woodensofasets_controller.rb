class WoodensofasetsController < ApplicationController
  before_action :set_woodensofaset, only: [:show, :edit, :update, :destroy]

  # GET /woodensofasets
  # GET /woodensofasets.json
  def index
    @woodensofasets = Woodensofaset.all
  end

  # GET /woodensofasets/1
  # GET /woodensofasets/1.json
  def show
  end

  # GET /woodensofasets/new
  def new
    @woodensofaset = Woodensofaset.new
  end

  # GET /woodensofasets/1/edit
  def edit
  end

  # POST /woodensofasets
  # POST /woodensofasets.json
  def create
    @woodensofaset = Woodensofaset.new(woodensofaset_params)

    respond_to do |format|
      if @woodensofaset.save
        format.html { redirect_to @woodensofaset, notice: 'Woodensofaset was successfully created.' }
        format.json { render :show, status: :created, location: @woodensofaset }
      else
        format.html { render :new }
        format.json { render json: @woodensofaset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /woodensofasets/1
  # PATCH/PUT /woodensofasets/1.json
  def update
    respond_to do |format|
      if @woodensofaset.update(woodensofaset_params)
        format.html { redirect_to @woodensofaset, notice: 'Woodensofaset was successfully updated.' }
        format.json { render :show, status: :ok, location: @woodensofaset }
      else
        format.html { render :edit }
        format.json { render json: @woodensofaset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /woodensofasets/1
  # DELETE /woodensofasets/1.json
  def destroy
    @woodensofaset.destroy
    respond_to do |format|
      format.html { redirect_to woodensofasets_url, notice: 'Woodensofaset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_woodensofaset
      @woodensofaset = Woodensofaset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def woodensofaset_params
      params.require(:woodensofaset).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
