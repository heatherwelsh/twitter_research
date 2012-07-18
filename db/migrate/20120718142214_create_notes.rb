class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string(:note_text, :null => false)
      t.integer(:user_id, :null => false)
      t.integer(:tweet_id, :null => false)
      t.timestamps
    end
  end
end
