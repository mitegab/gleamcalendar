import ethiopian_calendar
import gleam/io

pub fn main() -> Nil {
  let date = ethiopian_calendar.new_date(2016, 1, 1)
  io.println(ethiopian_calendar.format(date))
}
