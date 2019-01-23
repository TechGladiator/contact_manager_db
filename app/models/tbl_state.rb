class TblState < ApplicationRecord
    # validations
    validates_presence_of :id, :long_name, :short_name
end