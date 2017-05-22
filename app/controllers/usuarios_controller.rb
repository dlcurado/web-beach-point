class UsuariosController < ApplicationController
	# *********** VISUALIZACAO ***********
	def index
		@usuarios = Usuario.all
	end
	
	def show
		@usuario = Usuario.find(params[:id])
	end
	
	
	# *********** CRIACAO ***********
	def new
		@usuario = Usuario.new
	end
	
	def create
		@usuario = Usuario.new(usuario_param)
		if @usuario.save
			redirect_to usuarios_path, :notice=>"Usuário cadastrado com sucesso!"			
		else
			render "new", :notice=>"Falha ao criar usuário!"			
		end
	end
	
	# *********** EDICAO ***********
	def edit
		@usuario = Usuario.find(params[:id])
	end
	
	def update
		@usuario = Usuario.find(params[:id])
		if @usuario.update_attribute(usuario_param)
			redirect_to usuarios_path, :notice=>"Usuário atualizado com sucesso!"			
		else
			render "edit", :notice=>"Falha ao atualizar usuário!"			
		end
	end
	
	# *********** EXCLUSAO ***********
	def destroy
	end
	
	def usuario_param
		params.require(:usuario).permit(:nome, :email, :senha, :tipo_id)
	end
end
