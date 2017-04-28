class CreateBuyersellers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyersellers do |t|
      t.references :user
      t.references :buyer
      t.references :shoe, foreign_key: true

      t.timestamps
    end
  end
end
