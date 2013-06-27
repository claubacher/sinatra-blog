get '/posts/:post_id' do
  @post = Post.find_by_id(params[:post_id]) 
  erb :post
end

get '/newpost' do
  erb :newpost
end

post '/newpost' do
  author = Author.find_or_create_by_name(params[:author])

  post = Post.create(:author => author,
                     :title => params[:title],
                     :content => params[:content])

  params[:tags].split(', ').each do |phrase|
    post.tags << Tag.find_or_create_by_phrase(phrase)
  end
end

# get '/editpost' do
#   @post = Post.find_by_id(params[:post_id])
#   erb :editpost
# end

post '/editpost' do
  @post = Post.find_by_id(params[:post_id])
  erb :newpost
end

post '/deletepost' do
  # Post.destroy(params[:id])
end
