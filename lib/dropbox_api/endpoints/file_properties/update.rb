module DropboxApi::Endpoints::FileProperties
  class Update < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/properties/update".freeze
    ResultType  = DropboxApi::Results::Base
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :properties_update do |path, update_property_groups|
      perform_request(path: path, update_property_groups: update_property_groups)
    end
  end
end
