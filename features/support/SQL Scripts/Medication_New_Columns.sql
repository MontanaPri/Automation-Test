select  s.mrn,s.First_name,s.Last_name,em.Top_Therapeutic_Cat,em.Therapeutic_Cat,em.Non_Formulary_Info,em.Event_Name,em.*
from btris.dbo.event_medication em
  join btris.dbo.Subject s
    on s.uid=em.Subject_GUID
       and  s.MRN='3719157'
       and Event_name in ('Docusate Sodium 100 mg capsule','Oxycodone/Acetaminophen 5 mg/325 mg tablet')