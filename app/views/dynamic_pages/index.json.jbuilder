json.array!(@dynamic_pages) do |dynamic_page|
  json.extract! dynamic_page, :id, :name, :title, :pagetype
  json.url dynamic_page_url(dynamic_page, format: :json)
end
