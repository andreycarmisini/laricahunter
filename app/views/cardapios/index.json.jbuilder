json.array!(@cardapios) do |cardapio|
  json.extract! cardapio, :id, :preco, :descricao, :foto, :produto_id, :categoria_id
  json.url cardapio_url(cardapio, format: :json)
end
