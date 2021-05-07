INSERT INTO BTRIS_TEST.dbo.Protocol_Subject (
  Protocol_uid, Subject_id, Protocol_number, Status, Start_date, Resolved_date, Appl_Source_CD,
  Date_created, Date_modified, Last_Modified_Load_Audit_uid, Attribution_Status, Attribution_Precedence,
  Latest_Consent_Date, Attribution_Source
)
  SELECt distinct p.Protocol_uid, s.UID, p.Protocol_number, 0, '2020-03-15', NULL, 'C113092',
    '2020-03-15', null, 0, 'C128329' , 10, NULL, 'BTRIS'
  FROM BTRIS_TEST.dbo.Subject s
    JOIN BTRIS_TEST.dbo.protocol p ON 1 = 1
  WHERE SUBSTR(protocol_number, 7,1) = '000011-CH' and SUBSTR(protocol_number, 5,1) <> ''
        AND s.Last_name LIKE 'NIHCCTEST%'