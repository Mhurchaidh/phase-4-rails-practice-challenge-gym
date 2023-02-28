class GymsController < ApplicationController

    before_action :set_gym, only: [:show, :destroy]

    def show
        render json: @gym, status: :ok
    end

    def destroy
        @gym.destroy
        head :no_content
    end

    private
    
    def set_gym
        @gym = Gym.find(params[:id])
    end
end
