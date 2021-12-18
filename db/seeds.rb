require 'yaml'
seed_file = File.join(Rails.root, 'db', 'seeds', 'seeds.yml')
data = YAML.load_file(seed_file)
projects = data["projects"]
projects.each do |project|
  created_project = Project.create(title: project["title"])
  project["todos"].each do |todo|
    created_project.todos.create(text: todo["text"], isCompleted: todo["isCompleted"])	
  end
end
