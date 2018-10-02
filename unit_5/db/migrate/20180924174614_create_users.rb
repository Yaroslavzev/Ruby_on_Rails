class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.with_options index: { unique: true } do
        string :name
        string :email
      end
      t.with_options default: false do
        boolean :moderator
        boolean :creator
        boolean :banned
      end

      t.timestamps
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
