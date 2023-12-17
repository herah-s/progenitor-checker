class RemoveReleaseOrderFromWaframes < ActiveRecord::Migration[7.1]
  def change
    remove_column :warframes, :release_order
  end
end
