class AddReleasedToFilms < ActiveRecord::Migration[7.1]
  def change
    add_column :films, :released, :boolean, default: false
  end
end
