class GruposController < ApplicationController
	
	# *********** VISUALIZACAO ***********
	def index
		@grupos = Grupo.all
	end
	
	def show
	end
	
	
	# *********** CRIACAO ***********
	def new
		@grupo = Grupo.new
		
	end
	
	def create
		@grupo = Grupo.new(grupo_params)
		if @grupo.save
			redirect_to grupos_path, :notice=>"Grupo salvo com sucesso!"
		else
			render "new", :notice=>"Grupo não salvo!"
		end
	end
	
	
	# *********** EDICAO ***********
	def edit
		@grupo = Grupo.find(params[:id])
	end
	
	def update
		@grupo = Grupo.find(params[:id])
		
		if @grupo.update_attributes(grupo_params)
			redirect_to grupos_path, :notice=>"Grupo salvo com sucesso!"
		else
			render "edit", :notice=>"Grupo não pode ser editado!"
		end
	end
	
	
	# *********** EXCLUSAO ***********
	def destroy
	end
	
	
	
	def grupo_params
		params.require(:grupo).permit(:nome, :descricao)
	end
	
end
