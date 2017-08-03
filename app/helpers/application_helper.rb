module ApplicationHelper
  def login_helper style #style is a class as a string
    if current_user.is_a?(GuestUser)
      ( link_to "Login", new_user_session_path, class: style ) +
      "&nbsp;".html_safe + #rather than using a space " ", I used an html entity for the non-breaking space for semantics and browser compatability
      ( link_to "Register", new_user_registration_path, class: style )
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end
  
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout."
      content_tag(:p, greeting)
    end
  end
  
  def copyright_generator
    DavisViewTool::Renderer.copyright "Torick Davis", "All Rights Reserved"
  end
end