class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :description, :tag

  end
end
