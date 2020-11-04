def withdraw_money(current_balance, amount):
    if (current_balance >= amount):
        current_balance = current_balance - amount
        return current_balance

balance = withdraw_money(400, 110)
if (balance <= 50):
    print ("We need to make a deposit Availale Balance :", balance)
else:
    print ("Balance available:", balance )

balance = withdraw_money(400, 170)
if (balance <= 50):
    print ("We need to make a deposit Availale Balance :", balance)
else:
    print ("Balance available:", balance )
balance = withdraw_money(400, 370)

if (balance <= 50):
    print ("We need to make a deposit Availale Balance :", balance)
else:
    print ("Balance available:", balance )
            