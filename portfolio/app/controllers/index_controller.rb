class IndexController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  	@posts = Post.all
  	
  	# blank
  end

  def resume
  	pdf_filename = File.join(Rails.root, "/my_document.pdf")
    send_file(pdf_filename, :filename => "your_document.pdf", :disposition => 'inline', :type => "application/pdf")
  end

  def projects
  	# blank
  end

  def contact
	# blank
  end

end