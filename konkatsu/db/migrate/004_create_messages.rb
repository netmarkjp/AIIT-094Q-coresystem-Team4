class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :message_id
      t.string :from_member_id
      t.string :to_member_id
      t.text :body
      t.timestamp :send_date

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
