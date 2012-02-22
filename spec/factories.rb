Factory.define :offer do |f|
  f.sequence(:name) { |n| "Offer#{n}" }
end

Factory.define :stock_card do |f|
  f.sequence(:sku) { |n| "M6093#{n}"}
  f.sequence(:name) { |n| "foo#{n}" }
  f.sequence(:photo) { |n| "M6093#{n}.jpg" }
end