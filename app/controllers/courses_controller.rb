class CoursesController < ApplicationController
	before_action :set_course, only: [:show]
	def index
		@courses= Course.all
		render json: {
			status: 'OK',
			data: @courses
		}, status: :ok
	end
	def show
		render json: {
			status: 'OK',
			data: @course
		}, status: :ok
	end
	
	def create
		@course=Course.new(course_params)
		if @course.save
			render json: {
				status: 'OK',
				message: 'Data has been saved',
				data: @course
			}, status: :ok
		else
			render json: {
				status: 'ERROR',
				message: 'Data not saved',
			}, status: :unprocessable_entity
		end
	end

	private
	def course_params
        if 1==1
            predicate ='A'
        end
		params.permit(:name, :value, :predicate, :student_id)
	end

	def set_course
		@course = Course.find(params[:id])
	end
end
