module PledgesHelper
  def pledge_link(project)
    if project.funded?
      content_tag(:strong, "Funded!")
    else
      amount_left = number_to_currency(project.amount_outstanding)

      div = content_tag :div do
        concat(content_tag(:p, "Only #{amount_left} left!"))
        concat(link_to 'Pledge!', new_project_pledge_path(project))       
      end

      return div
    end
  end
end
