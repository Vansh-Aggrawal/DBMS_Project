create or replace procedure CREATEUSER (adhaar IN number , u_password IN varchar,namee in varchar,agee in number ,managerr in number,b in number, c in varchar, d in varchar, e in varchar, f in number,p1 in number)
 as
	tmp_query varchar(250);
	BEGIN
	tmp_query := 'create user C##' || adhaar || ' identified by ' || u_password;
     	EXECUTE IMMEDIATE ( tmp_query );
    	tmp_query := 'grant create session to C##' || adhaar ;
    	EXECUTE IMMEDIATE ( tmp_query );
	 insert into Property_user values (adhaar,namee,agee,managerr); 
	tmp_query := 'grant execute on sys.see_available_prop to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.see_all_prop to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.search_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.add_rent_details to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.search_Properties_price to C##' || adhaar;
	execute immediate ( tmp_query );
if managerr = 1 
then
	tmp_query := 'grant execute on sys.del_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.add_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.update_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.generate_report to C##' || adhaar;
	execute immediate ( tmp_query );
else
	tmp_query := 'grant execute on sys.user_del_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.user_add_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.user_update_property to C##' || adhaar;
	execute immediate ( tmp_query );
	tmp_query := 'grant execute on sys.check_status to C##' || adhaar;
	execute immediate ( tmp_query );
	end if;
	insert into User_Address values (adhaar,b,c,d,e,f);
	insert into Phone_number values ( adhaar,p1);
	END;
/