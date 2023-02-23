module ApplicationHelper

  def formatted_date(date)
    date.strftime('%A, %b, %d, %Y')
  end

  def render_sample_button
    # <div>
    #    <button onclick="alert(&#39;Hello World&#39;)">Click Me</button>
    # </div>
    
    content_tag(:div) do
      content_tag(:button,"Click Me", :onclick => "alert('Hello World')")
    end
  end
end
