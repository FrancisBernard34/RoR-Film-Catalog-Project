class AddPosterToFilms < ActiveRecord::Migration[7.1]
  def change
    add_reference :films, :poster, null: true, foreign_key: { to_table: :active_storage_attachments }
  end
end
