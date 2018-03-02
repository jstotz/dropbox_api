module DropboxApi::Results
  class FilePropertiesTemplate < Base
    def name
      @data['name']
    end

    def description
      @data['description']
    end

    def type
      @data['type'].try(:[], '.tag')
    end

    def fields
      @data['fields']
    end

    def template_id
      @data['template_id']
    end
  end
end
