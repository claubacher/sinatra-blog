get '/authors/:name' do
  @author = Author.find_by_name(params[:name])

  @posts = []
  Post.order('updated_at').reverse_order.each do |post|
    if post.author == @author
      @posts << post
    end
  end

  erb :posts
end
