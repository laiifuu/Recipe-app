class AddDefaultToMeasurementUnit < ActiveRecord::Migration[7.0]
  def change
    change_column_default :foods, :measurement_unit, from: nil, to: 'unit'
  end
end
