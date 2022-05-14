class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :brand
      t.string :expiration_month
      t.string :expiration_year
      t.boolean :default_for_payment

      t.timestamps
    end
  end
end
