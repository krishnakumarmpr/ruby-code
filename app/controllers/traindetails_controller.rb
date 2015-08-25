class TraindetailsController < ApplicationController
	# GET /traindetails
  # GET /traindetails.json
  def index
    @traindetail =Traindetails.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @traindetails }
    end
  end

  # GET /traindetails/1
  # GET /traindeatails/1.json
  def show
    @traindetails = Traindetails.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @traindetails }
    end
  end

  # GET /traindeatails/new
  # GET /traindetails/new.json
  def new
    @traindetails= Traindetails.new
    @tno=[11201,11202,11203,11204,11205,11206,11207,11208,11209,11210,11211,11212,11213,11214,11215,22523,44525,56897,12457,52698,24571,20145]
    @tname=["YercaudExpress","BangaloreNagarcoilExpress","BrindavanExpress","cheranExpress","MysorebangaloreExp","Malaikottaiexp","CoimbatoreNagarcoilExp","ChennaiEgmoreExp","TataAlaphi","VeegalandExp","AlapuzhaExp","KanniyakumariEgmoreexp","Maduraikottayam","Guruvayurexp","PalagattExp","MeenakshiExp","Kaversuperpast","Trivendramsuperfast","MangaloreExp","sataptiExp","TirupatikanniyakumariExp","MumbaiCst","NellaiExp"]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @traindetails }
    end
  end

  # GET /traindetails/1/edit
  def edit
    @traindetails = Traindetails.find(params[:id])
  end

  # POST /traindetails
  # POST /traindetails.json
  def create
    @traindeatails = Traindetails.new(params[:traindetails])
        respond_to do |format|
      if @traindetails.save
        format.html { redirect_to @traindetails, notice: 'jhklj' }
        format.json { render json: @traindetails, status: :created, location: @traindetails }
      else
        format.html { render action: "new" }
        format.json { render json: @traindetails.errors, status: :unprocessable_entity }
      end
    end
  end
end
