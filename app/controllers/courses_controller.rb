class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update]
  # after_action :redirect_to_course 

  def index
    # @courses = Course.all
    @courses = Course.where(visible:true)
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    # @course = Course.create title:params[:course][:title], description:params[:course][:description], visible:params[:course][:visible]
    redirect_to courses_path
  end

  def show
  end

  def edit
  end

  def update
    @course.update course_params
    redirect_to courses_path
  end

  def destroy
    @course.delete
  end

  private

  # def redirect_to_course
  #     redirect_to courses_path
  # end

  def set_course
    @course = Course.find params[:id]    
  end

  def course_params
    params.required(:course).permit(:title, :description, :visible, :publisehd)
  end
end
