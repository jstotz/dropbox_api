module DropboxApi::Endpoints::FileProperties
  class Remove < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/properties/remove".freeze
    ResultType  = DropboxApi::Results::Base
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :properties_remove do |path, property_template_ids|
      perform_request(path: path, property_template_ids: property_template_ids)
    end
  end
end
