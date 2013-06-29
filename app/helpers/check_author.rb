def check_author
  puts @post.author.inspect
  puts Author.find_by_id(session[:user_id]).inspect
  if @post.author != Author.find_by_id(session[:user_id])
    session[:errors] = "You can only change posts that you've authored."
    redirect '/'
  end
end
