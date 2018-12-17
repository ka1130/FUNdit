module ProjectsHelper
  def format_date(project)
    if project.pledging_expired?
      content_tag(:strong, "All Done!")
    else
      "#{distance_of_time_in_words_to_now(project.pledging_ends_on)} remaining"
    end
  end

  def image_for(project)
    if project.image_file_name.blank?
      asset_path 'placeholder.png'
    else
      asset_path project.image_file_name
    end
  end
end
