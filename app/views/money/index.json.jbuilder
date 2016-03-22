json.array!(@money) do |money|
  json.extract! money, :id, :registered, :income, :outcome, :total
  json.url money_url(money, format: :json)
end
