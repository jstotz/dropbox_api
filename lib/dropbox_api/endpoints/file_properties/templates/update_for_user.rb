module DropboxApi::Endpoints::FileProperties::Templates
  class UpdateForUser < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/templates/update_for_user".freeze
    ResultType  = DropboxApi::Results::FilePropertiesTemplate
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :templates_update_for_user do |template_id, name = nil, description = nil, add_fields = nil|
      options = { template_id: template_id, name: name, description: description, add_fields: add_fields }
      perform_request(options)
    end
  end
end
