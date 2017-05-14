class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :pronouns
      t.text    :physical_description
      t.text    :bio
      t.string  :email
      t.string  :twitter
      t.string  :screenhero
      t.string  :company
      t.text    :languages
      t.boolean :at_ada
      t.boolean :remote
      t.boolean :available
      t.boolean :agreed_to_terms
      t.boolean :student
      t.integer :uid, null: false # this is the identifier provided by Github
      t.string :provider, null: false # this tells us who provided the identifier

      t.timestamps null: false
    end
  end
end
