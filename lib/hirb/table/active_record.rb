class Hirb::Table::ActiveRecord < Hirb::Table::Object
  # items are activerecord objects, fields are any record attributes
  def self.run(items, options={})
    items = [items] unless items.is_a?(Array)
    options[:fields] ||= 
      begin
        fields = items.first.attribute_names
        fields.unshift(fields.delete('id')) if fields.include?('id')
        fields
      end
    super(items, options)
  end
end