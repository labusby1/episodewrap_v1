class AddEpisodesranToSeason < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :episodesran, :integer
  end
end
