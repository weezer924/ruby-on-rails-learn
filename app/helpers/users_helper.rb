module UsersHelper
  def holy(text)
    h(text).gsub(/\n/, "<br />").html_safe
  end
end
