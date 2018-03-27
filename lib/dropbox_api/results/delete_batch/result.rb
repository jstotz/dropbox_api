module DropboxApi::Results::DeleteBatch
  class Result < DropboxApi::Results::Base
    def entries
      @entries ||= @data["entries"].map do |entry|
        DropboxApi::Results::DeleteBatch::ResultEntry.new entry
      end
    end
  end
end
