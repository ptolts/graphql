Rails.application.routes.draw do
  resources :queries, via: [:post, :options]
  scope '/static' do
    get "/board", to: "static#board"
  end
end
