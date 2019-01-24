class TblContactInfoType < ApplicationRecord
    # model association
    has_many :tbl_contact_info
    
    # validations
    validates_presence_of :id, :name
end