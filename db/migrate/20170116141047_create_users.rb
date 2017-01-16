class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|    #t is for table
      t.string :name              #a model represents a single user, whereas a database table consists of many users.
      t.string :email

      t.timestamps   #t.timestamps, is a special command that creates two magic columns called created_at and updated_at
    end              #which are timestamps that automatically record when a given user is created and updated.
  end
end

