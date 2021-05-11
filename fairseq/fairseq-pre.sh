#!/bin/bash
TEXT=./data_bpe
fairseq-preprocess  --source-lang en --target-lang vi \
                    --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
                    --destdir data-bin/iwslt15.tokenized.en-vi \
		            --joined-dictionary \
                    --bpe subword_nmt \
                    --workers 20