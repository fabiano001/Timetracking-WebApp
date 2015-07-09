class ProjectsController < ApplicationController

	def index

		@projects = Project.last_created(10);

		render("index")
	end

	def show
		
		@project =  Project.find_by(:id => params[:id])

		if(@project.nil?)
			render("project_not_found")
		else
			render("show")
		end
	end

	def new
		@project = Project.new
		render("new")
	end

	# def create
	# 	@project = Project.find(params[:project_id])
	# 	@entry = @project.entries.new(entry_params)

	# 	if(@entry.save)
	# 		redirect_to(project_entries_path)
	# 	else
	# 		@errors = @entry.errors.full_messages
	# 		render("new")
	# 	end
	# end

	# def edit
	# 	@project = Project.find(params[:project_id])
	# 	@entry = @project.entries.find(params[:id])
	# 	render("edit")
	# end

	# def update
	# 	# retrieve the entry from the database
	# 	@project = Project.find(params[:project_id])
	# 	@entry = @project.entries.find(params[:id])

	# 	# if input is valid, update and redirect to list of entries for project
	# 	# otherwise show errors to user and show form again
	# 	if(@entry.update_attributes(entry_params))
	# 		redirect_to(project_entries_path)
	# 	else
	# 		@errors = @entry.errors.full_messages
	# 		render("edit")
	# 	end
	# end

end
