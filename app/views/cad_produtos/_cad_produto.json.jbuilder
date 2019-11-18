json.extract! cad_produto, :id, :nome, :unidade_id, :produto_id, :created_at, :updated_at
json.url cad_produto_url(cad_produto, format: :json)
