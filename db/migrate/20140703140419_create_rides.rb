class CreateRides < ActiveRecord::Migration
  # Write your migrations here
  def change
   create_table :rides do |t|
     t.references :user
     t.references :attraction
   end
  end
end
