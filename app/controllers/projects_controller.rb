class ProjectsController < ApplicationController
  def index
    projects_array = Array.new
    projects = Project.select([:id, :title])
    projects.each do |project|     
	todos = project.todos.select([:id, :text, :isCompleted])
	projects_array.push({id: project.id, title: project.title, todos: todos}) 
    end
    render json: {status:"ok", data:projects_array}
  end
end
