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

  def projects_microcart
      render "index/Projects/microcart"
  end

  def projects_microcart_design_doc
    pdf_filename = File.join(Rails.root, 'app', 'assets', 'documents', "FinalDocumentation.pdf")
    send_file(pdf_filename, :filename => "MicroCART1410DesignDocument.pdf", :disposition => 'inline', :type => "application/pdf")
  end

  def projects_timely
      render "index/Projects/timely"
  end
  
  def projects_soundtools
      render "index/Projects/soundtools"
  end
  
  def projects_tixface
      render "index/Projects/tixface"
  end
  
  def projects_fast
      render "index/Projects/fast"
  end

  def projects_fast_apk
      send_file Rails.root.join('app', 'assets', 'files', 'fast.apk'), :type=>"application/apk", :x_sendfile=>true
  end
  def projects_conwayslife
      render "index/Projects/conwayslife"
  end
end