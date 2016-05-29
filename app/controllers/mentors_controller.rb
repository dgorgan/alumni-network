class MentorsController < ApplicationController

def index
  @mentors = Mentor.all
  render :json => @mentors
end

def new
  @mentor = Mentor.new
  render :json => @mentor
end

def create
  @mentor = Mentor.new(mentor_params)

   if @mentor.save
      render :json => @mentor
   else
      render :json => @mentors
   end
end

def show
 @mentor = Mentor.find(params[:id])
 render :json => @mentor
end

def edit
  @mentor = Mentor.find(params[:id])
  render :json => @mentor
end

def update
  @mentor = Mentor.find(params[:id])

     if @mentor.update_attributes(mentor_params)
        render :json => @mentor
     else
        render :json => @mentors
     end
end

def delete
      Mentor.find(params[:id]).destroy
      render :json => @mentor
   end

def mentor_params
   params.require(:mentors).permit(:description)
end

end
