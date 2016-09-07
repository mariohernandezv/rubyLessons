def validPhoneNumber(phoneNumber)
  #TODO Numero de formato "(123) 123-1234" 
  #phoneNumber[/\(\d{3}\)\s\d{3}-\d{4}/] == phoneNumber ? true : false
  !!phoneNumber[/\(\d{3}\)\s\d{3}-\d{4}/] 
end

def validate(email)
  # Enter your code here to validate an email addresses
  !!email[/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i]
end

