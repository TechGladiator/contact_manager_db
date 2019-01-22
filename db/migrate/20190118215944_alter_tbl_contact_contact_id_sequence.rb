class AlterTblContactContactIdSequence < ActiveRecord::Migration[5.2]
    def up
        # alter sequence for tbl_contact
        execute <<-SQL
        ALTER SEQUENCE tbl_contact_contact_id_seq
            INCREMENT 1
            START 1001
            CACHE 1;
        SQL
    end

    def down
    end
end
