class LservicesController < ApplicationController
  # GET /lservices
  # GET /lservices.json
  def index
    @lservices = Lservice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lservices }
    end
  end

  # GET /lservices/1
  # GET /lservices/1.json
  def show
       @lservice = Lservice.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lservice }
    end
  end

  # GET /lservices/new
  # GET /lservices/new.json
  def new
    @lservice = Lservice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lservice }
    end
  end

  # GET /lservices/1/edit
  def edit
    @lservice = Lservice.find(params[:id])
  end

  # POST /lservices
  # POST /lservices.json
  def create
    @lservice = Lservice.new(params[:lservice])

    respond_to do |format|
      if @lservice.save
        format.html { redirect_to @lservice, notice: 'Lservice was successfully created.' }
        format.json { render json: @lservice, status: :created, location: @lservice }
      else
        format.html { render action: "new" }
        format.json { render json: @lservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lservices/1
  # PUT /lservices/1.json
  def update
    @lservice = Lservice.find(params[:id])

    respond_to do |format|
      if @lservice.update_attributes(params[:lservice])
        format.html { redirect_to @lservice, notice: 'Lservice was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lservice.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /lservices/1
  # DELETE /lservices/1.json
  def destroy
    @lservice = Lservice.find(params[:id])
    @lservice.destroy

    respond_to do |format|
      format.html { redirect_to lservices_url }
      format.json { head :no_content }
    end
  end
end
