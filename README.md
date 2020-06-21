# crystal-mecab

This library provides bindings to the Mecab library for tokenzing japanese Text.

## Installation

1. Install Mecab using the instructions found in the following link:
  https://taku910.github.io/mecab/#install

  The site is in all Japanese but the instructions are pretty straightforward.

2. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     crystal-mecab:
       github: your-github-user/crystal-mecab
   ```

3. Run `shards install`

## Usage

```crystal
require "crystal-mecab"

CrystalMecab.tokenize_japanese("mecabは速くプログラムするし使いやすいしすごいソフトウェアですよ！").each do |t|
  puts t.to_s
end
#outputs
#
#
#
#
#
#
#
#
#
```

As of v0.1.0 the only available functionality is to tokenize Japanese text
into JapaneseToken structs which provide the word type (noun, verb, etc..)
and the reading in Kana which is useful for words in Kanji to get the reading.

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/crystal-mecab/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [your-name-here](https://github.com/your-github-user) - creator and maintainer
