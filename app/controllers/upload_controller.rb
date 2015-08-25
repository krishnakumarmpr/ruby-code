class UploadController < ApplicationController
def index 
render "uploadfile" 
end
def loadFile
post=DataFile.save(params[:upload])
render :text=>"file successfully loaded"
end
end
