class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :jina
      t.string :pepe

      t.timestamps
    end
  end
end
