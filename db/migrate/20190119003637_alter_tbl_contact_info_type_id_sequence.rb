class AlterTblContactInfoTypeIdSequence < ActiveRecord::Migration[5.2]
  def up
    # alter sequence for tbl_contact_info_type
    execute <<-SQL
    ALTER SEQUENCE tbl_contact_info_type_id_seq
        INCREMENT 1
        START 1001
        CACHE 1;
    SQL
end

def down
    DROP SEQUENCE tbl_contact_info_type_id_seq
  end
end
