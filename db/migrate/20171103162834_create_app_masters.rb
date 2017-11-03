class CreateAppMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :app_masters do |t|
      t.integer :user_id
      t.string :app_name
      t.string :app_desc
      t.string :app_token

      t.timestamps
    end
  end
end
