class AddEpisodenumberToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :episodeNumber, :integer
  end
end
