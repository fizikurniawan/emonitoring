class OffensesController < ApplicationController
	before_action :set_offense, only: [:show, :update, :delete]
	def index
		@offenses= Offense.all
		render json: {
			status: 'OK',
			data: @offenses
		}, status: :ok
	end

	def show
		render json: {
			status: 'OK',
			data: @offense
		}, status: :ok
	end
	
	def create
		@offense = Offense.new(offense_params)
		if @offense.save
			render json: {
				status: 'OK',
				message: 'data has been saved',
				data: @offense
			}, status: :ok
		else 
			render json: {
				status: 'ERROR',
				message: 'data not saved'

       			}, status: :unprocessable_entity
		end
	end
	

    def update #PUT/PATCH http://api/v1/1?params 
    	if @offense.update(offense_params) 
       		render json: {
       			status: 'OK', 
       			message: 'Data has been updated',  
       			result: @offense
      		}, status: :ok, :except => [:created_at, :updated_at] 
    	end 
    end 

	def destroy
		@offense = Offense.find(params[:id])
		@offense.destroy
		render json: {
				status: 'OK',
				message: 'Data has been deleted'
		}, status: :ok
	end


	private

	def offense_params
		params.permit(:name, :frequency, :note)
	end

	def set_offense
		@offense = Offense.find(params[:id])
	end
end
