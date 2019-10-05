Rails.application.routes.draw do
  
  root to: 'calculators#new'
  get 'calculators/new', to: 'calculators#new'
  get 'calculators/result', to: 'calculators#result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'calculators/result', to: 'calculators#result'
end
