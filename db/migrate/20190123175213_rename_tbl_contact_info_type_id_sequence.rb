class RenameTblContactInfoTypeIdSequence < ActiveRecord::Migration[5.2]
  def up
    # alter table tbl_contact_info_types
    execute <<-SQL
    ALTER SEQUENCE tbl_contact_info_type_id_seq
      RENAME TO tbl_contact_info_types_id_seq;
    SQL
  end

  def down
    DROP SEQUENCE tbl_contact_info_types_id_seq
  end
end
