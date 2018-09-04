class AddDescriptionToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :description, :text
  end
end
