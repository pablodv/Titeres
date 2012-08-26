class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.boolean :published, :default => false

      t.timestamps
    end
  end
end
