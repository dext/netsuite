module NetSuite
  module Records
    class AttachBasicReference
      include Support::Fields
      include Support::Records
      include Support::RecordRefs
      include Support::Actions
      include Namespaces::PlatformCore

      actions :attach

      record_refs :attach_to, :attached_record

      attr_reader   :internal_id, :type
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        @type        = attributes.delete(:type) || attributes.delete(:@type) || attributes.delete(:"@xsi:type")
        @attributes  = attributes
      end

      def method_missing(m, *args, &block)
        if attributes.keys.map(&:to_sym).include?(m.to_sym)
          attributes[m.to_sym]
        else
          super
        end
      end

      def to_attributes!(hash, kname, v)
        if v.kind_of?(NetSuite::Records::RecordRef) && v.type
          hash[:attributes!] ||= {}
          hash[:attributes!][kname] ||= {}
          hash[:attributes!][kname]['xsi:type'] =  v.record_type
        end

        super
      end
    end
  end
end
