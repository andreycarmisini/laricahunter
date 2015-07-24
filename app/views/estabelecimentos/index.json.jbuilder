json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :cnpj, :razaosocial, :nomefantasia, :logradouro, :numero, :complemento, :bairro, :cep, :fone1, :fone2, :fone3, :horaabertura, :horafechamento
  json.url estabelecimento_url(estabelecimento, format: :json)
end
