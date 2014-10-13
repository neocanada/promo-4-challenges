def french_phone_number?(phone_number)
  # TODO: true or false?

#phone_number = nil

phone_number = phone_number.gsub(" ", "").gsub("-", "")

if phone_number.match(/^0[^0]\d{8}$/)
  return true
elsif phone_number.match(/^\+33[^0]\d{8}$/)
  return true
else
  return false
end

end