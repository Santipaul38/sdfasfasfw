class AddUnitIdToMember < ActiveRecord::Migration[6.0]
  def change
    add_reference :members, :unit, null: false, foreign_key: true
  end
end
