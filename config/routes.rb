Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :restaurants, only: [:index, :show, :new, :create] do
      resources :reviews, only: [:new, :create]
    end
end
=begin
- A visitor can see the list of all restaurants
    GET "restaurants"
- A visitor can add a new restaurant, and
  be redirected to the show view of that new restaurant.
    GET "restaurants/new"
    POST "restaurants"
- A visitor can see the details of a restaurant,
  with all the reviews related to the restaurant.
    GET "restaurants/38"
- A visitor can add a new review to a restaurant
    GET "restaurants/38/reviews/new"
    POST "restaurants/38/reviews"

- a visitor cannot update / delete any restaurant or review.
  This is the role of the admin (i.e. you) -
  no need to generate a new controller through namespace :admin routes,

  as a developer you have the power to manipulate the DB from the rails
  console if you want to update / delete any record.

- Hint: to handle the route GET "restaurants/38/reviews/new",
  you will have to use nested resources.
=end
