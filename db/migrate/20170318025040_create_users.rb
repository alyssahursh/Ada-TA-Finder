class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
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

      t.timestamps null: false
    end
  end
end
