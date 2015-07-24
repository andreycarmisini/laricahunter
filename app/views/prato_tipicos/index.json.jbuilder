json.array!(@prato_tipicos) do |prato_tipico|
  json.extract! prato_tipico, :id, :produtos_id, :municipios_id
  json.url prato_tipico_url(prato_tipico, format: :json)
end
