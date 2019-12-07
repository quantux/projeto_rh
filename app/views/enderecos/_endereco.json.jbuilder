json.extract! endereco, :id, :rua, :cep, :bairro, :cidade, :estado, :complemento, :latitude, :longitude, :empresa_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
