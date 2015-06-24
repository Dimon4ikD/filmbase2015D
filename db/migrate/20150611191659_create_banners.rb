class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.attachment :image
      t.integer :frequency
      t.integer :click
      t.time :start_date
      t.time :end_date
      t.belongs_to :film, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
