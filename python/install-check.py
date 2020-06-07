import warnings
with warnings.catch_warnings():
    warnings.filterwarnings("ignore", category=FutureWarning)
    import tensorflow as tf

import torch

print(f"Tensorflow version: {tf.__version__}")
print(f"Torch version: {torch.__version__}")