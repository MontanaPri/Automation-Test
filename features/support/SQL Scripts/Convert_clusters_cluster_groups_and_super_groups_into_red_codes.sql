SELECT
  distinct red.Descendant_Concept as red_code,
           concat(
               case row_number() over (order by red.Descendant_Concept)
               when 1
                 then ''
               else ','
               end,
               '''', red.Descendant_Concept, ''''
           ) as red_code_for_pasting
FROM
  BTRIS_WEB.ufo.t_cluster_hierarchy parent_hierarchy
  JOIN BTRIS_WEB.ufo.t_cluster_items parent_item
    ON parent_hierarchy.cluster_item_id = parent_item.cluster_item_id
       AND parent_item.cluster_item_code IN (
    -- put cluster, CG and SG codes in here. Example:
    -- 'E123', 'G100', 'S10001'
  )
  JOIN BTRIS_WEB.ufo.t_cluster_hierarchy child_hierarchy
    ON child_hierarchy.clusterOrg.IsDescendantOf(parent_hierarchy.clusterOrg) = 1
  JOIN BTRIS_WEB.ufo.t_cluster_items child_item
    ON child_hierarchy.cluster_item_id = child_item.cluster_item_id
       AND child_item.cluster_item_type = 'Cluster'
  JOIN BTRIS_WEB.dbo.Cluster_Report_Metadata_Lab red
    ON child_item.cluster_item_code = red.BTRIS_Cluster_ID