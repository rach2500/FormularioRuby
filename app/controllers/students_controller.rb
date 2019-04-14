class StudentsController < ApplicationController
	def new
		@student = Student.new
		@students = Student.all
	end

	def create
		@student = Student.new(params[:student].permit(:firstname, :lastname))
		if @student.save
			redirect_to new_student_path
		end
	end
end
