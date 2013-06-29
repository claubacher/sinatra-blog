def update_tags(post)
  params[:tags].split(', ').each do |phrase|
    tag = Tag.find_or_create_by_phrase(phrase)
    post.tags << tag unless post.tags.include?(tag)
  end
end
