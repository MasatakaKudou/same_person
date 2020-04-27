class UnifyFormat
  @@phone_number = ""
  def self.input_data
    puts "電話番号を入力してください"
    @@phone_number = gets
  end
  def self.unify_format
    puts "フォーマットした結果は、以下の通りです。"
    case @@phone_number
    when /0[7-9]0(-| |)[1-9]\d{3}(-| |)\d{4}/
      puts "携帯電話です"
    else
      puts "何にも一致しないです"
    end
  end
end

UnifyFormat.input_data
UnifyFormat.unify_format
