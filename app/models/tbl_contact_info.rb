class TblContactInfo < ApplicationRecord
    # model association
    belongs_to :tbl_contact_info_type

    # validation
    validates_presence_of :id, :tbl_contact_info_type_id, :tbl_contact_contact_id, :value
end