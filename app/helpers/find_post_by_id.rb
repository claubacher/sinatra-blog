def find_post_by_id
  @post = Post.find_by_id(params[:post_id])
end
