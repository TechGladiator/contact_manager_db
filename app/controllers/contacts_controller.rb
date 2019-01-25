class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :update, :destroy]

    # GET /contacts
    def index
        @contacts = TblContact.all
        json_response(@contacts)
    end

    # POST /contacts
    def create
        @contact = TblContact.create!(contact_params)
        json_response(@contact, :created)
    end

    # GET /contacts/:id
    def show
        json_response(@contact)
    end

    private

    def contact_params
        # whitelist params
        params.permit(:fname, :mname, :lname, :title, :tbl_contact_type_id, :tbl_import_id)
    end

    def set_contact
        @contact = TblContact.find(params[:id])
    end
end