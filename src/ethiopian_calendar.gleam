import gleam/int

pub type EthiopianDate {
  EthiopianDate(year: Int, month: Int, day: Int)
}

pub fn new_date(year: Int, month: Int, day: Int) -> EthiopianDate {
  EthiopianDate(year:, month:, day:)
}

pub fn format(date: EthiopianDate) -> String {
  case date {
    EthiopianDate(year, month, day) ->
      "EthiopianDate("
      <> int.to_string(year)
      <> ", "
      <> int.to_string(month)
      <> ", "
      <> int.to_string(day)
      <> ")"
  }
}

pub fn validate(date: EthiopianDate) -> Bool {
  case date {
    EthiopianDate(year, month, day) ->
      month >= 1 && month <= 13 && day >= 1 && day <= 30
  }
}

pub fn is_leap_year(year: Int) -> Bool {
  //Ethiopian leap year happens every 4 yrs 
  //(simplified rule for now)
  year % 4 == 3
}

pub fn month_length(year: Int, month: Int) -> Int {
  case month {
    13 -> {
      case is_leap_year(year) {
        True -> 6
        False -> 5
      }
    }
    _ -> 30
  }
}

pub fn hello() -> String {
  "Ethiopian calendar module is ready"
}
