module DropboxApi::Endpoints::FileProperties::Templates
  class GetForUser < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/templates/get_for_user".freeze
    ResultType  = DropboxApi::Results::FilePropertiesTemplate
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :templates_get_for_user do |template_id|
      perform_request(template_id: template_id)
    end
  end
end
