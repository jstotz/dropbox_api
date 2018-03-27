module DropboxApi::Endpoints::Files
  class DeleteBatch < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/files/delete_batch".freeze
    ResultType  = DropboxApi::Results::DeleteBatchLaunch
    ErrorType   = nil

    # Delete multiple files/folders at once.
    #
    # This route is asynchronous, which returns a job ID immediately and runs 
    # the delete batch asynchronously. Use delete_batch/check to check the job 
    # status.
    #
    # @param path [Array] Entries in the user's Dropbox to delete.
    add_endpoint :delete_batch do |path|
      perform_request({
        :entries => entries
      })
    end
  end
end
