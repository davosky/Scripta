module ApplicationHelper
  def active?(path)
        'active' if current_page?(path)
  end

  def admin?
      current_user.user_type == 'admin'
  end

  def publisher?
      current_user.user_type == 'publisher'
  end
end
