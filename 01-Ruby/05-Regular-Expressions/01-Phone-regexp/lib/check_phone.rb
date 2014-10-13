def french_phone_number?(phone_number)
  phone_number = phone_number.gsub(/\s|-/, "")

  if phone_number.match(/^(0|\+33)[1-9]\d{8}$/)
    return true
  else
    return false
  end
end