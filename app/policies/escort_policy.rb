class EscortPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.user_type == '1'
  end

  def show?
    true
  end

  def update?
    pimp_is_owner_or_admin?
  end

  def destroy?
    user.user_type == '1'
  end

  private

  def pimp_is_owner_or_admin?
    record.user == user || user.admin
  end
end
