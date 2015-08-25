class Mainreportscontroller < ApplicationController
def index
@mainreport= Mainreport.all
end
def new
	@mainreport=Mainreport.new
end
def create
  @Mainreport= Mainreport.new(params[:mainreport])
if @Mainreport.save
  redirect_to @mainreport
   else
    render 'new'
end 
end
def show
@mainreport=Mainreport.find(params[:id])
end
def edit
	@mainreport=Mainreport.find(params[:id])
end
def update
@mainreport= Mainreport.find(params[:id])
   if @mainreport.update_attributes(params[:mainreport]
  redirect_to @mainreport
  else
    render 'edit'
  end
end
 def destroy
    @mainreport = Mainreport.find(params[:id])
    @mainreport.destroy
 
    redirect_to @mainreport
  end
end
