require "innodb/record_describer"


class Test_tbtest1_PRIMARY < Innodb::RecordDescriber
  type :clustered
  key "emp_no",         :INT, :NOT_NULL
  row "birth_date",     :MEDIUMINT, :NOT_NULL
  row "first_name",     "VARCHAR(14)", :NOT_NULL
  row "last_name",      "VARCHAR(16)", :NOT_NULL
  row "gender",         :TINYINT, :UNSIGNED, :NOT_NULL
  row "hire_date",      :MEDIUMINT, :NOT_NULL
  row "city_id",        :INT, :NULL
  row "CityName",      "VARCHAR(150)", :NULL
  row "CountryCode",    "CHAR(3)",:NULL
  row "UUID",			"CHAR(36)",:NULL
  row "linked",         :TINYINT, :NOT_NULL
  row "time_created",   :TIMESTAMP, :NOT_NULL
  row "time_update",   :TIMESTAMP, :NOT_NULL
end


class Test_tbtest1_idx_linked < Innodb::RecordDescriber
  type :secondary
  row "linked",         :TINYINT, :NOT_NULL
  key "emp_no",         :INT, :NOT_NULL
end

class Test_tbtest1_time_created_up < Innodb::RecordDescriber
  type :secondary
  row "time_created",   :TIMESTAMP, :NOT_NULL
  row "time_update",   :TIMESTAMP, :NOT_NULL
end
