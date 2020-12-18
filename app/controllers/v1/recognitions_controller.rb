module V1
  class RecognitionsController < ApplicationController
    before_action :set_recognition, only: %i[show update destroy]

    # GET /v1/recognitions
    def index
      @recognitions = Recognition.all

      render json: @recognitions
    end

    # GET /v1/recognitions/1
    def show
      render json: @recognition
    end

    # POST /v1/recognitions
    def create
      @recognition = Recognition.new(recognition_params)

      if @recognition.save
        render json: @recognition, status: :created
      else
        render json: @recognition.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /v1/recognitions/1
    def update
      if @recognition.update(recognition_params)
        render json: @recognition
      else
        render json: @recognition.errors, status: :unprocessable_entity
      end
    end

    # DELETE /v1/recognitions/1
    def destroy
      @recognition.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_recognition
      @recognition = Recognition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recognition_params
      params.require(:recognition).permit(:sender_id, :receiver_id, :message, :value_id)
    end
  end
end
