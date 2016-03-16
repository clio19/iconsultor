class AddPrimeToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :prime, :boolean
  end
end
