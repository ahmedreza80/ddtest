class FabricsofasetsController < ApplicationController
  before_action :set_fabricsofaset, only: [:show, :edit, :update, :destroy]

  # GET /fabricsofasets
  # GET /fabricsofasets.json
  def index
    @fabricsofasets = Fabricsofaset.all
  end

  # GET /fabricsofasets/1
  # GET /fabricsofasets/1.json
  def show
  end

  # GET /fabricsofasets/new
  def new
    @fabricsofaset = Fabricsofaset.new
  end

  # GET /fabricsofasets/1/edit
  def edit
  end

  # POST /fabricsofasets
  # POST /fabricsofasets.json
  def create
    @fabricsofaset = Fabricsofaset.new(fabricsofaset_params)

    respond_to do |format|
      if @fabricsofaset.save
        format.html { redirect_to @fabricsofaset, notice: 'Fabricsofaset was successfully created.' }
        format.json { render :show, status: :created, location: @fabricsofaset }
      else
        format.html { render :new }
        format.json { render json: @fabricsofaset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabricsofasets/1
  # PATCH/PUT /fabricsofasets/1.json
  def update
    respond_to do |format|
      if @fabricsofaset.update(fabricsofaset_params)
        format.html { redirect_to @fabricsofaset, notice: 'Fabricsofaset was successfully updated.' }
        format.json { render :show, status: :ok, location: @fabricsofaset }
      else
        format.html { render :edit }
        format.json { render json: @fabricsofaset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabricsofasets/1
  # DELETE /fabricsofasets/1.json
  def destroy
    @fabricsofaset.destroy
    respond_to do |format|
      format.html { redirect_to fabricsofasets_url, notice: 'Fabricsofaset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabricsofaset
      @fabricsofaset = Fabricsofaset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fabricsofaset_params
      params.require(:fabricsofaset).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
