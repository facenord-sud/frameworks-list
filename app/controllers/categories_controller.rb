class CategoriesController < ApplicationController

  # GET /categories
  # GET /categories.json
  def index
    respond_to do |format|
      format.json do
        if params[:q].blank?
          @categories = []
        else
          @categories = Category.search params[:q]
        end
      end
    end
  end
end
