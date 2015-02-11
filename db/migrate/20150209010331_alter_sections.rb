class AlterSections < ActiveRecord::Migration
  def up
  	remove_index("sections","name")
  end
  def down
    add_index("sections", "name")
  end
end
