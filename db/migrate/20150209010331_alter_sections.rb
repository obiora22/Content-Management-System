class AlterSections < ActiveRecord::Migration
  def up
  	add_index("sections", "page_id")
  	#add_index("sections","name")
  end
  def down
    #remove_index("sections", "name")
  end
end
