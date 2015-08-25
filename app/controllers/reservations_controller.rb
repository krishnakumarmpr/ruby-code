class ReservationsController < ApplicationController
  # GET /reservation
  # GET /reservation.json
#http_basic_authenticate_with :name => "krishna", :password => "secret", :except => [:index]
  def index
    @reservation = Reservation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservation/1
  # GET /reservation/1.json
  def show
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservation/new
  # GET /reservation/new.json
  def new
    @reservation= Reservation.new
    @class=["A/c","First","Second","sleeper","General"]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservation/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservation
  # POST /reservation.json
  def create
    @reservation = Reservation.new(params[:reservation_id])
    
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Ticket has booked.' }
        format.json { render json: @reservation, status: :created, location: @reservation }
      else
        format.html { render action: "new" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reservation/1
  # PUT reservation/1.json
  def update
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      if @reservation.update_attributes(params[:reservation])
        format.html { redirect_to @reservation, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservation/1
  # DELETE /reservation/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end

