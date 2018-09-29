class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.boolean :visible, default: false
      
      t.with_option foreign_key: true do |t|
        t.references :user
        t.references :post
      end


      t.timestamps
    end
  end
end
