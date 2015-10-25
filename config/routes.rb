Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :carts, except: [:new, :edit] 
      resources :cart_items, except: [:new, :edit]
      resources :product_types, except: [:new, :edit]
      resources :taxes, except: [:new, :edit]
      resources :categories, except: [:new, :edit]
      resources :products, except: [:new, :edit]
    end 
  end
end
