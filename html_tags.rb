# Passing tags into html

def wrap_in_h1
  "<h1>#{yield}</h1>"
end

wrap_in_h1 { "Here's my heading" }

wrap_in_h1 { "Ha" * 3 }

def wrap_in_tags(tag, text)
  html = "<#{tag}>#{text}</#{tag}>"
  yield html
end

# Send the title string via email. This will produce a NameError,
# because Mailer is an unititialized constant.
wrap_in_tags("title", "Hello") { |html| Mailer.send(html) }

# Create a Page record. NameError as well. 
wrap_in_tags("title", "Hello") { |html| Page.create(:body => html) }
