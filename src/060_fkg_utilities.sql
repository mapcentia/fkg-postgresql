/* 
    This file is part of the The OpenFKG PostgreSQL implementation of the FKG datamodel
    Copyright (C) 2013 Septima P/S 

    The OpenFKG PostgreSQL implementation of the FKG datamodel is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    The OpenFKG PostgreSQL implementation of the FKG datamodel is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with The OpenFKG PostgreSQL implementation of the FKG datamodel.  If not, see <http://www.gnu.org/licenses/>.

    See more about the OpenFKG project at http://github.com/OpenFKG
*/

CREATE SCHEMA fkg_utilities; -- AUTHORIZATION postgres;

CREATE TABLE fkg_utilities.view_mapping (
  constraint_name character varying NOT NULL,
  field_alias character varying NOT NULL,
  value_field character varying NOT NULL,
  ordinal integer NOT NULL,
  CONSTRAINT view_mapping_pk PRIMARY KEY (constraint_name, field_alias)
);

-- View mapping: (foreign_key_constraint_name, alias_name_in_view, field_name_in_relation_table, ordinal_position_in_view)
-- Insert default values
INSERT INTO fkg_utilities.view_mapping (constraint_name, field_alias, value_field, ordinal)
SELECT 
  tc.constraint_name,
  replace(kcu.column_name, '_kode', '') AS field_alias,
  replace(ccu.column_name, '_kode', '') AS ref_column_name,
  100::integer
FROM 
  information_schema.key_column_usage kcu JOIN
  information_schema.table_constraints tc ON (kcu.constraint_name = tc.constraint_name AND tc.constraint_type='FOREIGN KEY') JOIN
  information_schema.constraint_column_usage ccu ON (ccu.constraint_name = tc.constraint_name)
where 
   tc.constraint_name like 't\_%' AND ccu.table_name <> 'generel';


-- ---- Manipulate the table contents ----

-- Some general corrections of "postnr" and "Vejkode"
UPDATE fkg_utilities.view_mapping SET field_alias='vejnavn', value_field='vejnavn' WHERE field_alias='vejkode' AND value_field='vejkode';
UPDATE fkg_utilities.view_mapping SET field_alias='postnr_by', value_field='postnr_by' WHERE field_alias='postnr' AND value_field='postnr';


-- Theme t_5007_vandl_opl
UPDATE fkg_utilities.view_mapping SET field_alias='opl_type', value_field='vandl_opl_type' WHERE constraint_name='t_5007_vandl_opl_d_5007_opl_type_fk';
UPDATE fkg_utilities.view_mapping SET field_alias='vandl_opl_navn', value_field='opl_navn' WHERE constraint_name='t_5007_vandl_opl_d_5007_opl_fk';
-- select * from fkg_utilities.view_mapping where constraint_name like 't_5007_vandl%';
-- select * from fkg_utilities.view_mapping where constraint_name like 't_5007_vandl_opl_d_5007_opl_type_fk';

-- Theme t_5008_soe_opl
UPDATE fkg_utilities.view_mapping SET field_alias='soe_opl_navn', value_field='soeopl_navn' WHERE constraint_name='t_5008_soe_opl_d_5008_opl_fk';

-- Theme 5900 t_5900_jordfl
UPDATE fkg_utilities.view_mapping SET field_alias='afs_vejnavn', value_field='vejnavn' WHERE constraint_name='t_5900_jordfl_d_vejnavn_afs_fk';
UPDATE fkg_utilities.view_mapping SET field_alias='modt_vejnavn', value_field='vejnavn' WHERE constraint_name='t_5900_jordfl_d_vejnavn_modt_fk';
UPDATE fkg_utilities.view_mapping SET field_alias='afs_postnr_by', value_field='postnr_by' WHERE constraint_name='t_5900_jordfl_d_basis_postnr_afs_fk';
UPDATE fkg_utilities.view_mapping SET field_alias='modt_postnr_by', value_field='postnr_by' WHERE constraint_name='t_5900_jordfl_d_basis_postnr_modt_fk';
-- select * from fkg_utilities.view_mapping where constraint_name like 't_5900%';

-- ---- End of manipulation ----




-- View to hold information on columns
CREATE OR REPLACE VIEW fkg_utilities.column_metadata
AS
SELECT 
  col.table_schema,
  col.table_name,
  col.column_name,
  col.ordinal_position,
  col.is_nullable,
  col.data_type,
  fk.constraint_name,
  fk.ref_table_schema,
  fk.ref_table_name,
  fk.ref_column_name,
  fk.field_alias,
  fk.value_field,
  fk.ordinal
FROM 
  information_schema.columns col LEFT JOIN
    (
    select 
      kcu.table_schema, kcu.table_name, kcu.column_name, kcu.constraint_name, ccu.table_schema as ref_table_schema, ccu.table_name as ref_table_name, ccu.column_name as ref_column_name, vm.field_alias, vm.value_field, vm.ordinal
    from 
      information_schema.key_column_usage kcu JOIN
      information_schema.table_constraints tc ON (kcu.constraint_name = tc.constraint_name AND tc.constraint_type='FOREIGN KEY') JOIN
      information_schema.constraint_column_usage ccu ON (ccu.constraint_name = tc.constraint_name) JOIN
      fkg_utilities.view_mapping vm ON (ccu.constraint_name = vm.constraint_name)
    ) fk ON (fk.table_schema = col.table_schema AND fk.table_name = col.table_name AND fk.column_name = col.column_name)
