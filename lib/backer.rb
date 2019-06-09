require "pry"

class Backer
  attr_reader :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    update_project = @backed_projects << project
    update_project.map {|x| x.backers << self}
  end
end
