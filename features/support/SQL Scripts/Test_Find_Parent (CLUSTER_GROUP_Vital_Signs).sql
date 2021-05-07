select
  item.cluster_item_id,
  item.cluster_item_name,
  item.cluster_item_code,
  item.cluster_item_type,
  ISNULL(cluster_specimen_order,0) as 'spOrder',
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
where item.cluster_item_id in (
  SELECT
    CASE
    WHEN COUNT(presentation_group_parent.cluster_item_id) OVER (PARTITION BY child.cluster_item_id) > 0 THEN
      presentation_group_parent.cluster_item_id
    ELSE
      child.cluster_item_id
    END AS cluster_item_id
  FROM
    BTRIS_WEB.ufo.t_cluster_hierarchy child_hier
    JOIN BTRIS_WEB.ufo.t_cluster_items child
      ON child.cluster_item_id = child_hier.cluster_item_id
    LEFT JOIN BTRIS_WEB.ufo.t_cluster_hierarchy parent_hier
      ON child_hier.clusterOrg.GetAncestor(1) = parent_hier.clusterOrg
    LEFT JOIN BTRIS_WEB.ufo.t_cluster_items presentation_group_parent
      ON parent_hier.cluster_item_id = presentation_group_parent.cluster_item_id
         AND presentation_group_parent.cluster_item_type = 'Cluster Group, Presentation'

  WHERE 1=1
        -- cluster item name matching is by "contains"
        and 1=1
        --===============================================================================
        and child_hier.clusterOrg.IsDescendantOf((Select ClusterOrg FROM [BTRIS_Web].[ufo].[t_cluster_hierarchy] ch1 where ch1.cluster_item_name='Vital Signs') )=1 -- For "Vital signs"
        -- and child_hier.clusterOrg.IsDescendantOf((Select ClusterOrg FROM [BTRIS_Web].[ufo].[t_cluster_hierarchy] ch1 where ch1.cluster_item_name='Lab') )=1 -- For "Lab"
        --===============================================================================
        and    child.cluster_item_name LIKE '%Weight%'
        OR EXISTS (
            SELECT
              1
            FROM
              BTRIS_Web.ufo.lkp_synonym_to_cluster map
              JOIN BTRIS_Web.ufo.t_synonyms syn
                ON map.synonym_id = syn.synonym_id
            WHERE
              map.cluster_item_id = child.cluster_item_id
              AND map.active = 1
              -- synonym matching is by "exact match"
              AND syn.synonym_term = 'Weight'
        )
  GROUP BY child.cluster_item_id, presentation_group_parent.cluster_item_id
)
order by item.cluster_specimen_order, item.cluster_sequence, item_type, item.cluster_item_name
