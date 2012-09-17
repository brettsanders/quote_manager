class ChangeAnalysisColumnName < ActiveRecord::Migration
  def change
    rename_column :analyses, :type, :analysis_type
  end
end
