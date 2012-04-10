authorization do
  role :admin do
    has_permission_on [:users, :games], :to => [:show, :edit, :create, :destroy, :index, :new, :update]
  end
  
  role :guest do
    has_permission_on :games, :to => [:show, :index]
  end
  
  role :user do
    has_permission_on :games, :to => [:show, :create, :new, :index]
    has_permission_on :games, :to => [:update, :destroy, :edit] do
      if_attribute :user => is { user }
    end
    has_permission_on :users, :to => [:show, :edit, :update] do
      if_attribute :user => is { user }
    end
  end
end