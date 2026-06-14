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

pub fn hello() -> String {
  "Ethiopian calendar module is ready"
}
