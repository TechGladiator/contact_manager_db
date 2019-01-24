class RenameTblContact < ActiveRecord::Migration[5.2]
  def up
    # alter table tbl_contact
    execute <<-SQL
    ALTER TABLE tbl_contact
      RENAME to tbl_contacts;
    ALTER SEQUENCE tbl_contact_contact_id_seq
      RENAME TO tbl_contacts_contact_id_seq;
    SQL
  end

  def down
    DROP TABLE tbl_contacts
    DROP SEQUENCE tbl_contacts_contact_id_seq
  end
end
