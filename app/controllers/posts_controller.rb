class PostsController < ApplicationController
  def index
    #How we use the database in rails is we instantiate objects, essentially our models.
    # We don't have a model right now, but let's say what we want, and let the errors guide us.
    # rails passes all the instance vars (with the @ sign) get passed in. You have them in your views.
    # @posts = "lol this is here for me in my view."
    # So we know we can pass in instance vars, but what about the posts?
    # We need to talk to the db, the way we do that is models.
    # So lets make a model, it's like a class. In ruby to instantiate a class it's Post.new
    # Post.new # this is like a new post.
    # but ruby has this thing called all, that gives you all of them.
    @posts = Post.all
    # but now we have an error: uninitialized constant PostsController::Post
    # Not matias's favorite error, but it means we don't have content in the controller.
    # It might be nicer if it told us: You don't even have this model! What are you doing?
    # So just to get started with RubyDocs, lets go to rubyguides and look up how to create a model.
  end

  def show
    # chew up the data as much as you can before you spit it out to the view
    @post = Post.find(params[:id])
  end

  #for creating there is new and create
  # new is for having the user enter the data you need to pass to the create function
  def new
    @post = Post.new

    #We will fill out a form we will make that then will talk to the create controller
  end

  # create doesn't have html, it's what talks to the db / migrations
  # "Hey! acctually put this in the db for me!"
  def create
    #strong params? what's that? A little funky.
    # look at post_params
    #remember we need the title, so let's try to leave it out.
    # it was working, we fixed it by adding the validation logic needed in the model
    # but now we need to show the error to the user, since it only shows up in the console.
    @post = Post.new(post_params)
    if @post.save
      #we are good to go.
      # puts "We saved a new post!"
      # We can have a successful post, but we stay on the same page still, redirection is needed.
      flash[:notice] = "We created a post! Whoop whoop!"
      # the flast didn't show up, we need to set it up
      redirect_to @post
    else
      #show the user what went wrong
      puts "something is wrong: " + @post.errors.full_messages.to_sentence
      #   (0.1ms)  BEGIN
      #   (0.1ms)  ROLLBACK
      #something is wrong:Title can't be blank
      #
      # that looks good, let's show it to the user too.
      flash[:alert] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    #with a ! it will raise execeptions if there are any.
    # now we need a way to access this function
    redirect_to posts_path
  end

  #private function for the post controller class, to accept the right Things
  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
