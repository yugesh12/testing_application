class AddConsumeTimeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :consumeTime, :integer
  end
end
