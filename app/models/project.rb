class Project < ActiveRecord::Base

	def self.delete_projs_over_week_old
		old_projs = self.where("created_at<?", Date.today-7.days)
		old_projs.destroy_all
	end

	def self.show_all

		self.all.each{|project|
			puts "#{project.name}:  #{project.description}" 
		}

	end

end
