@[Link(ldflags: "#{__DIR__}/mecab.c -O2 `mecab-config --cflags --libs`")]
lib LibMecab

enum NodeType 
   # Normal node defined in the dictionary.
  MECAB_NOR_NODE = 0
   # Unknown node not defined in the dictionary.
  MECAB_UNK_NODE = 1
   # Virtual node representing a beginning of the sentence.
  MECAB_BOS_NODE = 2
   # Virtual node representing a end of the sentence.
  MECAB_EOS_NODE = 3

   # Virtual node representing a end of the N-best enumeration.
  MECAB_EON_NODE = 4
end

  struct Mecab_Node_T
    prev, next, enext, bnext, rpath, lpath : Mecab_Node_T*
    surface : LibC::Char*
    feature : LibC::Char*
    id : LibC::UInt
    length, rlength, rcAttr, lcAttr, posid: LibC::UShort
    char_type, stat, isbest : LibC::UChar
    alpha, beta, prob : LibC::Float
    wcost : LibC::Short
    cost : LibC::Long
  end
  fun to_node(input : LibC::Char*) : Mecab_Node_T*
end
