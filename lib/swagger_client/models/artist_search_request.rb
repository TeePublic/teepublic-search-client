=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.46

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module SwaggerClient
  # User search request.
  class ArtistSearchRequest
    # Search terms.
    attr_accessor :artist_query

    # Sort order
    attr_accessor :sort

    # product filter
    attr_accessor :canvases

    # Number of results to return per page.
    attr_accessor :per_page

    # Page offset to fetch.
    attr_accessor :page_offset

    # whether to return explanation of search results.
    attr_accessor :explain

    # whether to return elasticsearch explanation of search results.
    attr_accessor :es_explain

    # AB test bucket.
    attr_accessor :bucket

    # whether we include mature designs in search results.
    attr_accessor :safe_search

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
        :'artist_query' => :'artist_query',
        :'sort' => :'sort',
        :'canvases' => :'canvases',
        :'per_page' => :'per_page',
        :'page_offset' => :'page_offset',
        :'explain' => :'explain',
        :'es_explain' => :'es_explain',
        :'bucket' => :'bucket',
        :'safe_search' => :'safe_search'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'artist_query' => :'String',
        :'sort' => :'String',
        :'canvases' => :'Array<String>',
        :'per_page' => :'Integer',
        :'page_offset' => :'Integer',
        :'explain' => :'BOOLEAN',
        :'es_explain' => :'BOOLEAN',
        :'bucket' => :'String',
        :'safe_search' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'artist_query')
        self.artist_query = attributes[:'artist_query']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      else
        self.sort = 'relevance'
      end

      if attributes.has_key?(:'canvases')
        if (value = attributes[:'canvases']).is_a?(Array)
          self.canvases = value
        end
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

      if attributes.has_key?(:'explain')
        self.explain = attributes[:'explain']
      else
        self.explain = false
      end

      if attributes.has_key?(:'es_explain')
        self.es_explain = attributes[:'es_explain']
      else
        self.es_explain = false
      end

      if attributes.has_key?(:'bucket')
        self.bucket = attributes[:'bucket']
      end

      if attributes.has_key?(:'safe_search')
        self.safe_search = attributes[:'safe_search']
      else
        self.safe_search = true
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
          artist_query == o.artist_query &&
          sort == o.sort &&
          canvases == o.canvases &&
          per_page == o.per_page &&
          page_offset == o.page_offset &&
          explain == o.explain &&
          es_explain == o.es_explain &&
          bucket == o.bucket &&
          safe_search == o.safe_search
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [artist_query, sort, canvases, per_page, page_offset, explain, es_explain, bucket, safe_search].hash
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
