class CohortsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @cohorts = Cohort.all
        @courses = Course.all
    end

    def show
        @cohort = Cohort.find(params[:id])
        @cohort_instructor = @cohort.instructor
        @cohort_students = @cohort.students
        @cohort_course = @cohort.course
    end

    def new
        @cohort = Cohort.new
        @courses = Course.all
        @instructors = Instructor.all
    end

    def create
        Cohort.create(cohort_params)
        
        redirect_to :controller => 'cohorts', :action => 'index'
    end
    
    def edit
        @cohort = Cohort.find(params[:id])
        @courses = Course.all
        @instructors = Instructor.all
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)

        redirect_to :controller => 'cohorts', :action => 'index'
    end

    def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy
    end

    private
    def cohort_params
        params.require(:cohort).permit(:name,:start_date,:end_date,:description, :course_id,:instructor_id)
    end

end

