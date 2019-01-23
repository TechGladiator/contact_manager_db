class AlterTblContactInfoType < ActiveRecord::Migration[5.2]
  def up
    # alter table tbl_contact_info_type
    execute <<-SQL
    ALTER TABLE tbl_contact_info_type
      RENAME to tbl_contact_info_types;
    SQL
  end

  def down
    DROP TABLE tbl_contact_info_types
  end
end
