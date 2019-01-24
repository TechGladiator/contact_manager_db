class RenameColumnTblContactInfoTypesType < ActiveRecord::Migration[5.2]
  def up
    # alter table tbl_contact_info_types
    execute <<-SQL
    ALTER TABLE tbl_contact_info_types
      RENAME type TO name;
    SQL
  end
end
