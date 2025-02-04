class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.update(post_params)
    redirect_to student_path(@student)
  end

  private

    def post_params
      params.require(:student).permit(:first_name, :last_name)
    end

end
