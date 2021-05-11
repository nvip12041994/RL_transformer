# RL_transformer
Reinforcement learning for machine translation use FairSeq toolkit. 
Fairseq docker https://hub.docker.com/layers/nvip1204/fairseq/c600667/images/sha256-9dc185c204ccda8fde3f17b9ab72a7a05320c9c7f68bf41ec66ba78fc5e6fbe6?context=repo
Command to run docker image:
docker run --ipc=host --gpus all -it --rm -v /home/nvip/data/JAIST/luan_van/RL_transformer/:/workspace/test fairseq_c600667
