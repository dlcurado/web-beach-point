require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
 test "usuario tem que ter todos os campos preenchidos" do
  @usuario = Usuario.new  
  assert_not @usuario.save
 end
 
 test "usuario nao salva so nome" do
  @usuario = Usuario.new
  @usuario.nome = "Usuario 1"
  assert_not @usuario.save
 end

 test "usuario nao salva so email" do
  @usuario = Usuario.new
  @usuario.email = "dlcurado@gmail.com"
  assert_not @usuario.save
 end
 
 test "usuario nao salva so senha" do
  @usuario = Usuario.new
  @usuario.senha = "Senha123"
  assert_not @usuario.save
 end


 test "usuario salva com todos os dados preenchidos" do
  @usuario = Usuario.new
  @usuario.nome = "Usuario 1"
  @usuario.email = "dlcurado@gmail.com"
  @usuario.senha = "Senha123"
  @usuario.tipo_id = 3 # Precisa pegar o ID corretamente do banco
  assert @usuario.save
 end

end
