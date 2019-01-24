class TblContact < ApplicationRecord
    # validation
    validates_presence_of :contact_id, :fname, :lname, :tbl_contact_type_id
end