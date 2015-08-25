class LayorserviceController < ApplicationController
def index
@layorservice= Layorservice.all
end
def new
	@layorservice=Layorservice.new
end
def create
  @layorservice= Layorservice.new(params[:layorservice])
if @layorservice.save
  redirect_to @layorservice
   else
    render 'new'
end 
end
def show
@layorservice=Layorservice.find(params[:id])
end
def edit
	@layorservice=Layorservice.find(params[:id])
end
def update
@layorservice= Layorservice.find(params[:id])
   if @layorservice.update_attributes(params[:layorservice]
  redirect_to @layorservice
  else
    render 'edit'
  end
end
 def destroy
    @layorservice = Layorservice.find(params[:id])
    @layorservice.destroy
 
    redirect_to @layorservice
  end
end
end
