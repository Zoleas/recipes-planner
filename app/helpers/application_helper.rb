module ApplicationHelper

  def flash_messages
    flash.map do |type, message|
      type = { 'error' => 'danger', 'notice' => 'info' }[type] || type
      content_tag :div, message, class: "alert alert-#{type}"
    end.join
  end
end
