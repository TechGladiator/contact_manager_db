class AlterTblStatesIdSequence < ActiveRecord::Migration[5.2]
  def up
    # create sequence for tbl_states
    execute <<-SQL
    ALTER SEQUENCE tbl_states_id_seq
        INCREMENT 1
        START 1001
        CACHE 1;
    SQL
end

def down
    DROP SEQUENCE tbl_states_id_seq
  end
end
