class DyContentsController < ApplicationController
  before_action :set_dy_content, only: [:show, :edit, :update, :destroy]

  # GET /dy_contents
  # GET /dy_contents.json
  def index
    if params[:pagename]
      @dynamic_pages = DynamicPage.where name: params[:pagename]
      @dy_contents = DyContent.where pagename: params[:pagename];
    else
      @dynamic_pages = DynamicPage.all;
      @dy_contents = DyContent.all
    end
    #@dy_contents = DyContent.all
  end

  # GET /dy_contents/1
  # GET /dy_contents/1.json
  def show
  end

  # GET /dy_contents/new
  def new
    @dy_content = DyContent.new
  end

  # GET /dy_contents/1/edit
  def edit
  end

  # POST /dy_contents
  # POST /dy_contents.json
  def create
    @dy_content = DyContent.new(dy_content_params)

    respond_to do |format|
      if @dy_content.save
        format.html { redirect_to @dy_content, notice: 'Dy content was successfully created.' }
        format.json { render :show, status: :created, location: @dy_content }
      else
        format.html { render :new }
        format.json { render json: @dy_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dy_contents/1
  # PATCH/PUT /dy_contents/1.json
  def update
    respond_to do |format|
      if @dy_content.update(dy_content_params)
        format.html { redirect_to @dy_content, notice: 'Dy content was successfully updated.' }
        format.json { render :show, status: :ok, location: @dy_content }
      else
        format.html { render :edit }
        format.json { render json: @dy_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dy_contents/1
  # DELETE /dy_contents/1.json
  def destroy
    @dy_content.destroy
    respond_to do |format|
      format.html { redirect_to dy_contents_url, notice: 'Dy content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dy_content
      @dy_content = DyContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dy_content_params
      params.require(:dy_content).permit(:description, :content, :pagename)
    end
end
