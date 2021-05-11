ARCH=tutorial_simple_lstm
export CUDA_VISIBLE_DEVICES=0

DATA_PATH=./data-bin/iwslt15.tokenized.en-vi/
MODEL_PATH=./model/


fairseq-train ${DATA_PATH} \
--user-dir /workspace/test/model/ \
--arch $ARCH \
--optimizer adam --adam-betas '(0.9, 0.98)' --clip-norm 0.0 \
--encoder-dropout 0.2 --decoder-dropout 0.2 \
--optimizer adam --lr 0.005 --lr-shrink 0.5 \
--criterion RL \
--sample-beam 5 \
--max-tokens 12000 \
--save-dir $MODEL_PATH \
--seed 2048 \
--bpe subword_nmt \
--restore-file $MODEL_PATH/checkpoint_best.pt