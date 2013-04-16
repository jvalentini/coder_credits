class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :login
      t.string :avatar_url
      t.string :gravatar_id
      t.string :url

      t.timestamps
    end
  end
end
