class ClientsController < ApplicationController

    before_action :set_client, only: [:show, :update]

    def show
        render json: @client, serializer: ClientMembershipSumSerializer, status: :ok
    end

    def create
        render json: Client.create!(client_params), status: :created
    end

    def update
        @client.update!(client_params)
        render json: @client, status: :accepted
    end

    private

    def set_client
        @client = Client.find(params[:id])
    end

    def client_params
        params.permit(:name, :age)
    end
end
