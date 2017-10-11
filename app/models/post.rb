class Post < ApplicationRecord
# Unable to autoload constant Post, expected /Users/qst0/cerealize_me/app/models/post.rb to define it
# We need to define the model, this error doesn't say exactly how. "The autoload isn't working"
validates :title, presence: true
# the line above stops the creation of posts without titles. Causing a rollback if you sumbit one.
end
