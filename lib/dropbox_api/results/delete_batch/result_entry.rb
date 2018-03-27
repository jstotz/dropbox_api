module DropboxApi::Results::DeleteBatch
  class ResultEntry < DropboxApi::Results::Base
    def self.new(result_data)
      case result_data[".tag"]
      when "success"
        DropboxApi::Results::DeleteBatch::ResultData.new result_data
      when "failure"
        DropboxApi::Errors::DeleteError.build("Delete failed", result_data["failed"])
      else
        raise ArgumentError, "Unable to infer resource type for `#{result_data[".tag"]}`"
      end
    end
  end
end
