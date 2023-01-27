class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :rank, :status, :debt
end
