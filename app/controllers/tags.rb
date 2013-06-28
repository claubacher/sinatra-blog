get '/tags/:tag_id' do
  @tag = Tag.find_by_id(params[:tag_id])
end