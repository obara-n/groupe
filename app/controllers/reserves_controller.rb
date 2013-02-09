class ReservesController < ApplicationController
  # GET /reserves
  # GET /reserves.json
  def index
    @reserves = Reserf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reserves }
    end
  end

  # GET /reserves/1
  # GET /reserves/1.json
  def show
    @reserf = Reserf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserf }
    end
  end

  # GET /reserves/new
  # GET /reserves/new.json
  def new
    @reserf = Reserf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserf }
    end
  end

  # GET /reserves/1/edit
  def edit
    @reserf = Reserf.find(params[:id])
  end

  # POST /reserves
  # POST /reserves.json
  def create
    @reserf = Reserf.new(params[:reserf])

    respond_to do |format|
      if @reserf.save
        format.html { redirect_to @reserf, notice: 'Reserf was successfully created.' }
        format.json { render json: @reserf, status: :created, location: @reserf }
      else
        format.html { render action: "new" }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserves/1
  # PUT /reserves/1.json
  def update
    @reserf = Reserf.find(params[:id])

    respond_to do |format|
      if @reserf.update_attributes(params[:reserf])
        format.html { redirect_to @reserf, notice: 'Reserf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserves/1
  # DELETE /reserves/1.json
  def destroy
    @reserf = Reserf.find(params[:id])
    @reserf.destroy

    respond_to do |format|
      format.html { redirect_to reserves_url }
      format.json { head :no_content }
    end
  end
end
