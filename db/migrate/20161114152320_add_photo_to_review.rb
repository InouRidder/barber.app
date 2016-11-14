class AddPhotoToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :photo, :string
  end
end
