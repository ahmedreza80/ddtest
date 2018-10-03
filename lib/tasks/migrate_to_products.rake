# run via: rails migrate_to_products
task :migrate_to_products => :environment do
  MigrateToProducts.new(Bench.all).with_properties(
    :coupon,
    :brand,
    :color,
    :warrenty,
    :material,
    :height,
    :width,
    :depth,
    :dimension
  )
end

class MigrateToProducts
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def with_properties(*properties)
    model.find_in_batches do |records|
      records.each do |record|
        # filter properties that have a value
        props = properties
          .zip(properties.map { |prop| record.read_attribute(prop) })
          .select { |title, value| value.present? }
          .map do |title, value|
              ProductProperty.new(title: title.to_s.titleize, value: value)
          end

        product = Product.create!(
          title: record.title,
          description: record.description,
          sdescription: record.sdescription,
          price: record.price,
          offerprice: record.offerprice,
          properties: props
        )
      end
    end
  end
end
