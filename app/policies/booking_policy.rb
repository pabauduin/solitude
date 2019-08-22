class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.user_type == '0' || user.user_type == '1'
  end

  def create?
    user.user_type == '0'
  end

  def destroy?
    user.user_type == '0' || user.user_type == '1'
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
