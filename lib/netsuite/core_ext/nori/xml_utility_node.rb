module NetSuiteFileType
  def initialize(options, name, attributes = {})
    attributes['type'] = 'string' if attributes['type'] == 'file'

    super options, name, attributes
  end
end

Nori::XMLUtilityNode.prepend NetSuiteFileType
