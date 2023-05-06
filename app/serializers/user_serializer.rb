class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :profile_pic, :isAdmin, :name, :username, :created_at
end
