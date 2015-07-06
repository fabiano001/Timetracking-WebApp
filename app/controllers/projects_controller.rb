class ProjectsController < ApplicationController

	def index
		@projects = Project
			.order(:created_at => :desc)

		render("index")
	end
end
