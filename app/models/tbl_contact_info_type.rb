class TblContactInfoType < ApplicationRecord
    # validations
    validates_presence_of :id, :type
end