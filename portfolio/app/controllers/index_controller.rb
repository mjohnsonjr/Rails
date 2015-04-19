class IndexController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@posts = Post.all
  	
  	# blank
  end

  def resume
  	#render :partial => 'resume'
  end

  def projects
  	# blank
  end

  def contact
	# blank
  end

end