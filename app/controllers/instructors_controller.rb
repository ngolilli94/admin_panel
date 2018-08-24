class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
        @instructor_cohort = @instructor.cohorts
    end
    
    def new
        @instructor = Instructor.new
    end

    def create
        Instructor.create(instructor_params)  
    end
    
    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
    end
end

private
def instructor_params
    params.require(:instructor).permit(:first_name,:last_name,:age,:salary,:education, :pic)
end