class ContactsController < ApplicationController
    # GET /contacts
    def index
        @contacts = TblContact.all
        json_response(@contacts)
    end
end