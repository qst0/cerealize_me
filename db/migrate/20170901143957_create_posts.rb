class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      #here is where we pass the schema, what attributes are we going to save?
      # What does a post have?
      t.string :title, null: false
      t.text :content
      t.timestamps
      # with these three commands we should be ready to create the db.
      # You might want to add some checkers
      # this adds logic to the db layer to make sure things are as they should be.
      # see the 'null: false' above, this makes sure we have a title.
    end
  end
end
