class AlterPages < ActiveRecord::Migration
 
  def up
  # remove_index("pages","name")
  # add_index("pages", "permalink")
  change_column("pages", "permalink", :string)
end

  # def down
  # add_index("pages","name")
  # remove_index("pages", "permalink")
  #change_column("pages", "permalink", :integer)
  	#end
end
