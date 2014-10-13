PROVIDER = {
  "hotmail.fr" => "Come on ",
  "lewagon.org" => "Well done ",
  "gmail.com" => "",
  "live.com" => ""
}
MAIL_JOKES = {
  "hotmail.fr" => "aren't you born before 1973?",
  "lewagon.org" => "you're skilled and capable",
  "gmail.com" => "you're an average but modern person",
  "live.com" => "aren't you born before 1973?"
}

def mail_joke(email)
  name = email.match(/^(\w+.+)@/)
  domaine_name = email.match(/@([a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z)/)

  if email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i).nil?
    return fail ArgumentError
  elsif email.include?(domaine_name[1])
    return "#{PROVIDER[domaine_name[1]]}#{name[1].gsub(/\./, " ")}, #{MAIL_JOKES[domaine_name[1]]}"
  else
    return "Sorry #{name[1].gsub(/\./, " ")}, we don't know how to judge '#{domaine_name[1]}'"
  end
end