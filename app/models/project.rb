class Project < ActiveRecord::Base

	has_many(:entries)

	def self.delete_projs_over_week_old
		old_projs = self.where("created_at<?", Date.today-7.days)
		old_projs.destroy_all
	end

	def self.show_all

		self.all.each{|project|
			puts "#{project.name}:  #{project.description}" 
		}

	end

	def self.last_created(number)

		return Project
			.order(:created_at => :desc)
			.limit(number)
	end

end
