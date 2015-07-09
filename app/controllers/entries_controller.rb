class EntriesController < ApplicationController

	def index
		@project = Project.find(params[:project_id])
		@entries_this_month = @project.entries_in_month(DateTime.now.month, DateTime.now.year)
		@total_hours_this_month = @project.total_hours_in_month(DateTime.now.month, DateTime.now.year)
		@total_hours_overall =  @project.total_hours_overall()
		render("index")
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
		render("new")
	end

	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new(entry_params)

		if(@entry.save)
			redirect_to(project_entries_path)
		else
			@errors = @entry.errors.full_messages
			render("new")
		end
	end

	def edit
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
		render("edit")
	end

	def update
		# retrieve the entry from the database
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])

		# if input is valid, update and redirect to list of entries for project
		# otherwise show errors to user and show form again
		if(@entry.update_attributes(entry_params))
			redirect_to(project_entries_path)
		else
			@errors = @entry.errors.full_messages
			render("edit")
		end
	end

	def destroy
		# Find the entry in the database
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])

		# destroy the entry
		@entry.destroy()

		# redirect back to the list
		redirect_to(project_entries_path)
	end

	private

	def entry_params
		return params.require(:entry).permit(:hours, :minutes, :date, :comment)
	end
end
