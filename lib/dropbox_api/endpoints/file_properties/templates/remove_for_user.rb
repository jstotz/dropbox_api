module DropboxApi::Endpoints::FileProperties::Templates
  class RemoveForUser < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/templates/remove_for_user".freeze
    ResultType  = DropboxApi::Results::Base
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :templates_remove_for_user do |template_id|
      perform_request(template_id: template_id)
    end
  end
end
