module AirportsHelper

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    arrow = sort_direction == "asc" ? "⬆" : "⬇"
    arrow = column == sort_column ? arrow : ""
    link_to "#{title} #{arrow}".html_safe, {column: column, direction: direction}
  end

end
