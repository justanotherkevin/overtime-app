module ApplicationHelper
  def is_current_path?(path)
    "active" if current_page?(path)
  end
end
