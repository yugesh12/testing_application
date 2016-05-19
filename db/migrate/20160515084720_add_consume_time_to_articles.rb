class AddConsumeTimeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :consumeTime, :integer
  end
end
