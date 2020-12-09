class BillboardsController < ApplicationController
def index
  @billboards = Billboard.all
end
 
def show
  @billboard = Billboard.find(params[:id])
end

def new
  @billboard = Billboard.new
end

def edit
  @billboard = Billboard.find(params[:id])
end
end

#def create
 # @billboard = Billboard.new(billboard_params)
  #if @billboard.save

  #else
   # render :new
#end


#def update
 # @billboard = Billboard.find(params[:id])
 # if @billboard.find(params[:id])

  #else
 #  render :edit
#end
#def destroy
 # @billboard = Billboard.find(params[:id])
  #@billboard.destroy
  
#end
