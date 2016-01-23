class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.string :name, default: '', null: false
      t.string :email, default: '', null: false
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
