class MembershipsController < ApplicationController
    def create 
        render json: Membership.create!(member_params), status: :created
    end

    private

    def member_params
        params.permit(:charge, :client_id, :gym_id)
    end
end
