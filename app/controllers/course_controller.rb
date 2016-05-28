class CourseController < ApplicationController
  def index
    render json:
  end

  def show
    render json:
    @course = Course.find
  end

#   def new
#     @course = Course.new(params[:course])
#     if @course.save
#       redirect_to @course
#     else
#       render "new"
#     end
#   end
#
#   def edit
#     @course = Course.edit
#   end
#
#   def save
#     @course = Course.save
#   end
end
