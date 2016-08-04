def validPhoneNumber(phoneNumber)
  #TODO Numero de formato "(123) 123-1234" 
  #phoneNumber[/\(\d{3}\)\s\d{3}-\d{4}/] == phoneNumber ? true : false
  !!phoneNumber[/\(\d{3}\)\s\d{3}-\d{4}/] 
end