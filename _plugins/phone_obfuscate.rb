require "base64"

module ObfuscatePhoneNumber
  def phoneObfuscate(input)
    base64Phone = Base64.strict_encode64(input)

    output = "<a href=\"#\" data-phone=\"#{base64Phone}\" onmouseover=\"this.href='tel:' + atob(this.dataset.phone);\" onfocus=\"this.href='tel:' + atob(this.dataset.phone);\">"
    output += "<noscript>#{input}</noscript>"
    output += "<script type=\"text/javascript\">document.addEventListener('DOMContentLoaded', function() {"
    output += "  var phoneElement = document.querySelector('[data-phone]');"
    output += "  phoneElement.textContent = atob(phoneElement.dataset.phone);"
    output += "});</script>"
    output += "</a>"
    return output
  end
end

Liquid::Template.register_filter(ObfuscatePhoneNumber)
