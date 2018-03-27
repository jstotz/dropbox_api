module DropboxApi::Endpoints::Files
  class DeleteBatchCheck < DropboxApi::Endpoints::Rpc
    Method      = :post
    Path        = "/2/files/delete_batch/check".freeze
    ResultType  = DropboxApi::Results::DeleteBatchJobStatus
    ErrorType   = DropboxApi::Errors::PollError

    # Returns the status of an asynchronous job for delete_batch. If success, it 
    # returns list of result for each entry.
    #
    # @param job_id [String] Id of the asynchronous job. This is the value of
    #   a response returned from the method that launched the job.
    # @return The current status of the job.
    add_endpoint :delete_batch_check do |job_id|
      perform_request({
        :async_job_id => job_id
      })
    end
  end
end

