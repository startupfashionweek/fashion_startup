class AddDefaultFeatureBoxes < ActiveRecord::Migration
  def change
    FeatureBox.create({ name: 'startup' })
    FeatureBox.create({ name: 'sponsor' })
    FeatureBox.create({ name: 'event' })
    FeatureBox.create({ name: 'contest' })
  end
end
