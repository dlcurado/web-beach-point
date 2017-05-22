class TiposController < ApplicationController
	def index
		@grupos = Grupo.all
		@tipos = Tipo.all
	end
	
	def show
	end
	
	
	def new
		@tipos = Tipo.all
		@tipo = Tipo.new
	end
	
	def create
		@tipo = Tipo.new(tipo_params)
		if @tipo.save
			redirect_to tipos_path, :notice=>"Tipo de usuário salvo com sucesso!"
		else
			render "new", :notice=>"Tipo de usuário não salvo!"
		end
	end
	
	def edit
		@tipo = Tipo.find(params[:id])
	end
	
	def update
		@tipo = Tipo.find(params[:id])
		if @tipo.update_attributes(tipo_params)
			redirect_to tipos_path, :notice=>"Tipo de usuário atualizado com sucesso!"
		else
			render "edit", :notice=>"Tipo de usuário não atualizado!"
		end
	end
	
	def destroy
	end
	
	def tipo_params
		params.require(:tipo).permit(:nome, :descricao, :grupo_id)
	end
end
