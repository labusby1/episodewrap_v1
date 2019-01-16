# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-------------------------------------------------------------------------------
#                                 Tvshows list
#-------------------------------------------------------------------------------

#---
# Game of Thrones
#---
Tvshow.create(name: 'Game of Thrones', aired: '2011-present', network: 'HBO', seasonsran: 8)

# Game of thrones seasons
sr = 8
for i in 1..sr
  Season.create(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id )
end

# Game of thrones episodes



#---
# Breaking Bad
#---
Tvshow.create(name: 'Breaking Bad', aired: '2008-2013', network: 'AMC', seasonsran: 5)

#---
# Black Mirror
#---
Tvshow.create(name: 'Black Mirror', aired: '2011-present', network: 'Netflix', seasonsran: 4)


