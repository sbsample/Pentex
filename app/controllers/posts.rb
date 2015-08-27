
get "/posts" do
  @posts = Post.order("created_at DESC")
 
  erb :'posts'
end

post "/posts" do
  @post = Post.create(params)
  
  redirect "/posts"
end



get "/posts/new" do

  @post = Post.new
  erb :'new_post'
end


# ' or 1=1)#
post "/posts/search" do
	connection = ActiveRecord::Base.connection
 	connection.execute("SELECT * FROM POSTS WHERE MESSAGE LIKE '%#{params[:search]}%';")
 	# p query
 	# redirect "/posts/search/#{query}"
end

# get "/posts/search/:results" do
# @results = params[:results]
# erb :"search"
# end


 # connection = ActiveRecord::Base.connection
 #  connection.execute("SELECT * FROM POSTS WHERE MESSAGE LIKE '%#{params[:message]}%'")
 #  ActiveRecord::Base.establish_connection(Post)
 #  ActiveRecord::Base.connect.execute("SELECT * FROM POST WHERE MESSAGE LIKE %#{params[:search]}%")