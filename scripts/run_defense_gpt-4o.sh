python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense SmoothLLM --mode generative
python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense SmoothLLM --mode amplify
python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense PerplexityFilter --mode generative
python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense PerplexityFilter --mode amplify
CUDA_VISIBLE_DEVICES=4 python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense EraseAndCheck --mode generative
CUDA_VISIBLE_DEVICES=5 python /home/lucaswu/workspace/llm_Implicit_reference/scripts/defense.py --defense EraseAndCheck --mode amplify
