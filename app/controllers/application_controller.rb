class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :get_feedbacks
  
  def get_feedbacks
	@teste = "O Beach Point acabou com um grande problema que eu sempre passava nas praias que conhecia: achar um lugar e comidas que me agradem!<br />Agora posso ver o que a localidade me oferece e cham&aacute;-los at&eacute; onde estou. Meus dias passaram a ser muito mais completos com o Beach Point."
  end
end
