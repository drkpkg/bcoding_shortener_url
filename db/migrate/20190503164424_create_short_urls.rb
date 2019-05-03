class CreateShortUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :short_urls do |t|
      t.string :name
      t.string :url
      t.string :short_url
      t.integer :total
      t.timestamps
    end
  end
end
