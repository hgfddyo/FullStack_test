class TodosController < ApplicationController
 def update
  project_id = params[:id_project]
  todo_id = params[:id_todo]
  project = Project.find_by(id: project_id)
  todo = project.todos.find_by(id: todo_id)
  todo.isCompleted = !todo.isCompleted
  todo.save
  render json: {data: todo, status: "ok"}
 end

 def create 
  require 'json'
  json = JSON.parse(request.body.read())
  if json["project"] === nil
    project_id = json["id_project"]
    project = Project.find_by(id: project_id)
    project.todos.create(text: json["todo"]["text"], isCompleted: json["todo"]["isCompleted"])
  else
    project = Project.create(title: json["project"]["title"])
    project.todos.create(text: json["todo"]["text"], isCompleted: json["todo"]["isCompleted"])
  end
  render json: {status: "ok"}
 end

end
