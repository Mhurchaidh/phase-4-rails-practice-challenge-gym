class ApplicationController < ActionController::API
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def render_record_not_found exception
        render json: {error: "#{exception.model} not found"}, status: :render_record_not_found
    end

    def render_unprocessable_entity exception
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

end