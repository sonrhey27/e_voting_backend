Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :articles
      resources :countries
      resources :candidates
      resources :municipalities
      resources :positions
      resources :regions
      resources :users
      resources :voting_counts, only: [:create]

      resources :voting_counts do
        collection do
          get 'vote_count'
        end
      end

      resources :users do
        collection do
          post 'login'
        end
      end
    end
  end
end
