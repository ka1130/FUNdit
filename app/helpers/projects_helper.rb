module ProjectsHelper
  def format_date(project)
    if project.expired?
      "#{distance_of_time_in_words_to_now(project.pledging_ends_on)} remaining"
    else
      content_tag(:strong, "All Done!")
    end
  end
end
