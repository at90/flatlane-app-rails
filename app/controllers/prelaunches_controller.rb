class FlatLaneLead < ActiveRecord::Base
    self.table_name = 'salesforce.flatlanelead'
end

class PrelaunchesController < ApplicationController
  before_action :set_prelaunch, only: [:show, :edit, :update, :destroy]

  # GET /prelaunches React, ES2015, CoffeeScript, Backbone.js, CoffeeScript, backbone.js, underscore.js

  # GET /prelaunches.json
  def index
    @prelaunches = Prelaunch.all
  end

  # GET /prelaunches/1
  # GET /prelaunches/1.json
  def show
  end

  # GET /prelaunches/new
  def new
    @prelaunch = Prelaunch.new
    @list = FlatLaneLead.all
  end

  # GET /prelaunches/1/edit
  def edit
  end

  # POST /prelaunches
  # POST /prelaunches.json
  def create
    @prelaunch = Prelaunch.new(prelaunch_params)

    respond_to do |format|
      if @prelaunch.save
        format.html { redirect_to URI(request.referer || '').path, notice: "Cheers! We'll contact you shortly." }
        format.json { render :show, status: :created, location: @prelaunch }
      else
        format.html { render :new }
        format.json { render json: @prelaunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prelaunches/1
  # PATCH/PUT /prelaunches/1.json
  def update
    respond_to do |format|
      if @prelaunch.update(prelaunch_params)
        format.html { redirect_to @prelaunch, notice: 'Prelaunch was successfully updated.' }
        format.json { render :show, status: :ok, location: @prelaunch }
      else
        format.html { render :edit }
        format.json { render json: @prelaunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prelaunches/1
  # DELETE /prelaunches/1.json
  def destroy
    @prelaunch.destroy
    respond_to do |format|
      format.html { redirect_to prelaunches_url, notice: 'Prelaunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prelaunch
      @prelaunch = Prelaunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prelaunch_params
      params.require(:prelaunch).permit(:b_name, :phone, :city)
    end
end
