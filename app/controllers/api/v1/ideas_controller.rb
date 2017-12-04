module Api::V1
  class IdeasController < ApplicationController
    def index
      @ideas = Idea.order("created_at DESC")
      render json: @ideas
    end
    def  update
      @idea = Idea.find(params[:id])
      @idea.update_attributes(idea_params)
      render json: @idea
    end
  end
end
