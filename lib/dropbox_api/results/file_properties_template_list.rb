module DropboxApi::Results
  class FilePropertiesTemplateList < Base
    def template_ids
      @data['template_ids']
    end
  end
end
