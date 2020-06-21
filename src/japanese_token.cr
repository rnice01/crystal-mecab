class CrystalMecab::JapaneseToken
  getter word_type, original, kana

  def initialize(@word_type : String, @original : String, @kana : String)
  end
  
  def to_s
    "[word_type: #{@word_type}, original: #{@original}, kana: #{@kana}]"
  end
end