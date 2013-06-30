get '/' do
  @posts = Post.order('updated_at').reverse_order.page(params[:page])
  if session[:user_id] == nil
    erb :login 
  else
    erb :make_post
  end
end

post '/user/login' do
  if Author.authenticate(params[:user])
    author = Author.find_by_email(params[:user][:email])
    session[:user_id] = author.id
    session[:errors] = nil
    redirect '/'
  else
    session[:errors] = "Username or password is incorrect."
    redirect '/'
  end
end

get '/user/new' do
  session.clear
  erb :create_user
end

post '/user/signup' do
  author = Author.create(params[:user])
  if author.valid?
    session[:user_id] = author.id
  else
    session[:errors] = author.errors.full_messages
  end
  redirect '/'
end

get '/user/logout' do
  session.clear
  redirect '/'
end
