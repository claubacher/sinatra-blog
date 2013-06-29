get '/tags/:tag_phrase' do
  @tag = Tag.find_by_phrase(params[:tag_phrase])

  @posts = []
  Post.order('updated_at').reverse_order.each do |post|
    if post.tags.include?(@tag) && !@posts.include?(post)
      @posts << post
    end
  end

  erb :posts
end
