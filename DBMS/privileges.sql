-- grant user privileges
create or replace procedure USERPRIV (user_id in number) is
tmp_query varchar(250);
begin
tmp_query := 'grant execute on user_del_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on user_add_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on user_update_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on search_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on check_status to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on see_all_prop to C##' || user_id;
execute immediate ( tmp_query );
end;
/

-- grant manager priviliges

create or replace procedure MANAGERPRIV (user_id in number) as
tmp_query varchar(250);
begin
tmp_query := 'grant execute on del_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on add_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on update_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on search_property to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on add_rent_details to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on see_all_prop to C##' || user_id;
execute immediate ( tmp_query );
tmp_query := 'grant execute on generate_report to C##' || user_id;
execute immediate ( tmp_query );
end;
/
