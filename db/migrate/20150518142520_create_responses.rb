class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :contents

      t.timestamps

    end
  end
end
