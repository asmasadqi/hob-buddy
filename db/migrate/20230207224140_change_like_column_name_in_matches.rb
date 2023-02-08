class ChangeLikeColumnNameInMatches < ActiveRecord::Migration[7.0]
  def change
    change_table :matches do |t|
      t.rename :like, :status # change columnname from like to status
    end
    change_column_default :matches, :status, from: false, to: nil # remove the default value constraint
    change_column :matches, :status, :integer, using: 'status::integer' # explicit casting to integer type from boolean
  end
end
