class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.timestamp :completed_at

      t.timestamps
    end
  end
end
