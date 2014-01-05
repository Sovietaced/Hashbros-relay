class CreateNode < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
    	t.string :url
    	
    	t.timestamps
    end
  end
end
