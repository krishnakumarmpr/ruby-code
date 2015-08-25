class LowerdetailsController < ApplicationController
  layout 'lowyer_layout'
	def index
    @lowyer_details = Lowerdetail.order('lowyer')#.paginate(:page => params[:page],:per_page => 20)
    @lowyer_city= Lowerdetail.order('city').select('distinct city')
     @service=Lowyerservicedetail.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lower_details }
    end
  end
 
   def load_city
   	 @lowyer_details = params[:location_id].blank? ? Lowerdetail.order('lowyer') : Lowerdetail.where(:city=>params[:location_id]).order('lowyer')#.paginate(:page => params[:page],:per_page => 20)
      @ser = params[:service_id] 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lower_details }
    end
   end
end
