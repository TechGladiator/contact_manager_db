class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :update, :destroy]

    # GET /contacts
    def index
        @contacts = TblContact.all
        json_response(@contacts)
    end

    # GET /contacts/:id
    def show
        json_response(@contact)
    end

    private

    def set_contact
        @contact = TblContact.find(params[:id])
    end
end