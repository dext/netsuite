module NetSuite
  module Records
    class VendorCurrencyList < Support::Sublist
      include Namespaces::ListRel

      sublist :vendor_currency, VendorCurrency
    end
  end
end
