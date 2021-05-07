select distinct --consented,
                    rd.CRIS_Onset_Date date,
                    rd.CRIS_Status,
                    --false as locked,
                    s.MRN,
                    s.UID,
                   s.First_name,
                    s.Last_name,
                    s.Date_of_birth,
                    s.gender,
                    PS.Attribution_Source,
                    ps.Start_date,
                    ps.Date_modified,
                    ps.Protocol_number,
                    --RD.initialConsent,
                    ATTRIBUTION_STATUS, ATTRIBUTION_PRECEDENCE
                    from protocol_subject ps
                                            join subject s on s.uid=ps.Subject_id
                                            left outer join  [dbo].[Protocol_Subject_CrisUpdates] rd on rd.Subject_id=s.UID
                                            --where protocol_uid = 9793 and attribution_status!='C128331'
                                             where mrn ='9990112'