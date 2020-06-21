#include <mecab.h>


mecab_node_t* to_node(char* input) {
  mecab_t *mecab;
  const mecab_node_t *node;
  const char *result = "";

char *argv[] = {""};
int argc = sizeof(argv) / sizeof(char*) - 1;
  // Create tagger object
  mecab = mecab_new(argc, argv);

  // Gets node object
  node = mecab_sparse_tonode(mecab, input);

  return (mecab_node_t*)node;
}