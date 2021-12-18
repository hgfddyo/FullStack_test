Rails.application.routes.draw do
  get 'projects', to:"projects#index"
  get "/project", to: "project#index" 
  patch "/projects/:id_project/todos/:id_todo", to: "todos#update"
  post "/todos", to: "todos#create" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
