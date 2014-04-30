class AssetgroupsController < ApplicationController
  before_action :set_assetgroup, only: [:show, :edit, :update, :destroy]

  # GET /assetgroups
  # GET /assetgroups.json
  def index
    @assetgroups = Assetgroup.all
  end

  # GET /assetgroups/1
  # GET /assetgroups/1.json
  def show
  end

  # GET /assetgroups/new
  def new
    @assetgroup = Assetgroup.new
  end

  # GET /assetgroups/1/edit
  def edit
  end

  # POST /assetgroups
  # POST /assetgroups.json
  def create
    @assetgroup = Assetgroup.new(assetgroup_params)

    respond_to do |format|
      if @assetgroup.save
        format.html { redirect_to @assetgroup, notice: 'Assetgroup was successfully created.' }
        format.json { render :show, status: :created, location: @assetgroup }
      else
        format.html { render :new }
        format.json { render json: @assetgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assetgroups/1
  # PATCH/PUT /assetgroups/1.json
  def update
    respond_to do |format|
      if @assetgroup.update(assetgroup_params)
        format.html { redirect_to @assetgroup, notice: 'Assetgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @assetgroup }
      else
        format.html { render :edit }
        format.json { render json: @assetgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assetgroups/1
  # DELETE /assetgroups/1.json
  def destroy
    @assetgroup.destroy
    respond_to do |format|
      format.html { redirect_to assetgroups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assetgroup
      @assetgroup = Assetgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assetgroup_params
      params.require(:assetgroup).permit(:guid, :recipient_id, :custom_id)
    end
end
