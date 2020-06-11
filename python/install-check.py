import numpy
import pandas
#import pydot
import sklearn
import torch
import warnings

with warnings.catch_warnings():
    warnings.filterwarnings("ignore", category=FutureWarning)
    import tensorflow

GREEN="\033[1;32m"
NOFORMAT="\033[0m"

def print_name_version(module):
    """ Print name and version of module
    """
    name = getattr(module, "__name__")
    version = getattr(module, "__version__")
    print(name + " version: " + GREEN + version + NOFORMAT)

for mod in [numpy, pandas, sklearn, tensorflow, torch]:
    print_name_version(mod)
