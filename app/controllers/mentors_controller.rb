class MentorController < ApplicationController
  def index
    render json:
  end

  def show
    render json:
    @Mentor = Mentor.find
  end

#   def new
#     @Mentor = Mentor.new(params[:Mentor])
#     if @Mentor.save
#       redirect_to @Mentor
#     else
#       render "new"
#     end
#   end
#
#   def edit
#     @Mentor = Mentor.edit
#   end
#
#   def save
#     @Mentor = Mentor.save
#   end
end
