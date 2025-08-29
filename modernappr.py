import matplotlib.pyplot as plt

# Constants
years = 50
initial_year = 1945
initial_debt = 251.0  # billions
initial_gdp = 228.2   # billions
gdp_growth = 0.035    # 3.5% GDP growth
interest_rate = 0.02  # 2% debt interest
payment_rate = 0.03   # 3% of GDP

# Storage
debt_history = [initial_debt]
gdp = initial_gdp

# Simulation loop
debt = initial_debt
for _ in range(years):
    gdp *= (1 + gdp_growth)
    payment = gdp * payment_rate
    interest = debt * interest_rate
    debt = debt + interest - payment
    debt = max(debt, 0) 
    debt_history.append(debt)

# Plotting
plt.figure(figsize=(10, 6))
plt.plot(range(initial_year, initial_year + years + 1), debt_history, linewidth=2, color='darkred')
plt.title("Projected U.S. National Debt Payoff (1945–1995)\n")
plt.xlabel("Year")
plt.ylabel("Remaining Debt (Billion USD)")
plt.grid(True)
plt.tight_layout()
plt.show()
