class StudentsController < ApplicationController

    def index
        @students = Student.all
    end
    
    def show
        @student = Student.find(params[:id])
        @student_cohort = @student.cohort
    end

    def new
        @student = Student.new
    end

    def create
        Student.create(student_params)

        redirect_to :controller => 'students', :action => 'index'
    end
    
    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)

        redirect_to :controller => 'students', :action => 'index'
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
    end

    private
    def student_params
        params.require(:student).permit(:first_name,:last_name,:age,:pic,:cohort_id)
    end
end

