get '/tags/:tag_phrase' do
  @tag = Tag.find_by_phrase(params[:tag_phrase])

  @posts = []

  Post.all.each do |post|
    post.tags.each do |tag|
      if tag == @tag && !@posts.include?(post)
        @posts << post
      end
    end
  end

  erb :tags
end