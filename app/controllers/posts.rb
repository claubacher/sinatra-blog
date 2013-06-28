get '/posts/:post_id' do
  @post = Post.find_by_id(params[:post_id]) 
  erb :post
end

get '/newpost' do
  erb :newpost
end

post '/newpost' do
  post = Post.find_or_create_by_id(params[:id])
  
  params[:tags].split(', ').each do |phrase|
    post.tags << Tag.find_or_create_by_phrase(phrase)
  end

  author = Author.find_or_create_by_name(params[:author])
  
  post.author_id = author.id
  post.title     = params[:title]
  post.content   = params[:content]
  post.save
  
  redirect '/'
end

post '/editpost' do
  @post = Post.find_by_id(params[:post_id])
  puts @post.inspect
  erb :newpost
end

post '/deletepost' do
  Post.destroy(params[:post_id])
  redirect '/'
end
