module ApplicationHelper
  def sortable(column, name = nil)
    name ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to name, url_for(:sort => column, :direction => direction), {:remote => true}
  end
end
