class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.integer :list_id

      t.timestamps
    end
  end
end
