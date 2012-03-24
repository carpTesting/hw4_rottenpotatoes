class AddDirectorColumn < ActiveRecord::Migration
  def up
    add_column :movies, :director, :string
    Movie.reset_column_information
  end

  def down
    remove_column :movies, :director
  end
end
