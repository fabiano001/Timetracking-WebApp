Rails.application.routes.draw do

  resources(:projects) do
    resources(:entries)
  end

  # get "/" => "site#home"
  # get "/about" => "site#about"
  # get "/contact" => "site#contact"

  # get "/projects" => "projects#index"
  # get "/show/:id" => "projects#show"

  # get "/projects/:project_id/entries" => "entries#index"

  # get "/projects/:project_id/entries/new" => "project_entries#new"
  # post "/projects/:project_id/entries" => "entries#create", :as => "project_entries"

end
