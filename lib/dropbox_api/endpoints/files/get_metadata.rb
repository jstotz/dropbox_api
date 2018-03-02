module DropboxApi::Endpoints::Files
  class GetMetadata < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/files/get_metadata".freeze
    ResultType  = DropboxApi::Metadata::Resource
    ErrorType   = DropboxApi::Errors::GetMetadataError

    include DropboxApi::Endpoints::OptionsValidator
    include DropboxApi::Endpoints::PropertyGroupsFormatter

    # Returns the metadata for a file or folder.
    #
    # Note: Metadata for the root folder is unsupported.
    #
    # If you request the `media_info` attribute, note that it could be set to
    # `:pending` or `nil`.
    #
    # @param path [String] The path of a file or folder on Dropbox.
    # @option include_media_info [Boolean] If `true`, FileMetadata.media_info
    #   is set for photo and video. The default for this field is `false`.
    # @option include_deleted [Boolean] If `true`, DeletedMetadata will be
    #   returned for deleted file or folder, otherwise LookupError.not_found
    #   will be returned. The default for this field is False.
    # @option include_property_groups [Array or String] If included, will
    #   include specified property groups in results. We auto-format this
    #   so either a String or list of strings will work.
    add_endpoint :get_metadata do |path, options = {}|
      validate_options([:include_media_info, :include_deleted, :include_property_groups], options)
      format_property_groups(options)

      perform_request(options.merge({
        :path => path
      }))
    end
  end
end
