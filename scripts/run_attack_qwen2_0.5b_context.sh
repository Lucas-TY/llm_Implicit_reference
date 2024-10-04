start_time=$(date +%s)

python main.py \
    --target_model=qwen2-0.5b-instruct \
    --target_base_url=http://localhost:8008/v1 \
    --context_model=gpt-4o

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"


