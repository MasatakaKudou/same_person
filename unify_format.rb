class PhoneNumberConvert
  def convert(phone_number)
    patterns = [
      /0\d(-| |)[2-9]\d{3}(-| |)\d{4}/, #固定電話 [0]
      /0\d{2}(-| |)[2-9]\d{2}(-| |)\d{4}/, #固定電話 [1]
      /0\d{3}(-| |)[2-9]\d(-| |)\d{4}/, #固定電話 [2]
      /0\d{4}(-| |)[2-9](-| |)\d{4}/, #固定電話 [3]
      /0[5789]0(-| |)[1-9]\d{3}(-| |)\d{4}/, #携帯電話 or IP電話 [4]
    ]
    for pattern in patterns do
      if phone_number.match(pattern)
        return phone_number.gsub(/-| |/, '')
      end
    end
    return nil
  end
end

phone_number = PhoneNumberConvert.new
p phone_number.convert('090-1111-1111') #携帯電話
p phone_number.convert('090 1111 1111') #携帯電話
p phone_number.convert('050-1111-1111') #IP電話
p phone_number.convert('050 1111 1111') #IP電話
p phone_number.convert('01-2111-1111') #固定電話
p phone_number.convert('01 2111 1111') #固定電話
p phone_number.convert('011-211-1111') #固定電話
p phone_number.convert('011 211 1111') #固定電話
p phone_number.convert('0111-21-1111') #固定電話
p phone_number.convert('0111 21 1111') #固定電話
p phone_number.convert('01111-2-1111') #固定電話
p phone_number.convert('01111 2 1111') #固定電話
p phone_number.convert('11-1111-1111') #nilパターン
p phone_number.convert('11 1111 1111') #nilパターン