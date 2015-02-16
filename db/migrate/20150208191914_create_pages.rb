class CreatePages < ActiveRecord::Migration
   def up
    create_table :pages do |t|
     
      t.string "name"
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible"
      t.integer "subject_id"
      # same as: t.references :subject
      t.timestamps
     
    end
     add_index("pages","name")
    
     add_foreign_key :pages, :subjects # Adds foriegn key constraint
  end

  def down
   drop_table :pages
  end

end
