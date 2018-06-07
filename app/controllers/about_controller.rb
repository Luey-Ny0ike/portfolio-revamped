class AboutController < ApplicationController
  def index
    @skills = Skill.all
    @webdesign = Category.find_by(name: "Web design")
    @videography = Category.find_by(name: "Videography")
    @programming_skills = @skills.where(category_id: @webdesign.id)
    @editorial_skills = @skills.where(category_id: @videography.id)
  end
end
