class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.editor?
      can :manage, [Admin::Product, Admin::Catalog, Admin::Feedback, Admin::StaticPage]
    else
      can :read, :all
    end
  end
end
