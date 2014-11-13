class UserSerializer < ActiveModel::Serializer
  attributes :first_name,
             :last_name,
             :email,
             :rating,
             :about_me
end
