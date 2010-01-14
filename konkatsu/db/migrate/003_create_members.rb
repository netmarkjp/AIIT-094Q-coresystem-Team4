class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :sex
      t.string :name
      t.string :nickname
      t.string :age
      t.string :height
      t.string :weight
      t.string :job
      t.string :income
      t.string :local
      t.string :motivation
      t.string :email
      t.string :favorite_character
      t.string :login
      t.timestamp :regist_date
      t.timestamp :exit_date
      t.string :crypted_password
      t.string :salt
      t.string :remember_token
      t.string :remember_token_expires_at

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
