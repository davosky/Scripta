class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.user_type == 'admin'
        can :manage, :all
      elsif user.user_type == 'publisher'
        can :manage, Assistance
      else
        can :read, Assistance
      end
    end
  end

end
