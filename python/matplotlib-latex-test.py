import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import sys

GREEN = "\033[1;32m"
RED = "\033[1;91m"
NOFORMAT = "\033[0m"
OK = "[" + GREEN + "OK" + NOFORMAT + "] "
ERR = "[" + RED + "ERROR" + NOFORMAT + "] "

# Test that we can format text using LaTeX.
# Be vervose, as this script is meant for testing in CI.
try: 
    print(OK + "Setting Matplotlib RC parameters to TeX")
    mpl.rc('text', usetex=True)
    mpl.rc('font',**{'family':'serif'})

    print(OK + "Activating NumPy")
    x = np.arange(11)
    y = x**2

    print(OK + "Plotting data")
    fig, ax = plt.subplots(1, 1)
    ax.scatter(x, y, c='xkcd:scarlet')
    ax.plot(x, y, c='xkcd:cerulean')

    ax.set_xlabel("$x$")
    ax.set_ylabel("$f(x) = x^2$")
    ax.set_title(r"Text formatted with \LaTeX")

    figname = "matplotlib-latex-test.png"
    print(OK + f"Saving figure {figname}")
    fig.savefig(figname)
    print(OK + "Script ended with success!")

except:
    ex = sys.exc_info()
    print(ERR, ex[0], ex[1])
    sys.exit(1)
