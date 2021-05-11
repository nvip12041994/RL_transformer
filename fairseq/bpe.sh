cat iwslt15/train.en iwslt15/train.vi | subword-nmt learn-bpe -s 10000 -o bpe_code
subword-nmt apply-bpe -c bpe_code < iwslt15/train.en > data_bpe/train.en
subword-nmt apply-bpe -c bpe_code < iwslt15/train.vi > data_bpe/train.vi
subword-nmt apply-bpe -c bpe_code < iwslt15/test.vi > data_bpe/test.vi
subword-nmt apply-bpe -c bpe_code < iwslt15/valid.vi > data_bpe/valid.vi
subword-nmt apply-bpe -c bpe_code < iwslt15/valid.en > data_bpe/valid.en
subword-nmt apply-bpe -c bpe_code < iwslt15/test.en > data_bpe/test.en
