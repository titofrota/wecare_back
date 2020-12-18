module Admin
  class PositionsController < ApplicationController
    before_action :set_position, only: %i[show update destroy]

    # GET /admin/positions
    def index
      @positions = Position.all

      render json: @positions
    end

    # GET /admin/positions/1
    def show
      render json: @position
    end

    # POST /admin/positions
    def create
      @position = Position.new(position_params)

      if @position.save
        render json: @position, status: :created
      else
        render json: @position.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /admin/positions/1
    def update
      if @position.update(position_params)
        render json: @position
      else
        render json: @position.errors, status: :unprocessable_entity
      end
    end

    # DELETE /admin/positions/1
    def destroy
      @position.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end
    # Only allow a trusted parameter "white list" through.

    def position_params
      params.require(:position).permit(:title)
    end
  end
end
