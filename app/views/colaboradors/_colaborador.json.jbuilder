json.extract! colaborador, :id, :nome, :email, :cpf, :telefone, :dependentes, :data_nascimento, :data_admissao, :cargo, :competencia_id, :empresa_id, :created_at, :updated_at
json.url colaborador_url(colaborador, format: :json)
