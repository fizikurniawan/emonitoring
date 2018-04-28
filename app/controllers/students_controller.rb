class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :update, :delete]
	def index
		@students = Student.all
		render json: {
			status: 'OK',
			data: @students
		}, status: :ok
	end
	def create
		@student = Student.new(student_params) 

      if @student.save 
        render json: {
          status: 'OK', 
          message: 'Saved data',  
          data: @student
        },status: :ok
      else 
        render json: {
          status: 'ERROR', 
          message: 'data not saved.',  
          data: @student.errors
        }, status: :unprocessable_entity 
      end 
    end 

	def show
		render json: {
        	status: 'OK', 
        	data: @student
      	},status: :ok
	end

	def destroy #hapus data DELETE http://api/v1/1 //delete by id 
      @student = Student.find(params[:id]) 
      @student.destroy 
      render json: {
        status: 'OK', 
        message: 'food has been deleted'
      },status: :ok, :except => [:created_at, :updated_at] 
    end 

    def update #PUT/PATCH http://api/v1/1?params 
      if @student.update(student_params) 
        render json: {
          status: 'OK', 
          message: 'Data has been updated',  
          result: @student
        }, status: :ok, :except => [:created_at, :updated_at] 
      end 
    end 

	private
	def student_params
		params.permit(:first_name, :last_name, :nis, :nisn, :grade, :sex, :brithdate, :address, :photo)
	end

	def set_student
        @student = Student.find(params[:id]) 
    end 
	
end

