class UnifyFormat
  def self.unify_format(phone_numbers)
    patterns = [
      /0\d(-| |)[2-9]\d{3}(-| |)\d{4}/, #固定電話 [0]
      /0\d{2}(-| |)[2-9]\d{2}(-| |)\d{4}/, #固定電話 [1]
      /0\d{3}(-| |)[2-9]\d(-| |)\d{4}/, #固定電話 [2]
      /0\d{4}(-| |)[2-9](-| |)\d{4}/, #固定電話 [3]
      /0[5789]0(-| |)[1-9]\d{3}(-| |)\d{4}/, #携帯電話 or IP電話 [4]
    ]
    phone_numbers.each {|phone_number|
      case phone_number
      when patterns[0], patterns[1], patterns[2], patterns[3], patterns[4]
        puts phone_number.gsub(/-| |/, '')
      else
        puts "何にも一致しないです"
      end
    }
  end
end

UnifyFormat.unify_format(
  [
    '090-1111-1111', '090 1111 1111', #携帯電話 [0]
    '050-1111-1111', '050 1111 1111', #IP電話 [1]
    '01-2111-1111', '01 2111 1111', #固定電話 [2]
    '011-211-1111', '011 211 1111', #固定電話 [3]
    '0111-21-1111', '0111 21 1111', #固定電話 [4]
    '01111-2-1111', '01111 2 1111' #固定電話 [5]
  ]
)