include ERB::Util

get '/posts/new' do
  erb :update_post
end

post '/posts/new' do
  post = Post.new

  post.title   = params[:title]
  post.content = params[:content]
  
  update_tags(post)

  author = Author.find_by_id(session[:user_id])
  post.author_id = author.id

  post.save
  
  redirect '/'
end

get '/posts/:post_id' do
  @posts = [Post.find_by_id(params[:post_id])]
  erb :posts
end

get '/posts/:post_id/update' do
  find_post_by_id
  check_author
  erb :update_post
end

post '/posts/:post_id/update' do
  post = Post.find_by_id(params[:id].to_i)
  post.update_attributes(:title => params[:title], :content => params[:content])  
  update_tags(post)
  post.save
  redirect '/'
end

get '/posts/:post_id/delete' do
  find_post_by_id
  check_author
  Post.destroy(params[:post_id])
  redirect '/'
end
