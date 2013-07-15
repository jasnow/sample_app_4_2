module ApplicationHelper

  def logo
    image_tag("logo.png", :alt => "Sample App", :class  => "round")
  end

  # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  ######################################################################
  ## Exercise 11.5.1

  def warn_if_char_count_exceeded(field_id, update_id,
    maximum_number_of_chars, options = {})

    ## 1. Simple counter ------------------------------------------------

    # function =
"var remaining_chars = $(#{maximum_number_of_chars}) - $F('#{field_id}').length;

    # $('#{update_id}').innerHTML = remaining_chars;"

    ## 2. Countdown with red background if count is exceeded ------------

    function = "var out = [];

    var remaining_chars = $(#{maximum_number_of_chars}) - $F('#{field_id}').length;

    if (remaining_chars >= 0) {
      out = remaining_chars;
      document.getElementById('#{field_id}').style.backgroundColor='white'
    } else {
      out = 'Too long by ' + remaining_chars;
      document.getElementById('#{field_id}').style.backgroundColor='red'
    }

    $('#{update_id}').innerHTML = out;"

    out = javascript_tag(function)

    out += observe_field(field_id, options.merge(:function => function))

  end
end


