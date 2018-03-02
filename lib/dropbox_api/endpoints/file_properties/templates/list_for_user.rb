module DropboxApi::Endpoints::FileProperties::Templates
  class ListForUser < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/templates/list_for_user".freeze
    ResultType  = DropboxApi::Results::FilePropertiesTemplateList
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :templates_list_for_user do
      perform_request(nil)
    end
  end
end
