class CoursedetsController < ApplicationController
  def index
	@coursedets = Coursedet.all
	render json: {
		status: 'OK',
		data: @coursedets
	}, status: :ok
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
