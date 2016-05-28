class CoursesController < ApplicationController

  def index
    render json: Course.all_to_json
  end

  def show
    render json: Course.find(params[:id]).to_json
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end

end