class CoursesController < ApplicationController
    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
        @course_cohorts = @course.cohorts
    end
    
    def new
        @course = Course.new
    end

    def create
        Course.create(course_params) 
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
    end
end

private
def course_params
    params.require(:course).permit(:name,:hours)
end