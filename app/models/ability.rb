class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.user_type == 'admin'
        can :manage, :all
      elsif user.user_type == 'publisher'
        can :manage, Assistance
        can :manage, Immigration
        can :manage, Health
        can :manage, Pension
      else
        can :read, Assistance
        can :read, Immigration
        can :read, Health
        can :read, Pension
      end
    end
  end

end
