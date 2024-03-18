HF_ENDPOINT=https://hf-mirror.com accelerate launch --multi_gpu --num_processes 4 --gpu_ids 4,5,6,7 --main_process_port 29503 train.py \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --model_name_or_path TinyLlama/TinyLlama-1.1B-Chat-v1.0 \
    --preprocessing_num_workers 32 \
    --per_device_train_batch_size 8    \
    --block_size 500 \
    --num_train_epochs 3\
    --output_dir ./outputs/debug_llama1B \
    --with_tracking