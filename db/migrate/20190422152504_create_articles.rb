class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t| #create table is a method, :articles is the parameter, and t references the created table
      t.string :title #A table string named "title"
      t.text :body #A text named "body"

      t.timestamps #creates 2 table columns named created_at and updated_at
    end
  end
end
