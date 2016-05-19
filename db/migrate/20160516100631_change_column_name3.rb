class ChangeColumnName3 < ActiveRecord::Migration
  def change
    rename_column :articles, :titel, :title
  end
end

