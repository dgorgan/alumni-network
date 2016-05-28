class MenteesController < ApplicationController

def index
  @mentees = Mentee.all
  render :json => @mentees
end

def new
  @mentee = Mentee.new
  render :json => @mentee
end

def create
  @mentee = Mentee.new(mentee_params)

   if @mentee.save
      render :json => @mentee
   else
      render :json => @mentees
   end
end

def show
 @mentee = Mentee.find(params[:id])
 render :json => @mentee
end

def edit
  @mentee = Mentee.find(params[:id])
  render :json => @mentee
end

def update
  @mentee = Mentee.find(params[:id])

     if @mentee.update_attributes(mentee_params)
        render :json => @mentee
     else
        render :json => @mentees
     end
end

def delete
      Mentee.find(params[:id]).destroy
      render :json => @mentee
   end

def mentee_params
   params.require(:mentees).permit(:description)
end

end
