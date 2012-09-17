class ChangeAnalysesColumnNameAgain < ActiveRecord::Migration
  def change
    rename_column :analyses, :analysis_type, :kind
  end
end
