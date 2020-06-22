class ElementsReflex < ApplicationReflex

  def sort
    elements = JSON.parse(element.dataset[:elements])
    elements.each do |element|
      element_record = Element.find(element['id'])
      element_record.update(position: element['position'])
    end
    # NOTE: This is a hack! Might break with future versions of StimulusReflex!
    @halted = true
  end

end
