class CreateKojirases < ActiveRecord::Migration[6.1]
  def change
    create_table :kojirases do |t|
      t.string :question

      t.timestamps
    end
  end
end
