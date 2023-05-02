class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :profile_pic, :name, :username, :created_at
end
