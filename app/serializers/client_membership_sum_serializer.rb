class ClientMembershipSumSerializer < ActiveModel::Serializer
  attributes :name, :age, :membership_sum

  def membership_sum
    self.object.memberships.sum(&:charge)
  end
end
