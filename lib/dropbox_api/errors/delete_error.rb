module DropboxApi::Errors
  class DeleteError < BasicError
    ErrorSubtypes = {
      :path_lookup => LookupError,
      :path_write => WriteError,
      :too_many_write_operations => TooManyWriteOperationsError,
      :too_many_files => TooManyFilesError
    }.freeze
  end
end
