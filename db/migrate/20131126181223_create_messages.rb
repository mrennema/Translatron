class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.sender_id :integer
      t.receiver_id :integer
      
      t.timestamps
    end
  end
end
