class SiteController < ApplicationController

	def home
		render "home"  # name of view template
	end

	def about
		render "about"  # name of view template
	end

	def contact
		render "contact"  # name of view template
	end
end
