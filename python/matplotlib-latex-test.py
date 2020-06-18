import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np

# Test that we can format text using LaTeX.
# Be vervose, as this script is meant for testing in CI.
print("Setting Matplotlib RC parameters to TeX")
mpl.rc('text', usetex=True)
mpl.rc('font',**{'family':'serif'})

print("Activating NumPy")
x = np.arange(11)
y = x**2

print("Plotting data")
fig, ax = plt.subplots(1, 1)
ax.scatter(x, y, c='xkcd:scarlet')
ax.plot(x, y, c='xkcd:cerulean')

ax.set_xlabel("$x$")
ax.set_ylabel("$f(x) = x^2$")
ax.set_title(r"Text formatted with \LaTeX")

figname = "matplotlib-latex-test.png"
print(f"Saving figure {figname}")
fig.savefig(figname)
print("Script ended with success")
