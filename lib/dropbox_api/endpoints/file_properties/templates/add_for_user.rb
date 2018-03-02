module DropboxApi::Endpoints::FileProperties::Templates
  class AddForUser < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/templates/add_for_user".freeze
    ResultType  = DropboxApi::Results::FilePropertiesTemplate
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :templates_add_for_user do |name, description, fields|
      perform_request(name: name, description: description, fields: fields)
    end
  end
end
