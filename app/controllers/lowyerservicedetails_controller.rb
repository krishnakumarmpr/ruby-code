class LowyerservicedetailsController < ApplicationController
  # GET /lowyerservicedetails
  # GET /lowyerservicedetails.json
  def index
    @lowyerservicedetails = Lowyerservicedetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lowyerservicedetails }
    end
  end

  # GET /lowyerservicedetails/1
  # GET /lowyerservicedetails/1.json
  def show
    @lowyerservicedetail = Lowyerservicedetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lowyerservicedetail }
    end
  end

  # GET /lowyerservicedetails/new
  # GET /lowyerservicedetails/new.json
  def new
    @lowyerservicedetail = Lowyerservicedetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lowyerservicedetail }
    end
  end

  # GET /lowyerservicedetails/1/edit
  def edit
    @lowyerservicedetail = Lowyerservicedetail.find(params[:id])
  end

  # POST /lowyerservicedetails
  # POST /lowyerservicedetails.json
  def create
    @lowyerservicedetail = Lowyerservicedetail.new(params[:lowyerservicedetail])

    respond_to do |format|
      if @lowyerservicedetail.save
        format.html { redirect_to @lowyerservicedetail, notice: 'Lowyerservicedetail was successfully created.' }
        format.json { render json: @lowyerservicedetail, status: :created, location: @lowyerservicedetail }
      else
        format.html { render action: "new" }
        format.json { render json: @lowyerservicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lowyerservicedetails/1
  # PUT /lowyerservicedetails/1.json
  def update
    @lowyerservicedetail = Lowyerservicedetail.find(params[:id])

    respond_to do |format|
      if @lowyerservicedetail.update_attributes(params[:lowyerservicedetail])
        format.html { redirect_to @lowyerservicedetail, notice: 'Lowyerservicedetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lowyerservicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lowyerservicedetails/1
  # DELETE /lowyerservicedetails/1.json
  def destroy
    @lowyerservicedetail = Lowyerservicedetail.find(params[:id])
    @lowyerservicedetail.destroy

    respond_to do |format|
      format.html { redirect_to lowyerservicedetails_url }
      format.json { head :no_content }
    end
  end
end
