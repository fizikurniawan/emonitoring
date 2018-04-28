class ParentsController < ApplicationController
	def index
		@parents = Parent.all
		render json: @parents
	end
end
