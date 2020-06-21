require "./lib/mecab"
require "./japanese_token"

# Provides bindings for tokenizing Japanese text using the
# Mecab library
module CrystalMecab
  VERSION = "0.1.0"

  def self.tokenize_japanese(text : String) : Array(CrystalMecab::JapaneseToken)
    curr_node = LibMecab.to_node(text.to_unsafe)
    tokens = Array(CrystalMecab::JapaneseToken).new

    while curr_node
      if curr_node == nil
        break
      end
      node_value = curr_node.value
  
      if node_value.stat == LibMecab::NodeType::MECAB_NOR_NODE.value || node_value.stat == LibMecab::NodeType::MECAB_UNK_NODE.value 
        lookup = String.new(node_value.feature).split(",")
        tokens.push(CrystalMecab::JapaneseToken.new(lookup[0], lookup[-3], lookup[-1]))
      end
      curr_node = node_value.next
    end
    tokens
  end
end
