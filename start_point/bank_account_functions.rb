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

end
