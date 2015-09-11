This folder contains these files : 
 - (1) JSON_database_prepare.sql
 - (2) JSON_database_prepare_TRIGGERS.sql 
 
(1) JSON_database_prepare is sql script for creating and updating views an triggers which are neccessary part of json feed service. Please be careful, this file contains script for creating views - no problem, but one table data_versions which will be dropped on updating database. Use this script for initialization of service views only !

(2) JSON_database_prepare_TRIGGERS file cant be part of (1) file because there were problems executing script. In case you need create triggers for updating data_version table you have to add triggers manualy by phpmyadmin form. 

