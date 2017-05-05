class ExpenseSerializer < ActiveModel::Serializer
  attributes :product, :cost, :quantity, :description, :dateg

  def date
    object.created_at.asctime.split(" ")[0]
  end
end
