class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :email, :phone_no, :gender

end
