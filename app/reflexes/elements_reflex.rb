class ElementsReflex < ApplicationReflex

  def sort
    elements = JSON.parse(element.dataset[:elements])
    elements.each do |element|
      element_record = Element.find(element['id'])
      element_record.update(position: element['position'])
    end
    morph :nothing
  end

end
