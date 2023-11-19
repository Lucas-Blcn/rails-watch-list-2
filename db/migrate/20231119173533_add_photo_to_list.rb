class AddPhotoToList < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :list_photo, :string
  end
end
