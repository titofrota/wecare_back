module Admin
  class PronounsController < ApplicationController
    before_action :set_pronoun, only: %i[show update destroy]

    # GET /admin/pronouns
    def index
      @pronouns = Pronoun.all

      render json: @pronouns
    end

    # GET /admin/pronouns/1
    def show
      render json: @pronoun
    end

    # POST /admin/pronouns
    def create
      @pronoun = Pronoun.new(pronoun_params)

      if @pronoun.save
        render json: @pronoun, status: :created
      else
        render json: @pronoun.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /admin/pronouns/1
    def update
      if @pronoun.update(pronoun_params)
        render json: @pronoun
      else
        render json: @pronoun.errors, status: :unprocessable_entity
      end
    end

    # DELETE /admin/pronouns/1
    def destroy
      @pronoun.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_pronoun
      @pronoun = Pronoun.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pronoun_params
      params.require(:pronoun).permit(:title)
    end
  end
end