Rails.application.routes.draw do
  resources :queries, via: [:post, :options]
  root to: redirect('/static/board')
  scope '/static' do
    get "/board", to: "static#board"
  end
end
