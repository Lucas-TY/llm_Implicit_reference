start_time=$(date +%s)

python main.py \
    --target_model=llama-3-70b-chat-hf \
    --target_base_url=http://localhost:9001/v1 

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"