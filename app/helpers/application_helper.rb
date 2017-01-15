module ApplicationHelper
  def full_title(page_title = "")
    base_title = "ruby is my love"
    if page_title.empty?
      base_title
    end
  else
    page_title + "|" + base_title
  end
end
