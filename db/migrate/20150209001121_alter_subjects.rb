class AlterSubjects < ActiveRecord::Migration
  def up
  	change_column("subjects","visible",:boolean, :default => false)
  end

  def down
    change_column("subjects","visible", :boolean)
  end
end
