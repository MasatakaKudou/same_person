class UnifyFormat
  def self.unify_format(phone_numbers)
    patterns = [
      /0[7-9]0(-| |)[1-9]\d{3}(-| |)\d{4}/
    ]
    phone_numbers.each {|phone_number|
      case phone_number
      when patterns[0]
        puts phone_number.gsub(/-| |/, '')
      else
        puts "何にも一致しないです"
      end
    }
  end
end

UnifyFormat.unify_format(['090-1931-6065', '090 1931 6065', '090~1931~6065'])