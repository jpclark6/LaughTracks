class Specials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text    :title
      t.integer :length
      t.integer :comedian_id
      t.text    :pic_url
    end
  end
end
