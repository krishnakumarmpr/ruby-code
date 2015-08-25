class DemosController < ApplicationController
http_basic_authenticate_with name: "krishna", password: "success", except: [:index]
def index
@demo= Demo.order("id desc").limit(10)
end
def new
	@demo=Demo.new
end
def create
 #raise params[:train][:src].inspect
  @demo= Demo.new(params[:demo].merge(:src=>params[:train][:src],:dest=>params[:tdest][:dest],:status=>params[:tSeating][:status],:tno=>params[:trainno][:tno],:tname=>params[:trainna][:tname],:check=>params[:ttr][:check],:cno=>params[:cn][:cno],:mpay=>params[:mp][:mpay],:prf=>params[:proof][:prf]))
   if @demo.save
  redirect_to @demo
   else
    render 'new'
end 
end
def show
@demo=Demo.find(params[:id])
end
def edit
	@demo=Demo.find(params[:id])
end
def update
  @demo= Demo.find(params[:id])
   if @demo.update_attributes(params[:demo].merge(:src=>params[:train][:src],:dest=>params[:tdest][:dest],:status=>params[:tSeating][:status],:tno=>params[:trainno][:tno],:tname=>params[:trainna][:tname],:check=>params[:ttr][:check],:cno=>params[:cn][:cno],:mpay=>params[:mp][:mpay],:prf=>params[:proof][:prf]))
    redirect_to @demo
  else
    render 'edit'
  end
end
 def destroy
    @demo = Demo.find(params[:id])
    @demo.destroy
 
    redirect_to @demo
  end

end