class AchievementsController < ApplicationController 
	before_action :set_achievement, only: [:show, :update, :destroy]
	def index
		@achievements = Achievement.all
		render json: {
			status: 'OK',
			data: @achievements,
		}, status: :ok
	end
	def show
		render json: {
			status: 'OK',
			messages: 'Achievement',
			data: @achievement
		}, status: :ok
	end

	def create
		@achievement = Achievement.new(achievement_params)
		if @achievement.save
			render json: {
				status: 'OK',
				message: 'Data has been saved',
				data: @achievement
			}, status: :ok
		else
			render json: {
				status: 'ERROR',
				message: 'Data not saved',
				data: @achievement.error,
			}, status: :unproccessable_entity
		end
	end
	def update
		if @achievement.update(achievement_params)
			render json: {
				status: 'OK',
				message: 'Data has been updated',
				data: @achievement
			}, status: :ok
		end
	end

	def destroy
		@achievement = Achievement.find(params[:id])
		@achievement.destroy
		render json: {
			status: 'OK',
			message: 'Data has been deleted'
		}, status: :ok
	end
		


	private 
	def achievement_params
		params.permit(:name, :level, :achievement_date)
	end

	def set_achievement
		@achievement = Achievement.find(params[:id])
	end

end
