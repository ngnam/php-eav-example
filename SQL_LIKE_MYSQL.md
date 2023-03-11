https://learn.microsoft.com/en-us/previous-versions/sql/sql-server-2008/bb522522(v=sql.100)?redirectedfrom=MSDN

```
SQL Server
insert into cars (entity_id, attribute_id, value_id) 
				select 
					2 as `entity_id`,
					`a`.`attribute_id` as `attribute_id`, 
					`v`.`value_id` as `value_id` 
				FROM 
					`eav_attributes` as `a`, 
					`eav_values` as `v` 
				WHERE 
					`a`.`attribute_name` = 'make' and `v`.`value_name` = 'mitsubishi';
```