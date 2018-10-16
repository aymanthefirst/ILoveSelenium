






def fill_in_commands_field(commands)
  find_commands_field.send_keys(commands)
end

def get_commands_field_value
  find_commands_field["value"]
end

practice_form.fill_in_commands_field("Ayman")
puts practice_form.get_commands_fi
