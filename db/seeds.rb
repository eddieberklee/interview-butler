# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def randomSequentialDates(length)
	startDate = '1/10/14'
	startDate = Date.strptime(startDate, "%m/%d/%y")

	endDate = '4/18/14'
	endDate = Date.strptime(endDate, "%m/%d/%y")
	
	dates = []
	currDate = startDate

	for i in (0..length) do
		currDate = currDate + Random.rand(4)
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









