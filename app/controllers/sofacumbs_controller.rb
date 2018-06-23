class SofacumbsController < ApplicationController
  before_action :set_sofacumb, only: [:show, :edit, :update, :destroy]

  # GET /sofacumbs
  # GET /sofacumbs.json
  def index
    @sofacumbs = Sofacumb.all
  end

  # GET /sofacumbs/1
  # GET /sofacumbs/1.json
  def show
  end

  # GET /sofacumbs/new
  def new
    @sofacumb = Sofacumb.new
  end

  # GET /sofacumbs/1/edit
  def edit
  end

  # POST /sofacumbs
  # POST /sofacumbs.json
  def create
    @sofacumb = Sofacumb.new(sofacumb_params)

    respond_to do |format|
      if @sofacumb.save
        format.html { redirect_to @sofacumb, notice: 'Sofacumb was successfully created.' }
        format.json { render :show, status: :created, location: @sofacumb }
      else
        format.html { render :new }
        format.json { render json: @sofacumb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sofacumbs/1
  # PATCH/PUT /sofacumbs/1.json
  def update
    respond_to do |format|
      if @sofacumb.update(sofacumb_params)
        format.html { redirect_to @sofacumb, notice: 'Sofacumb was successfully updated.' }
        format.json { render :show, status: :ok, location: @sofacumb }
      else
        format.html { render :edit }
        format.json { render json: @sofacumb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sofacumbs/1
  # DELETE /sofacumbs/1.json
  def destroy
    @sofacumb.destroy
    respond_to do |format|
      format.html { redirect_to sofacumbs_url, notice: 'Sofacumb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sofacumb
      @sofacumb = Sofacumb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sofacumb_params
      params.require(:sofacumb).permit(:title, :description, :price, :image, :previewo, :previewt, :previewth, :sdescription, :offerprice, :coupon, :brand, :color, :warrenty, :material)
    end
end
