class SoupsController < ApplicationController
	before_action :fetch_soup, only: [:show, :edit, :update, :destroy, :toggle_featured]
	def show		
		respond_to do |format|
			format.html 
			format.json {render json: @soup}
		end
	end
	def index
		@soups = Soup.all
		respond_to do |format|
			format.json {render json: @soups}
		end
	end

	def destroy
		
	end

	def update
		
	end

	def edit
		
	end

	def toggle_featured
		@soup.update(featured: !@soup.featured)
		redirect_to @soup
		
	end

	private 

	def fetch_soup
		@soup = Soup.find(params[:id])		
	end
end
