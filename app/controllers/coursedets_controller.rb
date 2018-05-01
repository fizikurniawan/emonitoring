class CoursedetsController < ApplicationController
    before_action :set_coursedet, only: [:show, :update, :destroy]
    def index
	    @coursedets = Coursedet.all
	    render json: {
		    status: 'OK',
		    data: @coursedets
	    }, status: :ok
    end

    def show
        render json: {
            status: 'OK',
            data: @coursedet
        }, status: :ok
    end

    def create
        @coursedet= Coursedet.new(coursedet_params)
        if @coursedet.save
            render json: {
                status: 'OK',
                message: 'Data has been saved.',
                data: @coursedet
            }, status: :ok
        else
            render json: {
                status: 'ERROR',
                message: 'Data not saved.'
            }, status: :unprocessable_entity
        end
    end

    def update
        if @coursedet.update(coursedet_params)
            render json: {
                status: 'OK',
                message: 'Data has been updated.',
                data: @coursedet
            }, status: :ok
        else
            render json: {
                status: 'ERROR',
                message: 'Data not updated.'
            }, status: :unprocessable_entity
        end
    end

    def destroy
        if @coursedet.destroy
            render json: {
                status: 'OK',
                message: 'Data has deleted.',
            }, status: :ok
        else
            render json: {
                status: 'ERROR',
                message: 'Data failed to delete.',
            }, status: :unprocessable_entity
        end
    end

    private
    def coursedet_params
        params.permit(:name, :value)
    end

    def set_coursedet
        @coursedet = Coursedet.find(params[:id])
    end
end
