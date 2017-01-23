require_relative('../bank_account_functions')
require_relative('../bank_data')
require('minitest/autorun')

class BankTest < MiniTest::Test

  def setup
    @accounts = ACCOUNTS
  end

  def test_total_number_of_accounts
    bank_accounts_count = number_of_bank_accounts(@accounts)
    assert_equal(8,bank_accounts_count)
  end

  def test_first_account_holder
    first_account = first_bank_account_holder(@accounts)
    assert_equal("Jay", first_account)
  end

  def test_bank_holder_names
    account_names = bank_account_owner_names(@accounts)
    expected = ["Jay","Rick","Keith","Valerie","Zsolt","Beth","Tony","Sandy"]
    assert_equal(expected, account_names)
  end

  def test_total_cash_in_bank
    total_cash = total_cash_in_bank(@accounts)
    assert_equal(7311, total_cash)
  end

  def test_total_cash_in_business_accounts
    total_cash_business = total_business_cash_in_bank(@accounts)
    assert_equal(7055,total_cash_business)
  end

  def test_average_bank_account_value
    average_value = average_bank_account_value(@accounts)
    assert_equal(913,average_value)
  end

  def test_find_accounts_by_risk
    accounts_by_risk = find_accounts_by_risk(@accounts, "high")
    assert_equal(3, accounts_by_risk)
  end

#homework
  def test_name_of_largest_value_account_holder
    largest_value_account_holder = name_of_largest_value_account_holder(@accounts, 4500)
    assert_equal("Sandy", largest_value_account_holder)
  end

  def test_name_of_largest_personal_account_holder
    largest_personal_account_holder = name_of_largest_personal_account_holder(@accounts, "personal")
    assert_equal("Tony", largest_personal_account_holder)
  end

  def test_name_of_largest_business_account_holder
    largest_business_account_holder = name_of_largest_business_account_holder(@accounts, "business")
    assert_equal("Sandy", largest_business_account_holder)
  end

end
