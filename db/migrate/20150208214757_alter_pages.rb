class AlterPages < ActiveRecord::Migration
 
  def up
  add_index("pages", "subject_id")
  #add_index("pages","name")
  #add_index("pages", "permalink")
  #change_column("pages", "permalink", :string)
end

  def down
  # remove_index("pages","name")
  # remove_index("pages", "permalink")
  #change_column("pages", "permalink", :integer)
  	end
end
