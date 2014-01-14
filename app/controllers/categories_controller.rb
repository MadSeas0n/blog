class CategoriesController < ApplicationController
	respond_to :html,:js

	def index
		@categories = Category.all
		@category   = Category.new
	end

	def new
		@category = Category.new
	end

	def create
		@categories = Category.all
		@category = Category.create(cat_params)
	end

	def show
		@category = Category.find(params[:id])
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@categories = Category.all
		@category = Category.find(params[:id])
		@category.update_attributes(cat_params)
	end

	def delete
		@category = Category.find(params[:category_id])
	end

	def destroy
		@categories = Category.all
		@category = Category.find(params[:id])
		@category.destroy
	end

	private

	def cat_params
		params.require(:category).permit(:cat_name, :cat_description)
	end



end
