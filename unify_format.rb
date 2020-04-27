class UnifyFormat
  @@phone_number = ""
  def self.input_data
    puts "電話番号を入力してください"
    @@phone_number = gets
  end
  def self.unify_format
    puts "フォーマットした結果は、以下の通りです。"
    puts @@phone_number
  end
end

UnifyFormat.input_data
UnifyFormat.unify_format
