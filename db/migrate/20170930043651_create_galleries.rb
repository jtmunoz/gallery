class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
    	t.string 			:name, null: false
    	t.references  :user

      t.timestamps
    end
  end
end
