class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
    
      t.string "name"
      t.integer "position"
      t.boolean "visible"
      t.string "content_type"
      t.text "content"
      t.integer "page_id"
      t.timestamps
     
    end
     add_index("sections","name")
     
     #add_foreign_key :sections, :pages	
  end
  def down
  	 drop_table :sections
  end
end
