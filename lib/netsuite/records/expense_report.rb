module NetSuite
  module Records
    class ExpenseReport
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::TranEmp

      actions :add, :initialize, :update, :upsert, :get

      fields :amount, :tran_date, :due_date, :accounting_approval

      field :custom_field_list, CustomFieldList
      field :expense_list, ExpenseReportExpenseList

      read_only_fields :status

      record_refs :entity, :subsidiary, :klass, :department, :location

      attr_reader   :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end
    end
  end
end
