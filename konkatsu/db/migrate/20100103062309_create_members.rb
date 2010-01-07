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
      t.string :member_id
      t.timestamp :regist_date
      t.timestamp :exit_date
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
