import numpy
import pandas
#import pygraphviz
import sklearn
import torch
import warnings

with warnings.catch_warnings():
    warnings.filterwarnings("ignore", category=FutureWarning)
    import tensorflow

GREEN="\033[1;32m"
NOFORMAT="\033[0m"

def printer(key, val):
    """ Print '$key version: $val', $val is printed in GREEN
    """
    print(key + " version: " + GREEN + val + NOFORMAT)

printer("NumPy", numpy.__version__)
printer("Pandas", pandas.__version__)
printer("scikit-learn", sklearn.__version__)
printer("Tensorflow", tensorflow.__version__)
#printer("PyGraphviz", pygraphviz.__version__)
printer("PyTorch", torch.__version__)
