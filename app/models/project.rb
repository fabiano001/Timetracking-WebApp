class Project < ActiveRecord::Base

	validates(:name, {presence: true, uniqueness: true, length: {maximum: 30}})

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

	def total_hours_in_month(month, year)

		total_hours = 0
		total_minutes = 0

		month_entries = entries_in_month(month, year)

		month_entries.each do |entry|
			total_hours += entry.hours
			total_minutes += entry.minutes
		end

		return total_hours + (total_minutes/60.0)
	end

	def total_hours_overall()

		total_hours = 0
		total_minutes = 0

		self.entries.each do |entry|
			total_hours += entry.hours
			total_minutes += entry.minutes
		end

		return total_hours + (total_minutes/60.0)
	end

	def entries_in_month(month, year)
		start_month = DateTime.new(year, month.to_i, 1)
		end_month = start_month + 1.month


		return self.entries
			.where("date > ?", start_month)
			.where("date < ?", end_month)

	end
end