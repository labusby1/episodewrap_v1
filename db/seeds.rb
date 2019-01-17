
#-------------------------------------------------------------------------------
#                                 Tvshows list
#-------------------------------------------------------------------------------

#---
# Game of Thrones
#---
Tvshow.create(name: 'Game of Thrones', aired: '2011-present', network: 'HBO', seasonsran: 8)

# Game of thrones seasons
#------------------------
# Creates all season objects for a given tvshow using for loop from 1 to number of seasons ran (sr)
sr = Tvshow.find_by(name: 'Game of Thrones').seasonsran
for i in 1..sr
  Season.create(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id )
end

# First six seasons have 10 episodes each, seventh season has 7, eighth has 6.
for i in 1..sr
  case i
  when 1..6
  @season = Season.where(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id)
    @season.update(episodesran: 10)  
  when 7
    @season = Season.where(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id)
    @season.update(episodesran: 7)
  when 8
    @season = Season.where(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id)
    @season.update(episodesran: 6)
  else
    @season = Season.where(seasonNumber: i, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id)
    @season.update(episodesran: nil)
  end
end

# Game of thrones episodes
#-------------------------
# S1E1
Episode.create(episodeNumber: 1, episodeName: 'Winter is Coming', director: 'Tim Van Patten', runtime: '62 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E2
Episode.create(episodeNumber: 2, episodeName: 'The Kingsroad', director: 'Tim Van Patten', runtime: '56 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E3
Episode.create(episodeNumber: 3, episodeName: 'Lord Snow', director: 'Brian Kirk', runtime: '58 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E4
Episode.create(episodeNumber: 4, episodeName: 'Cripples, Bastards, and Broken Things', director: 'Brian Kirk', runtime: '56 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E5
Episode.create(episodeNumber: 5, episodeName: 'The Wolf and the Lion', director: 'Brian Kirk', runtime: '55 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E6
Episode.create(episodeNumber: 6, episodeName: 'A Golden Crown', director: 'Daniel Minahan', runtime: '53 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E7
Episode.create(episodeNumber: 7, episodeName: 'You Win or You Die', director: 'Daniel Minahan', runtime: '58 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E8
Episode.create(episodeNumber: 8, episodeName: 'The Pointy End', director: 'Tim Van Patten', runtime: '59 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
# S1E9
Episode.create(episodeNumber: 9, episodeName: 'Baelor', director: 'Alan Taylor', runtime: '57 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))
#S1E10
Episode.create(episodeNumber: 10, episodeName: 'Fire and Blood', director: 'Alan Taylor', runtime: '53 min',
  season_id: Season.where(seasonNumber: 1, tvshow_id: Tvshow.find_by(name: 'Game of Thrones').id))


#---
# Breaking Bad
#---
Tvshow.create(name: 'Breaking Bad', aired: '2008-2013', network: 'AMC', seasonsran: 5)

#---
# Black Mirror
#---
Tvshow.create(name: 'Black Mirror', aired: '2011-present', network: 'Netflix', seasonsran: 4)


