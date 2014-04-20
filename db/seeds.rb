# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def randomSequentialDates(length)

	randomSpread = 3
	startDate = (Time.now.to_date - (length*randomSpread/2).days)
	endDate = Time.now.to_date
	
	dates = []
	currDate = startDate

	for i in (0..length) do
		currDate = currDate + Random.rand(randomSpread)
		dates.push( currDate.strftime("%m/%d/%y") )
	end
	
	return dates
end

def seedTenCompanies()
	names = ['Nokia', 'AOL', 'Citrix', 'Yahoo', 'MasterCard', 'Riverbed Technology', 'Riot Games', 'Google', 'Pandora', 'Dropbox']
	dates = randomSequentialDates(names.length)

	puts names
	puts dates
	
	names.each_with_index do |name, i|
		c = Company.new(name: name, dateApplied: dates[i])
		c.save
	end
end








############# SEED #############

seedTenCompanies()









