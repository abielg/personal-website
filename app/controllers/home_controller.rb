class HomeController < ApplicationController

  def index
  end

  def pdf
    resume = File.join(Rails.root, 'app/assets/Abiel_Gutierrez_Resume.pdf')
    send_file(resume, :filename => "Abiel_Gutierrez_Resume.pdf", :disposition => 'inline', :type => "application/pdf")
  end

  helper_method :pdf

end
