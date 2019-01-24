class TblContactInfoType < ApplicationRecord
    # model association
    belongs_to :tbl_contact_info
    
    # validations
    validates_presence_of :id, :name
end