json.array!(@dy_contents) do |dy_content|
  json.extract! dy_content, :id, :description, :content, :pagename
  json.url dy_content_url(dy_content, format: :json)
end
