class AddTvshowToSeason < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :tvshow_id, :integer
  end
end
