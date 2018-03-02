module DropboxApi::Endpoints::FileProperties
  class Overwrite < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/file_properties/properties/overwrite".freeze
    ResultType  = DropboxApi::Results::Base
    ErrorType   = DropboxApi::Errors::FilePropertiesError

    add_endpoint :properties_overwrite do |path, property_groups|
      perform_request(path: path, property_groups: property_groups)
    end
  end
end
