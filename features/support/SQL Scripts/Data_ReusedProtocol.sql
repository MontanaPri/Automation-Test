select top 10
  protocol_number,
  is_terminated,
  data_reuse_protocol
from
  BTRIS.dbo.Protocol
where
  is_terminated = 1
  and Data_Reuse_Protocol is not null