class CrystalMecab::JapaneseToken
  getter word_type, original, kana

  def initialize(@word_type : String, original : String, kana : String)
  end
end