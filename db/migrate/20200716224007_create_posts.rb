class CreatePosts < ActiveRecord::Migration[4.2]
    def self.up
        create_table :posts do |t|
            t.datetime :pubdate
            t.string :title
            t.text :body
            t.string :image_url
            t.timestamps
        end
    end
    def self.down
        drop_table :posts
    end
end