class AddSeontableToSeos < ActiveRecord::Migration[5.2]
  def change
    add_reference :seos, :seontable, polymorphic: true
  end
end
