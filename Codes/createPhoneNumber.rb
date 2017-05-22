def createPhoneNumber(numbers)
  #TODO
  # "(#{n[0..2]}) #{n[3..5]}-#{n[6..9]}"
  "(" + numbers[0..2].join + ") " + numbers[3..5].join + "-" + numbers[6..10].join
end

