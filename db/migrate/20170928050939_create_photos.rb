class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
    	t.string		 :title, null: false
      t.references :gallery
      t.timestamps
    end
  end
end
