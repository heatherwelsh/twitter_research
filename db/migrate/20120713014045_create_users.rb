class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      u.full_name
      e.email
      t.timestamps
    end
  end
end
