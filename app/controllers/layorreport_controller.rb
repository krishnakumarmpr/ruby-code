class LayorreportController < ApplicationController
def index
@layorreport= Layorreport.all
end
def new
	@layorreport=Layorreport.new
end
def create
  @layorreport= Layorreport.new(params[:layorreport])
if @layorreport.save
  redirect_to @layorreport
   else
    render 'new'
end 
end
def show
@layorreport=Layorreport.find(params[:id])
end
def edit
	@layorreport=Layorreport.find(params[:id])
end
def update
@layorreport= Layorreport.find(params[:id])
   if @layoreport.update_attributes(params[:layorreport]
  redirect_to @layorreport
  else
    render 'edit'
  end
end
 def destroy
    @layorreport = Layorreport.find(params[:id])
    @layorreport.destroy
 
    redirect_to @layorreport
  end
end

