module DropboxApi::Endpoints
  module PropertyGroupsFormatter
    def format_property_groups(options)
      if options.key?(:include_property_groups) && !options[:include_property_groups].is_a?(Hash)
        template_ids = options.delete(:include_property_groups)
        template_ids = [template_ids] if template_ids.is_a?(String)
        options[:include_property_groups] = { '.tag' => 'filter_some', filter_some: template_ids }
      end
    end
  end
end
