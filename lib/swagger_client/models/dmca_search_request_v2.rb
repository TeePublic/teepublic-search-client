=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module SwaggerClient
  # User search request.
  class DmcaSearchRequestV2
    # Search terms.
    attr_accessor :search_terms

    attr_accessor :teepublic_approved

    attr_accessor :teepublic_unapproved

    # Artist Id
    attr_accessor :artist_id

    # Number of results to return per page.
    attr_accessor :per_page

    # Page offset to fetch.
    attr_accessor :page_offset

    # Sort order
    attr_accessor :sort

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'search_terms' => :'search_terms',
        :'teepublic_approved' => :'teepublic_approved',
        :'teepublic_unapproved' => :'teepublic_unapproved',
        :'artist_id' => :'artist_id',
        :'per_page' => :'per_page',
        :'page_offset' => :'page_offset',
        :'sort' => :'sort'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'search_terms' => :'String',
        :'teepublic_approved' => :'BOOLEAN',
        :'teepublic_unapproved' => :'BOOLEAN',
        :'artist_id' => :'Integer',
        :'per_page' => :'Integer',
        :'page_offset' => :'Integer',
        :'sort' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'search_terms')
        self.search_terms = attributes[:'search_terms']
      end

      if attributes.has_key?(:'teepublic_approved')
        self.teepublic_approved = attributes[:'teepublic_approved']
      else
        self.teepublic_approved = true
      end

      if attributes.has_key?(:'teepublic_unapproved')
        self.teepublic_unapproved = attributes[:'teepublic_unapproved']
      else
        self.teepublic_unapproved = false
      end

      if attributes.has_key?(:'artist_id')
        self.artist_id = attributes[:'artist_id']
      end

      if attributes.has_key?(:'per_page')
        self.per_page = attributes[:'per_page']
      else
        self.per_page = 36
      end

      if attributes.has_key?(:'page_offset')
        self.page_offset = attributes[:'page_offset']
      else
        self.page_offset = 1
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      else
        self.sort = 'relevance'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      sort_validator = EnumAttributeValidator.new('String', ['relevance', 'popular', 'newest'])
      return false unless sort_validator.valid?(@sort)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort Object to be assigned
    def sort=(sort)
      validator = EnumAttributeValidator.new('String', ['relevance', 'popular', 'newest'])
      unless validator.valid?(sort)
        fail ArgumentError, 'invalid value for "sort", must be one of #{validator.allowable_values}.'
      end
      @sort = sort
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          search_terms == o.search_terms &&
          teepublic_approved == o.teepublic_approved &&
          teepublic_unapproved == o.teepublic_unapproved &&
          artist_id == o.artist_id &&
          per_page == o.per_page &&
          page_offset == o.page_offset &&
          sort == o.sort
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [search_terms, teepublic_approved, teepublic_unapproved, artist_id, per_page, page_offset, sort].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
