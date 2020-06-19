class RemoveContentFromElements < ActiveRecord::Migration[6.0]
  def change
    remove_column :elements, :content
  end
end
