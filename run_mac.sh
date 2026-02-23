#!/bin/bash
# Run script for Mac (CPU/MPS)
# Uses Python directly (single process) to avoid distributed complexity on Mac
# Reduced frame_num to 21 for faster test
# Uses t5_cpu to save memory
# Uses offload_model to save memory

python generate.py \
    --task i2v-A14B \
    --size 480*832 \
    --ckpt_dir ./lingbot-world-base-cam \
    --image examples/01/image.jpg \
    --offload_model True \
    --t5_cpu \
    --frame_num 21 \
    --prompt "A cinematic shot of a futuristic city" \
    --base_seed 42
