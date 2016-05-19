class StoriesController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@stories = Story.order(created_at: :desc)
		@story_last = Story.last
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new(story_params)

		if	@story.save
			redirect_to @story
		else
			render 'new'
		end
	end

	def edit
		@story = Story.find_by_slug(params[:id])
	end

	def update
		@story = Story.find_by_slug(params[:id])

		if @story.update(story_params)
			redirect_to @story
		else
			render 'edit'
		end
	end

	def destroy
		@story = Story.find_by_slug(params[:id])
		@story.destroy

		redirect_to stories_path
	end


	def show
		@story = Story.find_by_slug(params[:id])
		tag = Story.find_by_slug(params[:id]).tag
		@articles = Article.where(tag: tag)

	end

	private

	def story_params
		params.require(:story).permit(:title, :content, :tag, :image, :consumeTime, :description, :slug)
	end
end



