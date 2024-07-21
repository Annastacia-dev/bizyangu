module DateHelper
  def formatted_date(date)
    day = date.strftime("%d").to_i
    suffix = case day % 10
             when 1 then (day % 100 == 11) ? 'th' : 'st'
             when 2 then (day % 100 == 12) ? 'th' : 'nd'
             when 3 then (day % 100 == 13) ? 'th' : 'rd'
             else 'th'
             end
    date.strftime("#{date.strftime('%a')} #{day}#{suffix} %B %Y")
  end
end
