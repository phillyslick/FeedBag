class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :summary
      t.datetime :published_on
      t.string :rss_id
      t.string :link

      t.timestamps
    end
  end
end
