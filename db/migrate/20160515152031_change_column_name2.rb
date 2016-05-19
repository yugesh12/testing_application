class ChangeColumnName2 < ActiveRecord::Migration
  def change
    rename_column :stories, :description, :tag

  end
end
