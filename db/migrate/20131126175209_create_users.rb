class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.name :string
      t.language :string

      t.timestamps
    end
  end
end
