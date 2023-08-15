Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/long_word_game", to:"longest_word_game#longestword"
  # root to: 'longest_word_game#longestword'
  post "/results", to:"longest_word_game#results"
end
