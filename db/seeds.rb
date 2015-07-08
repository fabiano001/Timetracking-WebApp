# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "proj1 = Project 1",  { name: "proj1 = Project 1",  }])
#   Mayor.create(name: "proj1 = Project 1", ity: cities.first)
# proj1 = Project:  
	 # t.string   "name"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  #   t.integer  "estimate"
  #   t.text     "description"  
# Entry: 
	# t.integer  "project_id"
 #    t.integer  "hours"
 #    t.integer  "minutes"
 #    t.text     "comment"
 #    t.datetime "date"
 #    t.datetime "created_at", null: false
 #    t.datetime "updated_at", null: false

proj1 = Project.create(name: "Ironhack Bootcamp", description: "Learning web application development with Ruby on Rails", estimate: 600)
proj2 = Project.create(name: "House Flipping Texas", description: "Buying and selling 15 homes in Texas within the next 3 months", estimate: 3000)
proj3 = Project.create(name: "Finding Permanent Housing in Miami", description: "Making a more permanent move to Miami within the next 3 months", estimate: 60)
proj4 = Project.create(name: "Starting my own Tech Startup", description: "Applying my skills in web application development to launch a tech startup", estimate: 5000)
proj5 = Project.create(name: "Trip to Brazil", description: "Taking a trip to Brazil to unwind after my bootcamp", estimate: 50);


proj1.entries.create(hours: 1, minutes: 45, date: Time.now, comment: "Practicing routes, models and views in rails")
proj1.entries.create(hours: 2, minutes: 3, date: Time.now, comment: "Learning ruby programming language")
proj1.entries.create(hours: 0, minutes: 45, date: Time.now, comment: "JavaScript syntax")
proj1.entries.create(hours: 3, minutes: 45, date: Time.now, comment: "JavaScript concepts")

proj1.entries.create(hours: 1, minutes: 45, date: DateTime.new(2015, 6, 3), comment: "Practicing routes, models and views in rails")
proj1.entries.create(hours: 2, minutes: 3, date: DateTime.new(2015, 6, 3), comment: "Learning ruby programming language")
proj1.entries.create(hours: 0, minutes: 45, date: DateTime.new(2015, 6, 3), comment: "JavaScript syntax")
proj1.entries.create(hours: 3, minutes: 45, date: DateTime.new(2015, 6, 3), comment: "JavaScript concepts")

proj3.entries.create(hours: 0, minutes: 45, date: Time.now, comment: "Looked at apartments in mid town")
proj3.entries.create(hours: 0, minutes: 30, date: Time.now, comment: "Looked at condos in south beach")
proj3.entries.create(hours: 0, minutes: 35, date: Time.now, comment: "Went all the way to Hollywood to see if I like the area")
proj3.entries.create(hours: 1, minutes: 45, date: Time.now, comment: "changed my mind about Hollywood, really want to stay in south beach or brickell")



