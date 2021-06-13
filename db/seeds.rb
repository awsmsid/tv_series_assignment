require 'csv'    

################################# TV Series Start ###################################
tv_series = CSV.parse(File.read(Rails.root.join("db/tv_series.csv").to_path), :headers => true)   #read the tv_series csv file
tv_series.each do |row|
  actor = Actor.find_or_create_by(name: row.to_hash["Actor"])            #create actor
  director = Director.find_or_create_by(name: row.to_hash["Director"])   #create director
  genre = Genre.find_or_create_by(title: row.to_hash["Genre"])           #create genre
  country = Country.find_or_create_by(name: row.to_hash["Country"])      #create country

  tv_series = TvSeries.find_by_name(row.to_hash["TV Series"])
  tv_series = TvSeries.create(name: row.to_hash["TV Series"], number_of_seasons: row.to_hash["No of seasons"].to_i, date_of_first_release: Date.parse(row.to_hash["Date of First Release"]), country_id: country.id, genre_id: genre.id) if tv_series.blank? #create tv series
  
  tv_series.directors << director if tv_series.directors.where(id: director.id).blank? #create HABTM between director and tv series
  tv_series.save
  tv_series.projects.find_or_create_by(actor_id: actor.id, shoot_location: row.to_hash["Shoot location"])   #create project for actor and tv series
end
################################# TV Series END ###################################


################################# Review Start ###################################
reviews = CSV.parse(File.read(Rails.root.join("db/reviews.csv").to_path), :headers => true)
reviews.each do |row|
	tv_series = TvSeries.find_by_name(row.to_hash["TV Series"]) #find the existing tv series
	user = User.create(name: row.to_hash["User"])  #create user
	tv_series.reviews.create(user_id: user.id, star: row.to_hash["Stars"], review_message: row.to_hash["Review"])  #create reviews
end
################################# Review End ###################################
