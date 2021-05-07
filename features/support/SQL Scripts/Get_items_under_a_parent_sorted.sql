select
  item.cluster_item_id,
  item.cluster_item_name,
  item.cluster_item_code,
  item.cluster_item_type,
  item.cluster_specimen_order,
  item.cluster_sequence,
  case item.cluster_item_type
  when 'Cluster'
    then 1
  when 'Cluster Group, Panel'
    then 2
  when 'Cluster Group, Presentation'
    then 2
  else 3
  end as item_type
from
  BTRIS_Web.ufo.t_cluster_items item
where
  item.cluster_item_id in (

    SELECT
      cluster_item_id
    FROM
      BTRIS_WEB.ufo.t_cluster_hierarchy
    WHERE
      clusterOrg.GetAncestor(1) IN (
        SELECT
          clusterOrg
        FROM
          BTRIS_WEB.ufo.t_cluster_hierarchy hier
          JOIN BTRIS_WEB.ufo.t_cluster_items item
            ON item.cluster_item_id = hier.cluster_item_id
        WHERE
          item.cluster_item_code = 'E1878' -- put parent item code here, e.g. G10005
      )

  )
order by item.cluster_specimen_order, item.cluster_sequence, item_type, item.cluster_item_name