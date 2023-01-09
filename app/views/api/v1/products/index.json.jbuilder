json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.description product.description
  json.price do
    json.amount humanized_money_with_symbol product.price
    json.subunit product.price_subunit
    json.currency = product.price_currency
  end

end
