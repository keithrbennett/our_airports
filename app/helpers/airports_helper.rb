module AirportsHelper

  UP_ARROW_CHAR   = "\u2b06"  #  "⬆"
  DOWN_ARROW_CHAR = "\u2b07"  #  "⬇"

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    arrow = sort_direction == "asc" ? UP_ARROW_CHAR : DOWN_ARROW_CHAR
    arrow = column == sort_column ? arrow : ""
    link_to "#{title} #{arrow}".html_safe, {column: column, direction: direction}
  end

end
