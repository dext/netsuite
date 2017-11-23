module NetSuite
  module Records
    class ExpenseReportExpense
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Namespaces::TranEmp

      fields :expense_date, :amount, :foreign_amount, :exchange_rate, :tax_1_amt, :ref_number, :memo, :receipt

      field :custom_field_list, CustomFieldList

      record_refs :category, :department, :location, :tax_code, :currency

      def initialize(attributes_or_record = {})
        case attributes_or_record
        when Hash
          initialize_from_attributes_hash(attributes_or_record)
        when self.class
          initialize_from_record(attributes_or_record)
        end
      end

      def initialize_from_record(record)
        self.attributes = record.send(:attributes)
      end

      def to_record
        rec = super
        if rec["#{record_namespace}:customFieldList"]
          rec["#{record_namespace}:customFieldList!"] = rec.delete("#{record_namespace}:customFieldList")
        end
        rec
      end
    end
  end
end
