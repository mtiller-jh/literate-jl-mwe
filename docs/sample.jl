# # Adding Numbers
#

1 + 2

# # Plotting Results
#

using Plots

x = range(0, 10, length=100)
y = sin.(x)
plot(x, y)

