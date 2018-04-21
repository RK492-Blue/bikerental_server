# == Route Map
#
#         Prefix Verb   URI Pattern                    Controller#Action
#        rentals GET    /rentals(.:format)             rentals#index
#                POST   /rentals(.:format)             rentals#create
#     new_rental GET    /rentals/new(.:format)         rentals#new
#    edit_rental GET    /rentals/:id/edit(.:format)    rentals#edit
#         rental GET    /rentals/:id(.:format)         rentals#show
#                PATCH  /rentals/:id(.:format)         rentals#update
#                PUT    /rentals/:id(.:format)         rentals#update
#                DELETE /rentals/:id(.:format)         rentals#destroy
#          users GET    /users(.:format)               users#index
#                POST   /users(.:format)               users#create
#       new_user GET    /users/new(.:format)           users#new
#      edit_user GET    /users/:id/edit(.:format)      users#edit
#           user GET    /users/:id(.:format)           users#show
#                PATCH  /users/:id(.:format)           users#update
#                PUT    /users/:id(.:format)           users#update
#                DELETE /users/:id(.:format)           users#destroy
#     bikestands GET    /bikestands(.:format)          bikestands#index
#                POST   /bikestands(.:format)          bikestands#create
#  new_bikestand GET    /bikestands/new(.:format)      bikestands#new
# edit_bikestand GET    /bikestands/:id/edit(.:format) bikestands#edit
#      bikestand GET    /bikestands/:id(.:format)      bikestands#show
#                PATCH  /bikestands/:id(.:format)      bikestands#update
#                PUT    /bikestands/:id(.:format)      bikestands#update
#                DELETE /bikestands/:id(.:format)      bikestands#destroy
#          bikes GET    /bikes(.:format)               bikes#index
#                POST   /bikes(.:format)               bikes#create
#       new_bike GET    /bikes/new(.:format)           bikes#new
#      edit_bike GET    /bikes/:id/edit(.:format)      bikes#edit
#           bike GET    /bikes/:id(.:format)           bikes#show
#                PATCH  /bikes/:id(.:format)           bikes#update
#                PUT    /bikes/:id(.:format)           bikes#update
#                DELETE /bikes/:id(.:format)           bikes#destroy
#

Rails.application.routes.draw do
  resources :rentals
  resources :users
  resources :bikestands
  resources :bikes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
