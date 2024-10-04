start_time=$(date +%s)

python main.py \
    --target_model=qwen2-7b-instruct \
    --target_base_url=http://localhost:8006/v1

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"