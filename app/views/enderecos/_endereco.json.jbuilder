json.extract! endereco, :id, :cep, :cidade_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
