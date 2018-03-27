module DropboxApi::Results
  class DeleteBatchLaunch < DropboxApi::Results::Base
    def self.new(result_data)
      case result_data[".tag"]
      when "other"
        :other
      when "async_job_id"
        DropboxApi::Results::DeleteBatch::AsyncJob.new result_data
      when "complete"
        DropboxApi::Results::DeleteBatch::Result.new result_data
      else
        raise NotImplementedError, "Unknown result type: #{result_data[".tag"]}"
      end
    end
  end
end
