class DynImagesController < ApplicationController
  before_action :set_dyn_image, only: [:show, :edit, :update, :destroy]

  # GET /dyn_images
  # GET /dyn_images.json
  def index
    if params[:pagename]
      @dynamic_pages = DynamicPage.where name: params[:pagename]
      @dyn_images = DynImage.where pagename: params[:pagename];
    else
      @dynamic_pages = DynamicPage.all;
      @dyn_images = DynImage.all
    end
  end

  # GET /dyn_images/1
  # GET /dyn_images/1.json
  def show
  end

  # GET /dyn_images/new
  def new
    @dyn_image = DynImage.new
  end

  # GET /dyn_images/1/edit
  def edit
  end

  # POST /dyn_images
  # POST /dyn_images.json
  def create
    @dyn_image = DynImage.new(dyn_image_params)

    respond_to do |format|
      if @dyn_image.save
        format.html { redirect_to @dyn_image, notice: 'Dyn image was successfully created.' }
        format.json { render :show, status: :created, location: @dyn_image }
      else
        format.html { render :new }
        format.json { render json: @dyn_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dyn_images/1
  # PATCH/PUT /dyn_images/1.json
  def update
    respond_to do |format|
      if @dyn_image.update(dyn_image_params)
        format.html { redirect_to @dyn_image, notice: 'Dyn image was successfully updated.' }
        format.json { render :show, status: :ok, location: @dyn_image }
      else
        format.html { render :edit }
        format.json { render json: @dyn_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dyn_images/1
  # DELETE /dyn_images/1.json
  def destroy
    @dyn_image.destroy
    respond_to do |format|
      format.html { redirect_to dyn_images_url, notice: 'Dyn image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dyn_image
      @dyn_image = DynImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dyn_image_params
      params.require(:dyn_image).permit(:name, :alttext, :caption, :pagename, :image)
    end
end
