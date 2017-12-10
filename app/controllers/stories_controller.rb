class StoriesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @story = Story.find(params[:id])
    @first_chapter = @story.chapters.first
  end
end
