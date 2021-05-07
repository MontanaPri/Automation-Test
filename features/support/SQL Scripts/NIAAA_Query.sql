Select top 8000 ps.Protocol_number as 'Protocol Number', s.mrn, s.Display_name as 'Subject Name', eg.Primary_date_time as 'Assessment Date',
                eg.event_name as 'Assessment',event_id as 'Form ID', og.Observation_Name as 'Observation',og.Observation_value_text as 'Value', og.observation_value_name as 'Key',
  og.Appl_Source_CD,og.Domain_Concept, Event_Name_CONCEPT
from subject s join
  Event_General eg on s.uid = eg.Subject_GUID
  join observation_general og on og.Event_GUID = eg.Event_GUID
  join RED_Ancestor_Descendant_Identity r on r.Descendant_Concept = eg.event_Name_CONCEPT
  join Protocol_Subject ps on s.uid = ps.Subject_id
  join BTRIS_UsersInRoles bur on bur.Protocol_uid = ps.Protocol_uid
  join BTRIS_Users bu on bu.UserId = bur.UserId
where  ps.Protocol_number = '15-AA-0203' and bu.NIH_Login = 'btris_test2'
       and s.mrn = 'put mrn here'
       and r.Descendant_Concept in ('C524352622')
       and r.Ancestor_Concept = 'C114800'
