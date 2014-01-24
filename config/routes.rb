HowTo::Application.routes.draw do
 resources :lists do
    resources :steps
  end

 root to: "lists#index"
end
