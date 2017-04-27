json.array!(@dyn_images) do |dyn_image|
  json.extract! dyn_image, :id, :name, :alttext, :caption, :pagename
  json.url dyn_image_url(dyn_image, format: :json)
end
