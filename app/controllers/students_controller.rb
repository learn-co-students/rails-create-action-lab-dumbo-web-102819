class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
   
  end

  def create
    student = Student.new
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.save
    redirect_to student
  end
  # def create 
  #   @white = params.require(:student).permit(:first_name,:last_name)
  #   student = Student.create(@white)
  #   redirect_to_student_path(@student.id)
  # end 


end
