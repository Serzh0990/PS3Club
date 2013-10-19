module ApplicationHelper
  
  def flash_class(level)
    case level
      when :notice then "alert alert-success"
      when :success then "alert alert-success"
      when :error then "alert alert-danger"
      when :alert then "alert alert-danger"
        
  end
end

    def full_title(page_title)
      base_title = 'Playstation3 club'
      if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
    end
  end
  
end
