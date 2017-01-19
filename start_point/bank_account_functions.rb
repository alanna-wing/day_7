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
