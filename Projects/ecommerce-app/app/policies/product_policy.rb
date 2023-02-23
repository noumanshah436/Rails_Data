class ProductPolicy < ApplicationPolicy

  def edit?
    user == record.user
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user  #   return true if we want to allow this action
  end

end
