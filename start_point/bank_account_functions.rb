def number_of_bank_accounts( accounts )
  return accounts.count()
end

def first_bank_account_holder( accounts )
  return accounts.first()["holder_name"]
end

def bank_account_owner_names( accounts )
  bank_account_owner_names = []
  for account in accounts
    bank_account_owner_names.push(account["holder_name"])
  end
  return bank_account_owner_names
end

def total_cash_in_bank( accounts )
  total_cash = 0
  for account in accounts
    total_cash += account["amount"]
  end
  return total_cash
end

def total_business_cash_in_bank( accounts )
  total_cash_business = 0
  for account in accounts
    if account["type"] == "business"
      total_cash_business += account["amount"]
    end
  end
  return total_cash_business
end

def average_bank_account_value( accounts )
  average_account_value = 0
  for account in accounts
    average_account_value += account["amount"]
  end
  return average_account_value / accounts.count()
end

#created variable as counter and add 1 for each high risk account
# def find_accounts_by_risk( accounts, risk_level )
#   high_risk_accounts = 0
#   for account in accounts
#     if account["stats"]["risk_level"] == "high"
#       high_risk_accounts += 1
#     end
#   end
#   return high_risk_accounts
# end

#pushed high risk accounts into empty array and called count method on variable
def find_accounts_by_risk( accounts, risk_level )
  high_risk_accounts = []
  for account in accounts
    if account["stats"]["risk_level"] == "high"
      high_risk_accounts.push(account)
    end
  end
  return high_risk_accounts.length()
end

def name_of_largest_value_account_holder( accounts, amount )
  largest_value_account_holder = accounts[0]
  for account in accounts
    if account["amount"] > largest_value_account_holder["amount"]
      largest_value_account_holder = account
    end
  end
  return largest_value_account_holder["holder_name"]
end

def name_of_largest_personal_account_holder( accounts, type )
  largest_personal_account_holder = accounts[0]
  for account in accounts
    if account["amount"] > largest_personal_account_holder["amount"] && account["type"] == "personal"
      largest_personal_account_holder = account
    end
  end
  return largest_personal_account_holder["holder_name"]
end

def name_of_largest_business_account_holder( accounts, type )
  largest_business_account_holder = accounts[0]
  for account in accounts
    if account["amount"] > largest_business_account_holder["amount"] && account["type"] == "business"
      largest_business_account_holder = account
    end
  end
  return largest_business_account_holder["holder_name"]
end
