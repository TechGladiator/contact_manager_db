class AlterTblAddressInfoSequence < ActiveRecord::Migration[5.2]
    def up
        # alter sequence for tbl_address_info
        execute <<-SQL
        ALTER SEQUENCE tbl_address_info_id_seq
            INCREMENT 1
            START 1001
            CACHE 1;
        SQL
    end

    def down
        DROP SEQUENCE tbl_address_info_id_seq
    end
end
