Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#posts: index show new create edit update destroy
# Your app is based around these actions.
# Associated with a resource (like a post), not often an action.

root "posts#index"
#there is a thing called resources and you usually use this to create routes.
#before that lets look at a command: rails routes
# qst0s-iMac:cerealize_me qst0$ rails routes
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           posts#index
resources :posts #Now we can use the errors to build the views we need to uses these routes
# qst0s-iMac:cerealize_me qst0$ rails routes
#   Prefix Verb   URI Pattern               Controller#Action
#     root GET    /                         posts#index
#    posts GET    /posts(.:format)          posts#index
#          POST   /posts(.:format)          posts#create
# new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#     post GET    /posts/:id(.:format)      posts#show
#          PATCH  /posts/:id(.:format)      posts#update
#          PUT    /posts/:id(.:format)      posts#update
#          DELETE /posts/:id(.:format)      posts#destroy
#
# We don't have the action show for the route /posts/1
# let the errors guide you


end
