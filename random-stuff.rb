# Generators

rails g resource Customer name:string 

rails g resource Order customer_id:integer sushi_id:integer

rails g resource Review customer_id:integer sushi_id:integer rating:integer

rails g resource Sushi name:string img_url:string ocean_id:integer

rails g resource Ocean name:string

# AR Relationships

# Customer
    has_many :orders
    has_many :reviews
    has_many :sushis, through: :orders

# Order
    belongs_to :customer
    belongs_to :sushi

# Review
    belongs_to :customer
    belongs_to :sushi

# Sushi
    has_many :orders
    has_many :reviews
    belongs_to :ocean
    has_many :customers, through: :orders 

# Ocean
    has_many :sushis

# Routes

  resources :customers, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :orders, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :reviews, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :sushis, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :oceans, only: [:index, :new, :create, :show, :edit, :update, :destroy]

# Views