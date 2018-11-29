class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text    :first_name
      t.text    :last_name
      t.integer :age
      t.text    :city
    end
  end
end
