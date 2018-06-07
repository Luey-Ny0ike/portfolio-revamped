class HomeController < ApplicationController
  def index
    @categories = Category.all
    @web_design = Category.find_by(name: "Web design")
    @videography = Category.find_by(name: "Videography")
    @web_designs = Project.where(category_id: @web_design.id)
    @video_projects = Project.where(category_id: @videography.id)
  end
end
