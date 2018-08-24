class CohortsController < ApplicationController
    def index
        @cohorts = Cohort.all
    end

    def show
        @cohort = Cohort.find(params[:id])
        @cohort_instructor = @cohort.instructor
        @cohort_students = @cohort.students
        @cohort_course = @cohort.course
    end

    def new
        @cohort = Cohort.new
    end

    def create
        Cohort.create(cohort_params)       
    end
    
    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
    end
end

private
def cohort_params
    params.require(:cohort).permit(:name,:start_date,:end_date,:course_id,:instructor_id)
end