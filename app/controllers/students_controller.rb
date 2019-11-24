class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  

  def create
    @white = params.permit(:first_name, :last_name)
    @student = Student.new(@white)
    @student.save
    redirect_to student_path(@student)

  end

end
