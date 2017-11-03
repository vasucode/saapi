class CreateAppCalls < ActiveRecord::Migration[5.1]
  def change
    create_table :app_calls do |t|
      t.integer :app_master_id
      t.json :call_object, null: false, default: '{}'
      t.integer :call_count

      t.timestamps
    end
  end
end
