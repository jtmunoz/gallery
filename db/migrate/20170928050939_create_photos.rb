class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
    	t.string		 :title, null: false
      t.belongs_to :gallery, index: true

      t.timestamps
    end
  end
end
