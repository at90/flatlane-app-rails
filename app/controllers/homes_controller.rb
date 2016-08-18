class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  
  # GET /homes
  # GET /homes.json
  def index
    cookies[:id]="41"
    @homes = Home.all
  end

  # GET /homes/1
  # GET /homes/1.json
  def show
    @lead = Lead.new
    @builder=Builder.find(@home.b_id).b_name
    @avatar=Builder.find(@home.b_id).avatar
    @city=City.find(@home.c_id).c_name
  end

  # GET /homes/new
  def new
    @home = Home.new
  end


  # GET /homes/1/edit
  def edit
        @filter=[]
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy
    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params.require(:home).permit(:name, :b_id, :cat, :price, :address1, :address2, :c_id, :state, :description, :area, :project_date, :feat_1, :feat_2, :amen, :l_gmap, :l_prox1_name, :l_prox1, :l_prox2_name, :l_prox2, :l_prox3_name, :l_prox3, :l_prox4_name, :l_prox4, :image1, :image2, :image3, :image4)
    end
end
