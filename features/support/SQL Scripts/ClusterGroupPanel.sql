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

    select
      distinct
      case
      when presentation_group_parent.cluster_item_id is null
        then child_hier.cluster_item_id
      else presentation_group_parent.cluster_item_id
      end as group_or_item_id
    from
      BTRIS_WEB.ufo.t_cluster_hierarchy child_hier
      join BTRIS_WEB.ufo.t_cluster_items child
        on child.cluster_item_id = child_hier.cluster_item_id
      left join BTRIS_WEB.ufo.t_cluster_hierarchy parent_hier
        on child_hier.clusterOrg.GetAncestor(1) = parent_hier.clusterOrg
      left join BTRIS_WEB.ufo.t_cluster_items presentation_group_parent
        on parent_hier.cluster_item_id = presentation_group_parent.cluster_item_id and presentation_group_parent.cluster_item_type = 'Cluster Group, Presentation'
    WHERE
      -- cluster item name matching is by "contains"
      child.cluster_item_name like '%Coronavirus SARS-CoV-2 (Multiple Specimen Types)%'
      OR (
           SELECT count(*)
           from
             BTRIS_Web.ufo.lkp_synonym_to_cluster map
             inner join
             BTRIS_Web.ufo.t_synonyms syn
               on
                 map.synonym_id = syn.synonym_id
                 -- synonym matching is by "exact match"
                 and syn.synonym_term = 'Coronavirus SARS-CoV-2 (Multiple Specimen Types)'
           where
             map.cluster_item_id = child.cluster_item_id
             and map.active = 1
         ) > 0
  )
order by item.cluster_specimen_order, item.cluster_sequence, item_type, item.cluster_item_name