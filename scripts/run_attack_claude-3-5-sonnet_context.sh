start_time=$(date +%s)

python main.py \
    --target_model=claude-3-5-sonnet-20240620\
    --context_model=gpt-4o

end_time=$(date +%s)

echo "Time elapsed: for $(basename "$0") $((end_time - start_time)) seconds"
