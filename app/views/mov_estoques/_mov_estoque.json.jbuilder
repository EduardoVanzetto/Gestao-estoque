json.extract! mov_estoque, :id, :data, :quantidade, :pessoa_id, :operacao_id, :produto_id, :created_at, :updated_at
json.url mov_estoque_url(mov_estoque, format: :json)
