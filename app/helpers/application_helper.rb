module ApplicationHelper


  def link_to_add_fields(anchor_text, form_object, association)
    new_nested_object = form_object.object.send(association).new
    id                = new_nested_object.object_id

    field_html       = form_object.fields_for(association, new_nested_object, child_index: id) do |option|
                         render(association.to_s.singularize + "_fields", f: option)
                       end

    link_to(anchor_text, "javascript:void(0);", class: "add_fields", 
            data: {id: id, field_html: field_html.gsub("\n", "")})
  end


end