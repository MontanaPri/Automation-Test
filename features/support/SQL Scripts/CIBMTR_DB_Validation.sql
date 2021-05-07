select uid, mrn, Display_name, Date_of_birth, Date_of_death  from subject where mrn
in (
  '7008594',
  '7008600',
  '3254707',
  '7090079',
  '7338600',
  '3179916',
  '3179898',
  '7216749')
order by Display_name