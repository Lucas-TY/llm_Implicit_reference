start_time=$(date +%s)

python main.py \
    --target_model=llama-3-8b-chat-hf \
    --target_base_url=http://localhost:8002/v1 \
    --context_model=gpt-4o-mini

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"
