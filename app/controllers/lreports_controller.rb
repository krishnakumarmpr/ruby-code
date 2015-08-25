class LreportsController < ApplicationController
  # GET /lreports
  # GET /lreports.json
  def index
    @lreports = Lreport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lreports }
    end
  end

  # GET /lreports/1
  # GET /lreports/1.json
  def show
    @lreport = Lreport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lreport }
    end
  end

  # GET /lreports/new
  # GET /lreports/new.json
  def new
    @lreport = Lreport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lreport }
    end
  end

  # GET /lreports/1/edit
  def edit
    @lreport = Lreport.find(params[:id])
  end

  # POST /lreports
  # POST /lreports.json
  def create
    @lreport = Lreport.new(params[:lreport])

    respond_to do |format|
      if @lreport.save
        format.html { redirect_to @lreport, notice: 'Lreport was successfully created.' }
        format.json { render json: @lreport, status: :created, location: @lreport }
      else
        format.html { render action: "new" }
        format.json { render json: @lreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lreports/1
  # PUT /lreports/1.json
  def update
    @lreport = Lreport.find(params[:id])

    respond_to do |format|
      if @lreport.update_attributes(params[:lreport])
        format.html { redirect_to @lreport, notice: 'Lreport was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lreports/1
  # DELETE /lreports/1.json
  def destroy
    @lreport = Lreport.find(params[:id])
    @lreport.destroy

    respond_to do |format|
      format.html { redirect_to lreports_url }
      format.json { head :no_content }
    end
  end
end
