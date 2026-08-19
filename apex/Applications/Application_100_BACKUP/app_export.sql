prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.0'
,p_default_workspace_id=>5001986167966267
,p_default_application_id=>101
,p_default_id_offset=>7647104815561059
,p_default_owner=>'ARTONE'
);
end;
/
 
prompt APPLICATION 101 - Dashboard - BACKUP
--
-- Application Export:
--   Application:     101
--   Name:            Dashboard - BACKUP
--   Date and Time:   10:25 Wednesday August 19, 2026
--   Exported By:     MATHEUS
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     11
--       Items:                   49
--       Validations:              2
--       Processes:               38
--       Regions:                 26
--       Buttons:                 17
--       Dynamic Actions:         11
--     Shared Components:
--       Logic:
--         Items:                 11
--         Processes:              2
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              7
--       Security:
--         Authentication:         2
--         Authorization:          8
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   4
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.0
--   Instance ID:     1000149937418765
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ARTONE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Dashboard - BACKUP')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DASHBOARD101')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'435AB6803A42F009FCEC1276EEAAFEDCF7D4C69EB855045D2F189202F8AE0ED4'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(14518446760120794)
,p_application_tab_set=>0
,p_logo_type=>'I'
,p_logo=>'#APP_FILES#logo-art-one.png'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.2'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Dashboard'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260819102317Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461266161822
,p_version_scn=>'6345032'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(20751393934587680536)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================================',
unistr('   APPLICATION 100 - PADR\00C3O LARANJA GLOBAL V2'),
unistr('   For\00E7a em: IRs, Forms, Modals, Buttons'),
'   ============================================================ */',
'',
'/* ===== HEADERS IR (Page 5, 7) ===== */',
'.a-IRR-header, ',
'.a-IRR-table th, ',
'.t-Report-colHead,',
'.apexir-header-row {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'}',
'',
'.a-IRR-header a, ',
'.apexir-header-row a {',
'  color: white !important;',
'  text-decoration: none !important;',
'}',
'',
'/* ===== MODAL HEADERS ===== */',
'.ui-dialog-titlebar {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'  padding: 14px 12px !important;',
'}',
'',
'.ui-dialog-title {',
'  color: white !important;',
'  font-weight: bold !important;',
'}',
'',
'/* ===== CAMPOS INPUTS ===== */',
'input[type="text"],',
'input[type="email"],',
'input[type="number"],',
'textarea,',
'select,',
'.t-Form-inputContainer input,',
'.t-Form-inputContainer textarea,',
'.t-Form-inputContainer select {',
'  border: 2px solid #E25F21 !important;',
'  background-color: #FFF8F5 !important;',
'  padding: 8px 12px !important;',
'  color: #000 !important;',
'}',
'',
'input:focus,',
'textarea:focus,',
'select:focus {',
'  border-color: #D45119 !important;',
'  box-shadow: 0 0 5px rgba(226, 95, 33, 0.25) !important;',
'}',
'',
'/* ===== LABELS ===== */',
'label, ',
'.t-Form-label {',
'  color: #000 !important;',
'  font-weight: 400 !important;',
'  font-size: 12px !important;',
'  text-transform: uppercase !important;',
'}',
'',
unistr('/* ===== BOT\00D5ES ===== */'),
'.t-Button--hot,',
'button,',
'.t-Button,',
'input[type="button"],',
'input[type="submit"] {',
'  padding: 8px 20px !important;',
'  border-radius: 4px !important;',
'  font-weight: bold !important;',
'  text-transform: uppercase !important;',
'  border: none !important;',
'  margin: 5px !important;',
'}',
'',
'/* CANCELAR - Cinza */',
'.ui-dialog-buttonpane button:nth-child(1) {',
'  background-color: #6c757d !important;',
'  color: white !important;',
'}',
'',
'.ui-dialog-buttonpane button:nth-child(1):hover {',
'  background-color: #5a6268 !important;',
'}',
'',
'/* DELETAR - Vermelho */',
'.ui-dialog-buttonpane button:nth-child(2) {',
'  background-color: #DC3545 !important;',
'  color: white !important;',
'}',
'',
'.ui-dialog-buttonpane button:nth-child(2):hover {',
'  background-color: #c82333 !important;',
'}',
'',
'/* SALVAR/CREATE - Laranja */',
'.t-Button--hot,',
'.ui-dialog-buttonpane button:nth-child(3),',
'button[value="CRIAR"],',
'button[value="SALVAR"] {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  border: none !important;',
'}',
'',
'.t-Button--hot:hover,',
'.ui-dialog-buttonpane button:nth-child(3):hover {',
'  background: linear-gradient(180deg, #D45119 0%, #C44E1A 100%) !important;',
'}',
'',
'/* ===== TOGGLES ===== */',
'input[type="checkbox"] {',
'  accent-color: #E25F21 !important;',
'}',
'',
'/* ===== MODAL FOOTER ===== */',
'.ui-dialog-buttonpane {',
'  border-top: 2px solid #E25F21 !important;',
'  background-color: #f5f5f5 !important;',
'  padding: 15px !important;',
'  text-align: center !important;',
'}',
'',
unistr('/* ===== IR C\00C9LULAS ===== */'),
'.a-IRR-table td {',
'  padding: 12px !important;',
'  border-bottom: 1px solid #f0f0f0 !important;',
'}',
'',
'.a-IRR-table tbody tr:hover td {',
'  background-color: #FFF8F5 !important;',
'}'))
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(20751394728644680542)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751388639324680525)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751388939283680527)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751389211840680527)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751389570110680528)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751389798247680528)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751390168347680529)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751390470721680529)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751390743982680529)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751391027761680530)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751391330186680530)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751391584687680531)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751391942928680531)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751392254686680532)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(20751392546521680532)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(20751394728644680542)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20751407865371680575)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20751408463208680576)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(20751407865371680575)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20751408950767680577)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(20751407865371680575)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(20751393934587680536)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:evCFV-hRfz6fLDI6bjgrKDtWrhm44BmH4H1vizfiziE'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260813171808Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14295861016828834)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Cadastro de Usu\00E1rios')
,p_static_id=>unistr('cadastro-de-usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
,p_created_on=>wwv_flow_imp.dz('20260812105327Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21657645504096514411)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Configura\00E7\00E3o de Alertas')
,p_static_id=>unistr('configura\00E7\00E3o-de-alertas')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
,p_created_on=>wwv_flow_imp.dz('20260728201215Z')
,p_updated_on=>wwv_flow_imp.dz('20260728201215Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21358889158273955307)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Dashboard - Log\00EDstica')
,p_static_id=>unistr('dashboard-log\00EDstica')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
,p_created_on=>wwv_flow_imp.dz('20260727145224Z')
,p_updated_on=>wwv_flow_imp.dz('20260727145224Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21841086011718432172)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Editar Alerta'
,p_static_id=>'editar-alerta'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
,p_created_on=>wwv_flow_imp.dz('20260729123832Z')
,p_updated_on=>wwv_flow_imp.dz('20260813171750Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14320516927971815)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Gerenciador de Acessos'
,p_static_id=>'gerenciador-de-acessos'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20751405226015680565)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14528899453575463)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Sele\00E7\00E3o de FIlial')
,p_static_id=>unistr('sele\00E7\00E3o-de-filial')
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
,p_created_on=>wwv_flow_imp.dz('20260813164440Z')
,p_updated_on=>wwv_flow_imp.dz('20260813171808Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/artpetro_logo_icone_laranja_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000008CB000008CB080600000049D7C81100000A3A69434350735247422049454336313936362D322E31000048899D5377585377173EF7DEECC14A88808CB0976C81002223EC215396A8C4244018218604DC0311';
wwv_flow_imp.g_varchar2_table(2) := '15AC282AB21445AA0216AC962175228A8382A8E0B6204544ADC52A2E1C7DA2CFD3DA3EFDBEAF5FDF3FEE7D9FF33BE7DEDF79DF7300680121227116AA029029964923FDBDD971F1096C620FA0400602D801F0F8D992D028BF680080405F2E3B3BD2DF1BFE';
wwv_flow_imp.g_varchar2_table(3) := '8497038028DE57AD02C2D96CF8FFA0CA97486500483800380884D97C00241F0032726512457C1C00980BD2151CC529B8342E3E0100D550F094CF7CDAA79CCFDC53C10599620100AAB8B344902950F04E00589F23170A00B0100028C811097301B06B0060';
wwv_flow_imp.g_varchar2_table(4) := '9421CF140160AF15B599425E36008EA688CB84FC54009C2D00D0A4D1915C00DC0C00122DE50BBEE00B2E132E92299AE26649164B4529A932B619DF9C6DE7E2C2610708733384329955388F9FCE930AD8DCAC4C094FBC18E073CF9FA0A6D0961DE8CB75B2';
wwv_flow_imp.g_varchar2_table(5) := '737172B2B2B7B6FB42A8FF7AF80FA1F0F6337B1EF1C93384D5FD47ECEFF2B26A00381300D8E63F620BCA015AD70268DCFA2366B41B40391FA0A5F78B7E588A794995C924AE3636B9B9B9D62221DF5A21E8EFF89F09FF005FFCCF5AF1B9DFE561FB089379';
wwv_flow_imp.g_varchar2_table(6) := 'F20C195BA11B3F2B234B2E65674B787C21DBEAAF43FCAF0BFFFE1ED32285C942A950CC17B26344C25C913885CDCD120B44325196982D12FF2713FF65D95FF079AE018051FB0198F3AD41A59709D8CFDD806350014BDCA570FD77DF42C831A0D8BC58BDD1';
wwv_flow_imp.g_varchar2_table(7) := 'CF73FF099FB6F9CF408B158F6C51CAA73A6E64349B2F97E67C3E53AC25E08102CAC0044DD0054330032BB0076770034FF08520088368888779C08754C80429E4C232580D0550049B613B544035D4421D34C261688563701ACEC125B80CFD701B0661041E';
wwv_flow_imp.g_varchar2_table(8) := 'C338BC8449044188081D61209A881E628C5822F608079989F822214824128F24212988189123CB90354811528254207B903AE45BE428721AB980F421379121640CF915798B62280D65A23AA8096A8372502F34188D46E7A229E84274099A8F6E42CBD01A';
wwv_flow_imp.g_varchar2_table(9) := 'F420DA829E462FA1FDE820FA189DC000A3622C4C1FB3C23818170BC312B0644C8AADC00AB152AC066BC4DAB12EEC2A36883DC1DEE00838068E8DB3C2B9E10270B3717CDC42DC0ADC465C05EE00AE05D789BB8A1BC28DE33EE0E9786DBC25DE151F888FC3';
wwv_flow_imp.g_varchar2_table(10) := 'A7E073F105F852FC3E7C33FE2CBE1F3F827F49201058045382332180104F48232C256C24EC2434114E11FA08C384092291A849B424BA13C3883CA28C58402C271E249E245E218E105F93A8243D923DC98F94401293F248A5A47AD209D215D2286992AC42';
wwv_flow_imp.g_varchar2_table(11) := '3626BB92C3C802F2627231B996DC4EEE258F902729AA14538A3B259A9246594D29A33452CE52EE509E53A95403AA0B35822AA2AEA296510F51CF5387A86F686A340B1A97964893D336D1F6D34ED16ED29ED3E97413BA273D812EA36FA2D7D1CFD0EFD15F';
wwv_flow_imp.g_varchar2_table(12) := '2B3194AC950295044A2B952A955A94AE283D55262B1B2B7B29CF535EA25CAA7C44B957F9890A59C54485ABC25359A152A97254E5BACA842A43D54E354C355375A36ABDEA05D5876A443513355F35815ABEDA5EB5336AC30C8C61C8E032F88C358C5AC659';
wwv_flow_imp.g_varchar2_table(13) := 'C60893C034650632D39845CC6F983DCC717535F5E9EA31EA8BD42BD58FAB0FB23096092B9095C12A661D660DB0DE4ED199E235453865C394C62957A6BCD298AAE1A921D428D468D2E8D778ABC9D6F4D54CD7DCA2D9AA79570BA765A115A195ABB54BEBAC';
wwv_flow_imp.g_varchar2_table(14) := 'D693A9CCA96E53F9530BA71E9E7A4B1BD5B6D08ED45EAABD57BB5B7B424757C75F47A253AE7346E7892E4BD753374D779BEE09DD313D86DE4C3D91DE36BD937A8FD8EA6C2F7606BB8CDDC91ED7D7D60FD097EBEFD1EFD19F343035986D9067D06470D790';
wwv_flow_imp.g_varchar2_table(15) := '62C8314C36DC66D861386EA467146AB4CCA8C1E89631D998639C6ABCC3B8CBF89589A949ACC93A93569387A61AA681A64B4C1B4CEF98D1CD3CCC169AD5985D33279873CCD3CD779A5FB6402D1C2D522D2A2D7A2D514B274B91E54ECBBE69F8692ED3C4D3';
wwv_flow_imp.g_varchar2_table(16) := '6AA65DB7A2597959E55835580D59B3AC43ACF3AC5BAD9FDA18D924D86CB1E9B2F960EB689B615B6B7BDB4ECD2EC82ECFAEDDEE577B0B7BBE7DA5FD3507BA839FC34A87368767D32DA70BA7EF9A7EC391E118EAB8CEB1C3F1BD93B393D4A9D169CCD9C839';
wwv_flow_imp.g_varchar2_table(17) := 'C9B9CAF93A87C909E76CE49C77C1BB78BBAC7439E6F2C6D5C955E67AD8F517372BB774B77AB787334C670867D4CE18763770E7B9EF711F9CC99E993473F7CC410F7D0F9E478DC77D4F434F81E73ECF512F73AF34AF835E4FBD6DBDA5DECDDEAFB8AEDCE5';
wwv_flow_imp.g_varchar2_table(18) := 'DC533E988FBF4FA14F8FAF9AEF6CDF0ADF7B7E067E297E0D7EE3FE8EFE4BFD4F05E0038203B6045C0FD409E407D6058E0739072D0FEA0CA60547055704DF0FB1089186B487A2A141A15B43EFCC329E259ED51A066181615BC3EE869B862F0CFF3E821011';
wwv_flow_imp.g_varchar2_table(19) := '1E5119F120D22E7259645714236A7E547DD4CB68EFE8E2E8DBB3CD66CB6777C428C724C6D4C5BC8AF5892D891D8CB3895B1E77295E2B5E14DF96404C8849D8973031C777CEF63923898E89058903734DE72E9A7B619ED6BC8C79C7E72BCFE7CD3F92844F';
wwv_flow_imp.g_varchar2_table(20) := '8A4DAA4F7AC70BE3D5F02616042EA85A30CEE7F277F01F0B3C05DB0463427761897034D93DB924F9618A7BCAD694B1548FD4D2D42722AEA842F42C2D20AD3AED557A58FAFEF48F19B1194D99A4CCA4CCA3623571BAB8334B376B51569FC4525220195CE8';
wwv_flow_imp.g_varchar2_table(21) := 'BA70FBC27169B0745F36923D37BB4DC6944964DD7233F95AF950CECC9CCA9CD7B931B94716A92E122FEA5E6CB178C3E2D1257E4BBE5E8A5BCA5FDAB14C7FD9EA6543CBBD96EF5981AC58B0A263A5E1CAFC9523ABFC571D584D599DBEFA873CDBBC92BC17';
wwv_flow_imp.g_varchar2_table(22) := '6B62D7B4E7EBE4AFCA1F5EEBBFB6A140A9405A707D9DDBBAEAF5B8F5A2F53D1B1C36946FF8502828BC58645B545AF46E237FE3C5AFECBE2AFBEAE3A6E44D3DC54EC5BB3613368B370F6CF1D872A044B56449C9F0D6D0AD2DDBD8DB0AB7BDD83E7FFB85D2';
wwv_flow_imp.g_varchar2_table(23) := 'E9A5D53B283BE43B06CB42CADACA8DCA3797BFAB48ADE8AFF4AE6CAAD2AEDA50F56AA760E7955D9EBB1AAB75AA8BAADFEE16EDBEB1C77F4F4B8D494DE95EC2DE9CBD0F6A636ABBBEE67C5DB74F6B5FD1BEF7FBC5FB070F441EE8AC73AEABABD7AE2F6E40';
wwv_flow_imp.g_varchar2_table(24) := '1BE40D6307130F5EFEC6E79BB646ABC63D4DACA6A24370487EE8D1B749DF0E1C0E3EDC718473A4F13BE3EFAA9A19CD852D48CBE296F1D6D4D6C1B6F8B6BEA341473BDADDDA9BBFB7FE7EFF31FD6395C7D58F179FA09CC83FF1F1E4929313A724A79E9C4E';
wwv_flow_imp.g_varchar2_table(25) := '393DDC31BFE3F699B833D73A233A7BCE069F3D7FCEEFDC992EAFAE93E7DDCF1FBBE07AE1E845CEC5D64B4E975ABA1DBB9B7F70FCA1B9C7A9A7A5D7B9B7EDB2CBE5F6BE197D27AE785C397DD5E7EAB96B81D72EF5CFEAEF1B983D70E37AE2F5C11B821B0F';
wwv_flow_imp.g_varchar2_table(26) := '6F66DC7C762BE7D6E4ED5577F0770AEFAADC2DBDA77DAFE647F31F9B069D068F0FF90C75DF8FBA7F7B983FFCF8A7EC9FDE8DE43FA03F281DD51BAD7B68FFF0D898DFD8E547731E8D3C963C9E7C52F0B3EACF554FCD9E7EF78BE72FDDE371E323CFA4CF3E';
wwv_flow_imp.g_varchar2_table(27) := 'FEBAF1B9E6F3FD2FA6BFE898089FB8F732F3E5E4ABC2D79AAF0FBCE1BCE97A1BFB767432F71DF15DD97BF3F7ED1F823FDCF998F9F1E36FF784F3FBC5A889420000000970485973000017120000171201679FD2520001049749444154789CECDD79DCADF7';
wwv_flow_imp.g_varchar2_table(28) := '7CEFFFF7CE442242B8C42CA2A622E62942E598A235F7474BB55C45111421E6EA418F1A5A9452553DCEA5ADA1BFA35A5A3DA55A3594D6A128318F41055785104964B8CF636D2BCD96EC9D3DDD6B7DD6B5BECFE7E3B1BAEEBD6DF7FDF6E83FF7BDEED7FA7E';
wwv_flow_imp.g_varchar2_table(29) := 'B76C6C6C0400000000000000005AB04FF50000000000000000005816B10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C00';
wwv_flow_imp.g_varchar2_table(30) := '00000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD';
wwv_flow_imp.g_varchar2_table(31) := '10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB000000000000';
wwv_flow_imp.g_varchar2_table(32) := '0000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000';
wwv_flow_imp.g_varchar2_table(33) := '000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10';
wwv_flow_imp.g_varchar2_table(34) := 'CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB00000000000000';
wwv_flow_imp.g_varchar2_table(35) := '00D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C000000';
wwv_flow_imp.g_varchar2_table(36) := '0000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB';
wwv_flow_imp.g_varchar2_table(37) := '0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000';
wwv_flow_imp.g_varchar2_table(38) := 'D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C00000000';
wwv_flow_imp.g_varchar2_table(39) := '00000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB00';
wwv_flow_imp.g_varchar2_table(40) := '00000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D0';
wwv_flow_imp.g_varchar2_table(41) := '0CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000';
wwv_flow_imp.g_varchar2_table(42) := '000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000';
wwv_flow_imp.g_varchar2_table(43) := '000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00C';
wwv_flow_imp.g_varchar2_table(44) := 'B10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C000000000000';
wwv_flow_imp.g_varchar2_table(45) := '0000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB000000';
wwv_flow_imp.g_varchar2_table(46) := '0000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB1';
wwv_flow_imp.g_varchar2_table(47) := '0C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C00000000000000';
wwv_flow_imp.g_varchar2_table(48) := '00CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB00000000';
wwv_flow_imp.g_varchar2_table(49) := '00000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C';
wwv_flow_imp.g_varchar2_table(50) := '0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000';
wwv_flow_imp.g_varchar2_table(51) := 'CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000';
wwv_flow_imp.g_varchar2_table(52) := '000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C00';
wwv_flow_imp.g_varchar2_table(53) := '00000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD';
wwv_flow_imp.g_varchar2_table(54) := '10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB000000000000';
wwv_flow_imp.g_varchar2_table(55) := '0000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000';
wwv_flow_imp.g_varchar2_table(56) := '000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10';
wwv_flow_imp.g_varchar2_table(57) := 'CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB00000000000000';
wwv_flow_imp.g_varchar2_table(58) := '00D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C000000';
wwv_flow_imp.g_varchar2_table(59) := '0000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB';
wwv_flow_imp.g_varchar2_table(60) := '0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000';
wwv_flow_imp.g_varchar2_table(61) := 'D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C00000000';
wwv_flow_imp.g_varchar2_table(62) := '00000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB00';
wwv_flow_imp.g_varchar2_table(63) := '00000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D0';
wwv_flow_imp.g_varchar2_table(64) := '0CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000';
wwv_flow_imp.g_varchar2_table(65) := '000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CD10CB0000000000000000D00CB10C0000000000000000CDD8AF7A00';
wwv_flow_imp.g_varchar2_table(66) := '000000C0DAEBBB83B7F33ACCEC4D4C87ECE5673E2DC95917F8BB73338CA7EEE5E705000000585B5B363636AA37000000002C4EDF5D3CC941F3306516ADCCFE7C892497DCE6E3D963FF24979E472DB37F77B124076EF37CC0FCF36C1BB91C34FFFBCCFFEE';
wwv_flow_imp.g_varchar2_table(67) := 'BC537CCFFB7CABE09C24DFDFE6CFDF9D3F9F9DE407F38FBF3FFF77A7273973FE987D7CC6FCF1C3243F4A72EAFCF907F3BF9BFDBBEFCD3F3E63FE79668F1F661867FF7D00000080952396010000005653DF9D17AF1C9AE452F3C7A5B7F9F852F340E5D2F3';
wwv_flow_imp.g_varchar2_table(68) := 'E74B6EF33878FE9FCF3EDEB7FA7F4AA3CE8B744E9DC735DFDFE6CFA7CEA39D53E7B1CDB68FEFCE9F4FD9FAF1305EF0E41C00000080BD22960100000016ABEF66B1CA65E78FCB24B95C926EFEF1B68FF3FEF343E78F59F0023F988733B3C77F26F9CE368F';
wwv_flow_imp.g_varchar2_table(69) := 'F3FEFCEDF9C7E73F86F1DCEAE1000000C06A12CB00000000BBAFEF6661CB61492E3F7F9E053057983F5F6EFEF7979D4731B3072CD3B9F368669C8734DFDCE6E3932FF43C8CB3936C00000080468865000000801FEBBB03E6C1CB15935C691EBC5C791EC3';
wwv_flow_imp.g_varchar2_table(70) := '9CF77CA5790C33FBB7B02ECE980735DFD8E6F91BF3A0E6EBF3E7FF48F2AD0CE3EC7A2900000060C2C432000000D082BE9B5D6B749579EC72D5F9F395E71F5F71FE98C531C08E9D338F69BE368F67668FAF6EF3E75958735286F1F4EAA1000000C08E8965';
wwv_flow_imp.g_varchar2_table(71) := '00000060EAFAEEE2490E9F872F579B3F5FF5027FBE44F54C68C87FCE239AF31E2725F9CAFC79F6E7FF70420D000000D411CB000000C0AAEBBB83935C7D1EC45C7D9B8FCF7B381106A6E5ACF929345FDECE6316D57C2DC37876F548000000585762190000';
wwv_flow_imp.g_varchar2_table(72) := '00A8D677FBCD4F7F3922C935B6791C310F630EAB9E082C3DA6999D40F3A5245F9C3F7F61FEF117338CDFA91E080000005326960100008065E8BB8B25B966929FDAE671DE9F67A7C3EC5F3D11988C53E6E1CCE7E611CDE7FFEB318C27578F030000805527';
wwv_flow_imp.g_varchar2_table(73) := '9601000080CDD277FBCF4F84B9D6FC71EDF9F335E727C7EC533D11587BDF9F8733B390E633F38F67CF9FCD30CE221B000000689E58060000007657DF5D3EC975E68FEBCE8398EBCEAF4D9A5DA904B08AC6249FDE1ACEFCF8F933F3C717328C67578F0300';
wwv_flow_imp.g_varchar2_table(74) := '00806511CB000000C0F6F4DDBEF353626611CC4FCF1FD7993F5FBA7A1EC0263A6B7E12CD2CA0F9D4FCF1C9AD21CD30FEB07A1C0000006C36B10C0000006DEBBBFDE6D724CD22981B24B9DEFC310B632E563D0FA0D0B949BE320F67668F13E78F4F65184F';
wwv_flow_imp.g_varchar2_table(75) := 'AB1E070000007B4A2C030000401BFA6E9FF94931D74F72E4FCF97AF393630EA89E0730B188E6CB493E7181C7A7338CB3536A00000060A58965000000583F7D77F9F92931B328E686F3E759187350F534803576D6FC2AA78FCF1FFFBEF57918BF5A3D0C00';
wwv_flow_imp.g_varchar2_table(76) := '0000B6259601000060BAFA6EFFF9F549B320E6C6F328E6464966B10C00ABE194241FBBC0E3C40CE399D5C30000006893580600008069E8BB43E721CC8DE78F1BCDAF529A0533004CCBD9493E95E4A3F3C747B64634C3F89DEA61000000AC3FB10C000000';
wwv_flow_imp.g_varchar2_table(77) := 'ABA7EFAE3C0F626E9AE426F3C7D5AB6701B0705F4EF26FF37866F6FC6F19C693AB47010000B05EC432000000D4EABB2BCCA3985B25B9D9FC31FB3B0098F97A920F27F960920F6D7D0CE37F568F02000060BAC4320000002C4FDF1D340F638E4A728B7920';
wwv_flow_imp.g_varchar2_table(78) := '73B5EA59004CCEE7E7F1CCBF24F9D7AD57390DE38FAA47010000300D621900000016A7EF8E4872EB2447CF03991B26D9AF7A16006BE78CF9B54DEF4BF28124EFCF307EAB7A14000000AB492C030000C0E6E8BB7DE731CC6DB7795CA97A1600CDFAEC3C9E';
wwv_flow_imp.g_varchar2_table(79) := '79EFD6E7619C9D46030000006219000000F650DFCD4E88B9599263E68FD9C93197AA9E05003BF01F49DE93E49FB63E86F133D583000000A8219601000060774E8EB9F93671CCECE49883AB6701C01E3A791ECEBC731ECF7CA17A10000000CB2196010000';
wwv_flow_imp.g_varchar2_table(80) := '60C7FAEE7A49EE94E48E496EEFE41800D6D89793FCC33C9EF9870CE3B7AB07010000B0186219000000CED77787CDE398BB24B973922B554F028002E726F9689277CC1FFF9C61FC51F528000000368758060000A0657DB75F92A392FC6C926393DC64F6B3';
wwv_flow_imp.g_varchar2_table(81) := '62F52C005831A7CD4F9DF93F49FE2EC3383B85060000808912CB000000B4A6EFAE90E4AE49EE363F45E6D2D5930060623E95E46F93FCCDFCD499B3AA07010000B0EBC432000000EBAEEF6627C5DC28C93D93DC3DC9CD9D1E03009BE6BBF3AB9ADEBAF5E4';
wwv_flow_imp.g_varchar2_table(82) := '9961FC4EF5200000002E9A58060000601DF5DDC592FCB77920738F2457A99E04000D3827C97B93BC65EB6318BF543D080000800B13CB000000AC8BBEBBD4FC7AA5FB24F9D92487544F0280C67D2CC95F26F98B0CE327AAC7000000F063621900008029EB';
wwv_flow_imp.g_varchar2_table(83) := 'BBCB24B977929F4F72A724B313650080D5F38524FF3BC99B937C28C3E88559000080226219000080A9E9BBC3E6A7C7DC2FC9ED93EC573D0900D82D27CDC399D9E383C219000080E512CB0000004CE70499FF2FC92F263926C9BED59300804DF195246FD8';
wwv_flow_imp.g_varchar2_table(84) := '1ACE0CE3BF558F0100006881580600006055F5DD2149EE99E497E6572CED5F3D090058A84F27F9F324AFCF307EB67A0C0000C0BA12CB000000AC92BEBB5892BBCE03997B2439B07A120050E243495EB7359E19C66F548F010000582762190000806A7DB7';
wwv_flow_imp.g_varchar2_table(85) := '25C951491E94E47E4966572E0100CC9C93E49D49FE24C95B328CA7550F020000983AB10C00004095BEBB46925F994732B38F01002ECA0F92BC29C990E43D19462FEE020000EC01B10C0000C032F5DD2593DC77F65192DBCD7E2EAB9E04004CD29792BC76';
wwv_flow_imp.g_varchar2_table(86) := '6B38338C5FA91E03000030256219000080E55CB374DB240F995FB37489EA4900C0DA3837C9BB92BC26C99B338C67540F0200005875621900008045E9BB2BCCAF587A58926B55CF0100D6DE7792BC2EC91F65183F513D060000605589650000003653DFED';
wwv_flow_imp.g_varchar2_table(87) := '93E4D87920738F24FB574F02009AF4AF5BA399E48D19C61F568F01000058256219000080CD3B45E657933C22C9E1D5730000E6BE9BE44F93FC6186F193D563000000568158060000604FF5DD9624B74F725C92FB384506005871EF4EF2CA247F9961FC51';
wwv_flow_imp.g_varchar2_table(88) := 'F5180000802A6219000080DDD5778724F995248F4A72BDEA390000BBE9E424AF4AF2EA0CE3D7ABC70000002C9B580600006057F5DD75933C3AC983935CB27A0E00C05E3A2BC95F24795986F103D56300000096452C0300007051FA6E9F24C726797C923B';
wwv_flow_imp.g_varchar2_table(89) := 'CF7E8EAA9E0400B0001F4EF2D2247FEE8A26000060DD8965000000B6A7EF0E9E9F20F3D824D7AE9E0300B0C42B9AFE20C91F6618BF5D3D0600006011C432000000DBEABBAB24794C92872739B47A0E004091D393FC59921765183F533D06000060338965';
wwv_flow_imp.g_varchar2_table(90) := '00000066FAEEC6494E48F20B49F6AF9E0300B022662F20BF2DC9EF6418DF533D0600006033886500008076F5DD9624774AF2E4F93300003BF67F93BC30C99B338CE7568F010000D85362190000A03D7DB75F92FB25794A921B55CF01009898CF25F9DD24';
wwv_flow_imp.g_varchar2_table(91) := 'AFCD309E593D0600006077896500008076F4DD81B3FF9BE449498EA89E03003071DF48F29224AFCC30FEA07A0C0000C0AE12CB000000EBAFEF0E4EF2E8248F4B72C5EA3900006BE694242F4DF28A0CE3583D0600006067C4320000C0FAEABBCB24F9F524';
wwv_flow_imp.g_varchar2_table(92) := '8F4F72E9EA3900006B6E76BACCCB93FC5E86F19BD56300000076442C030000AC9FBEEB923C31C96392CC4E95010060794E4FF2AA242FCC30CEAE6A020000582962190000607D8864000056896806000058496219000060FA44320000AB4C34030000AC14';
wwv_flow_imp.g_varchar2_table(93) := 'B10C0000305D22190080A94533AF4CF2BC0CE3583D060000689758060000989EBEBB7492C725394124030030393F48F2B224BF9361FC6EF5180000A03D62190000603AFAEE12F353649E92E4D0EA390000EC955928F3C224BF9F619C05340000004B2196';
wwv_flow_imp.g_varchar2_table(94) := '010000565FDF1D90E4D7923C23C915ABE70000B0A94E4EF2DC247F9461FC51F518000060FD8965000080D5D577FB24794092E724B946F51C000016EA8B497E33C91B328CE7568F010000D69758060000584D7D776C921724B951F514000096EAA35BAFDD';
wwv_flow_imp.g_varchar2_table(95) := '1CC677540F010000D69358060000582D7D77D3242F4C72C7EA290000947A679227651867F10C0000C0A611CB000000ABA1EF0E4FF23F923C70F6B34AF51C000056C2EC3AA63F4BF28C0CE3D7AAC7000000EB412C030000D4EABB4B25795A92C725B978F5';
wwv_flow_imp.g_varchar2_table(96) := '1C000056D2E9495EB4F504C261FC7EF518000060DAC4320000408DBEDB2FC9C3923C27C9E5AAE7000030092727796692D7641867A7CE000000EC36B10C0000B07C7D7797242F4E72FDEA2900004CD247933C3EC3F8EEEA210000C0F48865000080E5E9BB';
wwv_flow_imp.g_varchar2_table(97) := '6B25794992BB554F0100602DFC459213328C5FAE1E0200004C875806000058BCBE3B647E5CFE63931C503D070080B5724692DF4DF2FC0CE369D563000080D5279601000016A7EFB6247950921724B97CF51C0000D6DA57933C29C3F8E7D543000080D526';
wwv_flow_imp.g_varchar2_table(98) := '9601000016A3EF6E96E4E5496E5D3D050080A6FC5392C764184FAC1E020000AC26B10C0000B0B9FAEE32499E9BE4E149F6A99E03004093CE4EF2B224CFCE309E5A3D060000582D621900006033AF5C7A6892E725E9AAE7000040926F2439DED54C0000C0';
wwv_flow_imp.g_varchar2_table(99) := 'B6C4320000C0DEEBBB1B26F9C32447554F010080ED7867924765183F573D040000A82796010000F65CDF5D32C97F4FF2B824FB55CF0100808B706692E76F7D0CE319D5630000803A6219000060CFF4DDBD92FC7E92AB564F010080DDF0D924C76518FFB1';
wwv_flow_imp.g_varchar2_table(100) := '7A08000050432C030000EC9EBEBBCA3C92B977F5140000D843B317C6FF34C90919C66F578F010000964B2C030000EC9ABEDB27C9A3923C37C921D573000060138C499E90619C853300004023C4320000C0CEF5DDF593BC3AC951D55300006001DE91E411';
wwv_flow_imp.g_varchar2_table(101) := '19C62F570F010000164F2C030000EC58DF5D2CC953933C3DC901D573000060814E4BF28C242FCF309E533D060000581CB10C0000B07D7D77CB24FF33C90DAAA70000C012FD4B928766183F593D040000580CB10C0000F093FAEEC024CF4EF28424FB56CF';
wwv_flow_imp.g_varchar2_table(102) := '010080026726794E92176618CFAE1E0300006C2EB10C000070BEBEBB6D92D724B956F514000058011F9A7D979C613CB17A080000B079C4320000C02C923928C973933C36C93ED573000060853865060000D68C580600005AD777B74AF2DA24D7A99E0200';
wwv_flow_imp.g_varchar2_table(103) := '002BCC29330000B026C4320000D0AABEBB589267273921C9BED57300006022A7CCFC4692976418CFA91E030000EC19B10C0000B4A8EF6E94E44F931C593D05000026E87D491E9C61FC62F510000060F789650000A0257D373B41E649F313650EA89E0300';
wwv_flow_imp.g_varchar2_table(104) := '0013F683244FC830BEBA7A080000B07BC4320000D08ABE3B627E9ACCD1D5530000608DFC4D92876518BF593D040000D835FBECE2BF030000A6ACEFFA241F13CA0000C0A6BB7B928FA7EF66CF0000C0043859060000D659DF5D26C9AB92DCB77A0A000034';
wwv_flow_imp.g_varchar2_table(105) := 'E00F933C31C3F8C3EA210000C08E89650000605DF5DD31F36B97AE523D0500001AF299240FC8307EA47A080000B07D6219000058377DB77F92E72479B2AB570100A0C499499E91E4C519462FC20300C08A11CB0000C03AE9BB6B24797D925B554F010000';
wwv_flow_imp.g_varchar2_table(106) := 'F2F6240FCE307EB37A080000703EEF3205008075D1770F48323BEA5D28030000ABE1D8241F4BDFDDA57A080000703E27CB0000C0D4F5DD2592BC2CC943AAA7000000DB357B21FE85499E99613CAB7A0C0000B44E2C03000053D6773748F2C624D7AF9E02';
wwv_flow_imp.g_varchar2_table(107) := '0000ECD40792DC3FC37852F510000068996B98000060AAFAEEA1493E2894010080C9382AC947D377F7AE1E0200002D73B20C00004C4DDF1D9CE495497EB97A0A0000B047662FCCBF34C9935DCB040000CB279601008029E9BBEB25F9FF9D260300006B73';
wwv_flow_imp.g_varchar2_table(108) := '2DD32F6618BF5A3D0400005AE21A260000988ABEFB25D72E0100C0DA5DCBF491F4DDB1D5430000A0254E9601008055D777072479499247554F01000016E2DC24BF95E43919C6D9C70000C002896500006095F5DD5592BC29C9ADAAA70000000BF777491E';
wwv_flow_imp.g_varchar2_table(109) := '9861FC4EF510000058676219000058557D774C923F4F7258F51400006069BE94E43E19C68F550F01008075B54FF5000000603BFAEEF8247F2F94010080E61C91E4FDE9BB07560F01008075E56419000058257D776092576F3D7A1D000068DD8B923C25C3';
wwv_flow_imp.g_varchar2_table(110) := '784EF510000058276219000058157D77D5247F99E466D55300008095F1CE24BF9861FC4EF510000058176219000058057D779B246F4E72F9EA290000C0CAF942927B66183F593D040000D6C13ED5030000A0797DF79024EF12CA0000003BF053493E90BE';
wwv_flow_imp.g_varchar2_table(111) := 'BB7BF510000058074E960100802A7DB76F9217247962F51400006012CE49F2B40CE3EF540F0100802913CB00004085BEBB64923724B95BF514000060725E93E4B80CE38FAA870000C0148965000060D9FAEE6A49FE3AC90DABA700000093F5EE243F9F61';
wwv_flow_imp.g_varchar2_table(112) := 'FC4EF5100000981AB10C00002C53DFDD7C1ECA5CA17A0A000030799F4D72F70CE3E7AA870000C094EC533D0000009AD177F79EBFFB53280300006C866B27797FFAEEE8EA2100003025621900005886BE7B5C92372539A87A0A0000B056BA24EF4CDFFD42';
wwv_flow_imp.g_varchar2_table(113) := 'F5100000980AD7300100C022F5DDBE497E37C9E3ABA70000006B6DF662FF93338CB39F3F0000808B209601008045E9BB8B27F9D324F7AD9E02000034E3F7931C9F613CA77A080000AC2AB10C00002C42DF1D9AE42D496E573D05000068CE5F24F9E50CE3';
wwv_flow_imp.g_varchar2_table(114) := '19D543000060158965000060B3F5DD9593BC3DC9F5ABA7000000CD7A6F927B6418BF573D040000568D580600003653DFFDF43C94B96AF5140000A0791F4FF2B319C6AF570F01008055B24FF5000000581B7D77CB24EF11CA0000002BE2C824EF4BDF5DB3';
wwv_flow_imp.g_varchar2_table(115) := '7A080000AC12B10C00006C86BEBB4B927725E9AAA70000006CE3EA49DE9FBEBB49F5100000581562190000D85B7D77BF247F9DE4A0EA29000000DB71B9AD717FDFDDBE7A080000AC02B10C0000EC8DBE7B5892372439A07A0A0000C045B85492BF4DDFDD';
wwv_flow_imp.g_varchar2_table(116) := 'AD7A0800005413CB0000C09EEABB2724F9A324FB564F010000D805B3D330DF9CBEBB7FF5100000A824960100803DD177BF99E44549B6544F010000D80DB35331FF2C7DF790EA21000050452C030000BBABEF9E97E4D9D533000000F6D0EC74CC3F4EDF1D';
wwv_flow_imp.g_varchar2_table(117) := '573D0400002A6CD9D8D828F9C2000030397D373B45E61549BCA00C0000AC8BA766185F503D02000096C9C9320000B02B84320000C07A7A7EFAEE29D523000060999C2C0300003BD377B323CA5F93E441D55300000016E47919C6A7578F0000806510CB00';
wwv_flow_imp.g_varchar2_table(118) := '00C0CE4399D7267960F514000080057B7E86F169D523000060D15CC30400003B2294010000DAF2D4F4DDF3AA470000C0A289650000607B84320000409B04330000AC3DB10C00005C9050060000689B60060080B526960100806DF5DD9624FF5328030000';
wwv_flow_imp.g_varchar2_table(119) := '346E16CC3CA77A0400002C82580600007E329479459207574F0100005801CF4CDF3DA57A0400006C36B10C00009CEFE5498EAB1E010000B0429E9FBE7B52F5080000D84C6219000098E9BBE7257954F50C00008015F482F4DD23AB470000C066D9B2B1B1';
wwv_flow_imp.g_varchar2_table(120) := 'B1699F0C000026A9EF9E99E439D53300000056D8EC97097D86F14FAA870000C0DE12CB0000D0B6BE3B3EC98BAB670000004CC03949EE9F617C53F5100000D81B62190000DAD5770F4DF2EAD9F7C5D55300000026E24749EE9561FCBBEA210000B0A7C432';
wwv_flow_imp.g_varchar2_table(121) := '0000B4A9EFEE97E40D49F6AD9E02000030313F4C726C86F17DD5430000604F88650000684FDFDD25C95F2739A07A0A0000C0447D2FC9ED338C1FAB1E020000BB4B2C0300405BFAEE5649FE31C941D55300000026EE5B496E9361FC42F5100000D81DFBEC';
wwv_flow_imp.g_varchar2_table(122) := 'D6BF06008029EBBBEB25799B5006000060531C96E41DE9BB2B560F010080DDE164190000DAD0775749F28124B36700000036CFBF27F9990CE3EC6A26000058794E96010060FDF5DD6593BC5D28030000B010374CF2D6F4DDC5AB870000C0AE10CB0000B0';
wwv_flow_imp.g_varchar2_table(123) := 'DEFA6E76E5D25B92CCAE6002000060317E26C99FA6EFF6AD1E0200003B23960100607DFDF845DAD72539BA7A0A00004003EE9BE425D52300006067C4320000ACB39725B977F50800008086FC7AFAEEC9D5230000E0A26CD9D8D8B8C87F00000093D4774F';
wwv_flow_imp.g_varchar2_table(124) := '49F2FCEA190000000D9AFDE2E197328C6FAC1E020000DB2396010060FDF4DDFD93BC7EF6FD6EF51400008046FD28C99D328CEFAD1E020000172496010060BDF4DD6D93FC439203AAA700000034EE94244765183F533D040000B625960100607DF4DDB593';
wwv_flow_imp.g_varchar2_table(125) := 'BC3FC965ABA7000000B0D517E7C1CCB7AA870000C079F6F9AF8F000060CAFAAE4BF236A10C0000C04AB94692BF4ADF1D583D040000CE2396010060FAFA6E76E5D29B935CB37A0A00000017725492D7A4EFB6540F01008019B10C0000EBE08F93DCAE7A04';
wwv_flow_imp.g_varchar2_table(126) := '0000003B74FF24CFAE1E0100003362190000A6ADEF9E96E457AA67000000B053BF91BEFBA5EA110000B0656363A37A030000EC99BEBBF7FCFA2547790300004CC319498EC930FE6BF5100000DA25960100609AFAEE4649FE39C925AAA7000000B05B4E4E';
wwv_flow_imp.g_varchar2_table(127) := '72CB0CE357AB870000D026D7300100303D7D77F9246F11CA0000004CD21592FC55FAEEA0EA210000B4492C0300C0B4F4DD0149FE7792C3ABA7000000B0C76E9AE47FA5EF5CAB0B00C0D289650000989A9727B95DF508000000F6DA2F24795AF5080000DA';
wwv_flow_imp.g_varchar2_table(128) := 'B3656363A37A030000EC9ABE3B2EC91F54CF00000060D39C9BE45E19C6BFA91E0200403BC43200004C43DFFD4C927726D9BF7A0A0000009BEAD424B7CC307EA67A0800006D10CB0000B0FAFAEE2A493E94E4F2D55300000058884F27B955867116CE0000';
wwv_flow_imp.g_varchar2_table(129) := 'C042EDB3D84F0F00007BA9EF2E96E42F84320000006BEDBA49FE247DB7A57A080000EB4F2C0300C0AA7BF9D6E3B80100005877F74AF28CEA110000AC3FD7300100B0BAFAEEA149FEB87A060000004B734E92BB6518DF5E3D040080F5259601006035F5DD';
wwv_flow_imp.g_varchar2_table(130) := 'CD93BC2FC9EC1A26000000DAF19D2437CD307EA57A080000EBC9354C0000AC9EBEBB4C923709650000009AF4E39F09FBEEE2D5430000584F62190000564BDFCDBE477D5D92C3ABA7000000506676DAE84BAB470000B09EC4320000AC9A6724B96BF50800';
wwv_flow_imp.g_varchar2_table(131) := '0000CA3D3C7DF7A0EA110000AC9F2D1B1B1BD51B0000E0C7FAEE0E49DE9164DFEA29000000AC84D392DC2AC37862F5100000D68758060080D5D077574CF2D12487554F01000060A57C3AC92D328C3FA81E0200C07A700D130000F5FA6E7692CC1B843200';
wwv_flow_imp.g_varchar2_table(132) := '00006CC77593BCB27A040000EB432C0300C02A785692DB578F0000006065FD72FAEEA1D5230000580FAE610200A056DFDD39C9DF09B9010000D889D393DC32C3F889EA2100004C9B580600803A7D7785241F49327B060000809DF9E43C9839AD7A080000';
wwv_flow_imp.g_varchar2_table(133) := 'D3E5DDBB0000D4E8BBD9F7A27F229401000060375C2FC9CBAA470000306D62190000AA3C39C9EC0A26000000D81D0F49DFDDBF7A040000D3E51A26000096AFEF6E95E4BD49F6AF9E020000C0249D9AE42619C62F560F0100607A9C2C0300C072F5DD2149';
wwv_flow_imp.g_varchar2_table(134) := '5E2F94010000602FCC7EB67C5DFACECF960000EC36B10C0000CBF60749AE513D02000080C9BB759267558F0000607A5CC30400C0F2F4DD0393FC59F50C000000D6C63949EE90617C4FF5100000A6432C0300C072F4DDE1493E96E452D553000000582B5F';
wwv_flow_imp.g_varchar2_table(135) := '4D72A30CE329D54300009806D7300100B0787DB7EFD6BBE485320000006CBEABCEAFFC0500805D2296010060199E92E4E8EA11000000ACADFBA7EF7EB97A040000D3E01A26000016ABEF6E9AE45F92EC5F3D05000080B5F6BD2437CC309E543D040080D5';
wwv_flow_imp.g_varchar2_table(136) := 'E66419000016A7EF0E9C5FBF249401000060D16657FFBE367DE7771F00005C24DF300200B048CF4F72DDEA1100000034E398248FAF1E0100C06A730D1300008BD1777748F2CED9F79CD55300000068CA19496E9661FC64F5100000569358060080CDD777';
wwv_flow_imp.g_varchar2_table(137) := '8724F97892AB554F010000A0491F4E725486F1ACEA210000AC1ED7300100B0082F15CA00000050E866499E5E3D020080D5E4641900003657DFFD5C92B755CF000000A07967CD4F97999D32030000FF452C0300C0E6E9BBCB26F944922B544F01000080F9';
wwv_flow_imp.g_varchar2_table(138) := 'CFA837CF309E593D040080D5E11A26000036FBFA25A10C000000ABE206499E593D020080D5E2641900003647DFDD2BC95F55CF000000800B383BC9AD5DC70400C079C4320000ECBDBEBB74924F39550600008015E53A260000FE8B6B980000D80C2F11CA';
wwv_flow_imp.g_varchar2_table(139) := '000000B0E2D7313DBD7A040000ABC1C9320000EC9DBEBB6B92FF533D0300000076E2AC24B7C8307EAC7A080000B5C4320000ECB9BE3B24C9C7935CAD7A0A000000EC820F25392AC37876F5100000EAB886090080BDF1DB421900000026E4E6499E503D02';
wwv_flow_imp.g_varchar2_table(140) := '00805A4E96010060CFF4DDD149DE23C00600006062CE48726486F1F3D5430000A8E1171B0000ECBEBEBB589257FB7E1200008009BAF8D69F69FB6E4BF51000006AF8E50600007BE2E9497EBA7A04000000ECA16392FC6AF50800006AB886090080DDD377';
wwv_flow_imp.g_varchar2_table(141) := 'B348E6A3490EA89E020000007BE194AD6F0419C66F560F010060B99C2C0300C0AEFBF111D5B3EB9784320000004CDDA1497EAF7A040000CB2796010060773C2CC9D1D5230000006093DC3F7D776CF508000096CB354C0000EC9ABEBB7C924FCDDF790700';
wwv_flow_imp.g_varchar2_table(142) := '0000EBE28B498ECC30FEB07A080000CBE16419000076D58B8532000000ACA16B24F98DEA1100002C8F93650000D8B9BEBB63927756CF0000008005392BC98D338C9FAC1E0200C0E289650000B8687D77B124FF9EE4DAD5530000006081DE9BE4F61946BF';
wwv_flow_imp.g_varchar2_table(143) := '3801005873AE61020060679E2494010000A001B74BF2A0EA1100002C9E93650000D8B1BE3B22C989490EAC9E020000004BF0AD24D7CD309E523D040080C571B20C000017E5F7853200000034E4B024CFAD1E0100C0623959060080EDEBBB7B24796BF50C';
wwv_flow_imp.g_varchar2_table(144) := '00000058B27393DC32C3F8E1EA2100002C86580600800BEBBB03E7D72FCDAE6102000080D6FC6B92DB641867E10C00006BC6354C00006CCF53843200000034EC56B3B792548F000060319C2C0300C04FEABBAB27F96492D9E932000000D0AA6F25B96E86';
wwv_flow_imp.g_varchar2_table(145) := 'F194EA2100006C2E27CB000070412F16CA000000400E4BF2ACEA1100006C3E27CB000070BEBEBB73927754CF00000080157176921B67184FAC1E0200C0E671B20C00003FD677FB25F9BDEA19000000B042663F2BBFB47A0400009B4B2C0300C0791E9DE4';
wwv_flow_imp.g_varchar2_table(146) := '7AD52300000060C5DC317DF7F3D5230000D83CAE6102006076AACCE5927C26C9A1D55300000060057D69EB1B4C86F18CEA210000EC3D27CB000030F36CA10C000000ECD011491E5F3D020080CDE164190080D6F5DD0D927C647E0F3B000000B07DDF4F72';
wwv_flow_imp.g_varchar2_table(147) := 'ED0CE3C9D5430000D83B4E960100E0C54219000000D8A94B26796EF5080000F69E936500005AD677774BF237D5330000006022CE4D72F30CE3EC8456000026CAC9320000ADEABBD969322FAA9E0100000013FBBDCAEC84560000264C2C0300D0AE4724B9';
wwv_flow_imp.g_varchar2_table(148) := '4EF508000000989863D277F7AC1E0100C09E730D1300408BFAEED2493E97A4AB9E0200000013F4D92437C8309E553D040080DDE764190080363D4D28030000007BECDAF3135B0100982027CB0000B4A6EFAE96E433492E5E3D0500000026ECDB49AE9561';
wwv_flow_imp.g_varchar2_table(149) := 'FC5EF5100000768F93650000DAF35CA10C000000ECB5CB25794AF5080000769F936500005AD2773749F221D1340000006C8AD3E7A7CB7CBD7A080000BBCE2F490000DAF242DF03020000C0A63930C973AA470000B07B9C2C0300D08ABEBB5392BFAF9E01';
wwv_flow_imp.g_varchar2_table(150) := '0000006BE6DC2437CC309E583D0400805DE35DC500002DE8BB2DF3536500000080CDFF5DCBF3AA470000B0EBC43200006DB87F929B548F0000008035758FF4DD6DAB470000B06BC4320000EBAEEF0E707F3A0000002CDCF3AB070000B06BC4320000EBEF';
wwv_flow_imp.g_varchar2_table(151) := 'A149AE593D02000000D6DCD1E9BB7B548F000060E7B66C6C6CECC23F03006092FAEEA0249F4F72C5EA29000000D0808F27B97186F1DCEA210000EC9893650000D6DBAF0B6500000060698E4CF280EA1100005C3427CB0000ACABBEBB74922F2639B47A0A';
wwv_flow_imp.g_varchar2_table(152) := '000000346476C2EBF5328C67550F010060FB9C2C0300B0BE9E209401000080A5BB669287548F000060C79C2C0300B08EFAAE4BF2A52407574F01000080067D2DC9B5338CA7570F0100E0C29C2C0300B09E9E2A9401000080325749F2F0EA1100006C9F93';
wwv_flow_imp.g_varchar2_table(153) := '650000D64DDF5D31C917921C583D050000001AF68DF9E9323FA81E0200C04F72B20C00C0FA79B25006000000CACDDECCF2E8EA1100005C9893650000D649DF5D35C9E7931C503D05000000C898E408A7CB0000AC1627CB0000AC97A70B65000000606574';
wwv_flow_imp.g_varchar2_table(154) := '4E970100583D4E96010058174E950100008055E47419008015E364190080F5E1541900000058CDD3659E583D020080F339590600601D38550600000056D977921CEE74190080D5E064190080F5E05419000000585D9749F2E8EA110000FC9893650000A6';
wwv_flow_imp.g_varchar2_table(155) := 'CEA93200000030056392239C2E030050CFC9320000D377825006000000565EE774190080D5E06419008029EBBB2B26F9429203ABA700000000BB74BACCD5338CA7550F0100689993650000A6ED49421900000098D4E9320FAB1E0100D03A27CB00004C55';
wwv_flow_imp.g_varchar2_table(156) := 'DFCD5E60FB529283ABA700000000BBEC1B49AE91613CA37A080040AB9C2C0300305DC70B65000000607266572A3FB87A040040CB9C2C030030457D77E9F9A932B367000000605ABE92E49A19C6B3AB870000B4C8C9320000D3749C500600000026EBF024';
wwv_flow_imp.g_varchar2_table(157) := '0FAC1E0100D02A27CB00004C4DDF1D98E4A4245DF514000000608F7D32C99119C673AB870000B4C6C9320000D3F330A10C0000004CDEF592DCAB7A0400408BC432000053D277FB2739A17A06000000B0299E563D0000A0456219008069B97F92AB558F00';
wwv_flow_imp.g_varchar2_table(158) := '00000036C52DD27777A81E0100D01AB10C00C054F4DD96244FA99E010000006C2A3FEB03002C99580600603AEE96E4FAD523000000804D7597F4DD4DAA470000B4442C0300301DDE6906000000EBC9CFFC00004BB465636363995F0F00803DD177472579';
wwv_flow_imp.g_varchar2_table(159) := '7FF50C0000006021CE4E72AD0CE397AB870000B4C0C9320000D37042F5000000006061F64BF2C4EA110000AD70B20C00C0AAEBBB6B25F9B4D019000000D6DA69490ECF30FE67F510008075E7172E0000ABEF09BE6F03000080B57789248FAC1E0100D002';
wwv_flow_imp.g_varchar2_table(160) := '27CB0000ACB2BEEB929C94E4C0EA29000000C0C27D737EBACC99D5430000D69977280300ACB6E38432000000D08CCB27F9E5EA110000EBCEC9320000ABAAEF2E9EE42B490EAB9E020000002CCD2792DC30C3E8173800000BE264190080D5F540A10C0000';
wwv_flow_imp.g_varchar2_table(161) := '0034E706498EAD1E0100B0CEC4320000ABA8EFB624797CF50C000000A0C4F1D5030000D6995806006035DD71FE4E32000000A03D774EDF5DBF7A0400C0BA12CB0000AC26EF200300008076CD4E9C7D5CF508008075B5656363A37A030000DBEABB6B27F9';
wwv_flow_imp.g_varchar2_table(162) := 'F4FC8531000000A04DA727393CC3F8EDEA210000EBC6C9320000AB67F6CE31A10C000000B4EDC024BF563D0200601D395906006095F4DDA1494E4A7270F514000000A0DCD7931C91613CAB7A0800C03A71B20C00C06AF955A10C0000003077E5243F5F3D';
wwv_flow_imp.g_varchar2_table(163) := '020060DD886500005645DFCDBE377B4CF50C00000060A53CB67A0000C0BA11CB0000AC8EBB6F3D5A19000000E07CB749DFDDB47A0400C03A11CB0000AC0EA7CA00000000DBF3EBD5030000D6C9968D8D8DEA0D0000F4DD75927C6AF6FD59F51400000060';
wwv_flow_imp.g_varchar2_table(164) := 'E59C91E4AA19C6B17A0800C03A70B20C00C06A384E2803000000ECC0C5933CA47A0400C0BA70B20C0040B5BEBB4492AF27B954F51400000060657D29C935338CE7560F0100983A27CB0000D47B805006000000D88923921C5B3D0200601D8865000056E3';
wwv_flow_imp.g_varchar2_table(165) := '0A26000000809DF11A0200C026700D130040A5BEBB45920F56CF0000000026E19CAD27CC0CE357AB8700004C99936500006A3DA27A000000003019FB26F9B5EA11000053E7641900802A7D774892FF487289EA29000000C064CC5E4B383CC37876F51000';
wwv_flow_imp.g_varchar2_table(166) := '80A972B20C00409D070A6500000080DD74A5243F573D020060CAC4320000751C9B0C000000EC8987550F00009832D730010054E8BB9B26F970F50C0000006092CE995FC5F4F5EA21000053E4641900801ADE0106000000ECA97D676FC5A91E010030554E';
wwv_flow_imp.g_varchar2_table(167) := '96010058B6BE3B28C9EC9D5F97AE9E020000004CD617935C33C3E8173D0000BBC9C9320000CB771FA10C000000B097AE91E498EA110000532496010058BE87540F00000000D6C2AF560F00009822D73001002C53DF5D3DC91744CB000000C026F861922B';
wwv_flow_imp.g_varchar2_table(168) := '66184FAD1E020030257E490300B05C0FF63D18000000B0490E4A72BFEA11000053E317350000CBD2775BE6B10C00C0CE9C533D0000988CBE7A0000C0D48865000096E7B6498EA81E01004CC22B92BCB17A0400300947A7EF7EAA7A0400C0948865000096';
wwv_flow_imp.g_varchar2_table(169) := 'C7A93200C0AE3839C96F26796292EF578F010056DEEC24DB5FA91E010030256219008065E8BB0393DCB77A060030094FCC307E2FC3F81F499E533D0600988407CDAF7F060060178865000096E31E492E553D02005879EF4EF2866DFEFCD2249F2CDC0300';
wwv_flow_imp.g_varchar2_table(170) := '4CC3ECDAE7DB548F0000980AB10C00C0723CA87A0000B0F2CE4EF2E80CE3C67FFDCD309E95E43149CEFF3B0080ED73151300C02E12CB00002C5ADF5D2EC95DAA6700002BEF6519C6132FF4B7C3F8AE24AF2F5904004CC9FDD27717AB1E01003005621900';
wwv_flow_imp.g_varchar2_table(171) := '80C5BB5F92FDAB4700002BED1B499E7D11FFF993929CBAC43D00C0F45C26C95DAB4700004C8158060060F11E583D00005879C76718771CC30CE32CA679D65217010053F44BD5030000A660CBC6862BAF010016A6EFAE9EE48BB3EFBBAAA700002BEB1F33';
wwv_flow_imp.g_varchar2_table(172) := '8C77DCE9BFEABBFD927C38C90D97B20A0098A2D3935CE122235C00009C2C0300B060BF289401002EC28F923C7A97FEE5309E9DE45149BCF30900D8910393DCB37A0400C0AA13CB00002C962B9800808BF2E20CE3A777F95F0FE33F27F993852E0200A6CE';
wwv_flow_imp.g_varchar2_table(173) := '6B1100003B219601005894BEFBE9244756CF000056D65792FC8F3DF8EF3D39C9290BD80300AC873BA6EF2E5B3D020060958965000016E701D503008095767C86F1B4DDFE6F0DE3B7923C63218B008075B07F92FB568F0000586562190080C5B95FF50000';
wwv_flow_imp.g_varchar2_table(174) := '6065BD2DC3F8977BF1DF7F55920F6DE21E0060BD784D0200E0228865000016A1EF6E90E4BAD533008095747A92C7EED56718C673933C32C9EC1900E0828E49DF1D563D020060558965000016E317AA0700002BEB7919C62FEEF56719C60FCF4F980100B8';
wwv_flow_imp.g_varchar2_table(175) := 'A07D93DCA77A0400C0AA12CB00002C86E38E0180EDF95C92176EE2E77B46926F6DE2E70300D687D726000076402C0300B0D95CC10400ECD8A3328C676EDA671BC653929CB0699F0F005827AE620200D801B10C00C0E673051300B03D7F9E617CE7023EEF';
wwv_flow_imp.g_varchar2_table(176) := '9F2579F7023E2F00306DAE620200D801B10C00C0E673CC31007041A726397E219F791837921C97E4AC857C7E0060CAEE5B3D00006015896500003653DF5DC7154C00C076FC6686F11B0BFBECC3F8A9242F5ED8E70700A6EAF6E9BBCB548F000058356219';
wwv_flow_imp.g_varchar2_table(177) := '0080CDE5541900E0823E92E4154BF83ABF95E42B4BF83A00C074EC9FE49ED5230000568D5806006073DDBB7A0000B052CEDD7A45D2309EBDF0AF348CA72579ECC2BF0E0030353F5F3D000060D56CD9D8985D6B0D00C05EEBBBC3937CB97A0600B0525E95';
wwv_flow_imp.g_varchar2_table(178) := '617CE452BF62DFBD35C93D96FA35018055767A92C3328C3FA81E0200B02A9C2C0300B0799C2A03006CEB5B499E56F0751F93E487055F1700584D072639B67A0400C02A11CB00006C1EB10C00B0AD2766184F59FA571DC693923C7BE95F17005865F7A91E';
wwv_flow_imp.g_varchar2_table(179) := '0000B04AC43200009BA1EF2E9BE476D533008095F1AE24AF2BFCFA2F497262E1D7070056CBCFA5EFF6AF1E0100B02AC43200009BE36E49F6AD1E0100AC8433933C2AC3B851B66018CF4AF2C824751B0080557268929FA91E0100B02AC43200009BE35ED5';
wwv_flow_imp.g_varchar2_table(180) := '03008095F13B19C64F578FC830BE2FC96BAA6700002BE31ED50300005685580600606FF5DDC592DCA57A0600B012BE90E4B9591D4F4D32568F0000568237FA0000CC89650000F6DE1D921C5C3D02005809B3EB97CEC8AA18C65928F3A4EA1900C04AB87A';
wwv_flow_imp.g_varchar2_table(181) := 'FAEE06D5230000568158060060EFDDBD7A0000B012DE98617C4756CF6B93BCA77A0400B0125CC5040020960100D814621900E07B499E9055348C1B491E99E447D5530080725EC3000010CB0000ECA5BEBB6192AB55CF0000CA3D2DC3F88DACAA61FC5492';
wwv_flow_imp.g_varchar2_table(182) := 'DFA99E010094BB75FAEE72D5230000AA89650000F6CEDDAA070000E53E98E455597DCF4DF285EA110040F9EF857EB67A04004035B10C00C0DEF9B9EA010040A9B3933C3CC3786E56DD309E9EE4B8EA19004039AF650000CD13CB0000ECA9BEBB6C92A3AA';
wwv_flow_imp.g_varchar2_table(183) := '670000A57E2FC3F8B14CC530FE7D923756CF00004ADD257DB75FF50800804A621900803D77E724FB568F0000CA9C94E459999EE3937CB77A040050E6506FFE01005A27960100D873EEF80680B63D26C3785AA666184F4EF2D4EA19004029AF6900004D13';
wwv_flow_imp.g_varchar2_table(184) := 'CB0000EC89BE9B7D1F75D7EA19004099376718FF3AD3F5EA24EFAF1E01009411CB00004D13CB0000EC999B2439AC7A040050E2D4248FCD940DE3B9491E91E4ACEA290040891BA5EFAE543D0200A08A58060060CF38550600DAF58C0CE3D73375C3F88924';
wwv_flow_imp.g_varchar2_table(185) := '2FAA9E010094D892E4CED5230000AA88650000F6CCB1D5030080121F4CF207591FBF95E48BD523008012DE080400346BCBC6C646F506008069E9BB4392FC6792FDAAA700004B7576929B67183F9675D2777749F2F6EA1900C0D28D492E3FBF9E1100A029';
wwv_flow_imp.g_varchar2_table(186) := '4E960100D87D7710CA0040935EB276A1CCCC30BE23C9EBAB6700004BD725B969F50800800A62190080DDE74E6F0068CF97933C2BEBEB0949BE533D020058BAD909730000CD11CB0000ECBE63AB0700004BF7C80CE30FB3AE86F19B499E5C3D0300583AB1';
wwv_flow_imp.g_varchar2_table(187) := '0C00D024B10C00C0EEE8BB2392FC54F50C0060A9DE90617C7BD6DF6B92BCBB7A0400B05447A5EF2E513D020060D9C4320000BBE78ED5030080A53A25C9F169C1306E2479449233ABA700004B734092DB578F00005836B10C00C0EEB973F5000060A94E98';
wwv_flow_imp.g_varchar2_table(188) := '5F51D48661FC4C92DFAE9E01002C9537060100CD11CB0000ECAABE9B7DEF7487EA1900C0D2CCAE24FA5F69CF0B927CAA7A0400B03477AA1E0000B06C621900805D776492AE7A0400B014672479F8FC6AA2B60CE3EC1AA6872769EF7F3B00B4E9C8F4DDE5';
wwv_flow_imp.g_varchar2_table(189) := 'AA4700002C9358060060D779A71500B4E3B7338C9F4DAB86F17D49FEA87A0600B0145B9CA40B00B4462C0300B0EBFE5BF5000060294E9C5F45D4BAA726F946F508006029EE583D00006099C4320000BBA2EFF64B72FBEA1900C0C29D9BE4D7328C3F4AEB';
wwv_flow_imp.g_varchar2_table(190) := '86F1BB491E533D0300580A6F1002009A22960100D835374B7270F5080060E15E9961FC40F58895318C6F4EF296EA1900C0C25D337D7795EA110000CB22960100D835EEEE0680F5F7B5244FAF1EB1821E9DE4D4EA1100C0C279ED0300688658060060D778';
wwv_flow_imp.g_varchar2_table(191) := 'C10800D6DFA3338CA2900B1AC6AF27795AF50C0060E15CC5040034432C0300B0337D774092DB54CF000016EA4D19C6B7568F58617F98E4FDD5230080853AA67A0000C0B28865000076EEA6490EAA1E01002CCC7793FC7AF58895368CE726F9B52467564F';
wwv_flow_imp.g_varchar2_table(192) := '010016E6EAE9BBC3AB4700002C8358060060E76E5F3D000058A813328C27578F5879C3F8C924CFAF9E01002CD46DAB0700002C8358060060E71C430C00EBEB5D495E533D62429E976416CD0000EBC96B20004013C432000017A5EFF64D7274F50C006021';
wwv_flow_imp.g_varchar2_table(193) := 'CE48F2F00CE346F590C918C6D9354C0F4B32BB960900583F3F533D00006019C432000017EDC6492E593D020058886765183F5F3D627286F10349FEA07A0600B010D74EDF5DA17A0400C0A2896500002EDAEDAA0700000BF191242FAA1E3161CF487252F5';
wwv_flow_imp.g_varchar2_table(194) := '08006021BC160200AC3DB10C00C045F3021100AC9FB3B75E25348CB367F6C4309E9AE4B8EA1900C042782D0400587B621900808BE6052200583F2FCE30FE5BF588C91BC6BF4DF2FAEA1900C0A6BB6DF50000804513CB0000EC48DF5D27C9E5AA6700009B';
wwv_flow_imp.g_varchar2_table(195) := 'EA73499E553D628D3C3EC9B7AB4700009BEA86E9BB43AA4700002C9258060060C78EAE1E00006CAA8D240FCF309E5E3D646D0CE32C9439BE7A0600B0A9F64D72EBEA1100008B24960100D831B10C00AC97576718FFA97AC4DA19C6D725995DC90400AC0F';
wwv_flow_imp.g_varchar2_table(196) := 'AF8900006B4D2C0300B0635E180280F5F1F5244FAE1EB1C61E99E4D4EA1100C0A6F19A0800B0D6C4320000DBD3775D92EB54CF000036CDA3328CDFAB1EB1B686F1AB499E563D0300D834B74ADFED573D02006051C4320000DB7754F5000060D3BC31C3F8';
wwv_flow_imp.g_varchar2_table(197) := 'D6EA110D786592F7568F000036C5C1498EAC1E0100B02862190080ED13CB00C07A18933CB67A4413867123C943939C513D0500D8145E1B0100D69658060060FBBC200400EBE17119C66F578F68C6307E2EC97FAF9E01006C8AA3AB0700002C8A580600E0';
wwv_flow_imp.g_varchar2_table(198) := '827E7C27F72DAA6700007BED6D19C6D7578F68D08B937CA87A0400B0D76E5D3D00006051C43200001736BB93FB12D5230080BD726A9247548F68D2309E3DBF8EE9ACEA2900C05EB946FAEEB0EA1100008B20960100B830EF9C0280E93B21C3F8F5EA11CD';
wwv_flow_imp.g_varchar2_table(199) := '1AC67F4FF2BCEA1900C05EBB55F50000804510CB00005C98580600A6ED5D49FEB87A04F9ED249FA81E0100EC15AF9100006B492C03007061DE350500D3F5C3240FC9306E540F69DE309E39BF8EE99CEA2900C01EBB65F50000804510CB00006CABEF0E4D';
wwv_flow_imp.g_varchar2_table(200) := '72EDEA1900C01E7B7A86F1CBD523981BC60F267971F50C00608FDD327DE7774900C0DAF10D0E00C04FBA79922DD52300803DF2CF497EBF7A0417F2AC249FAB1E0100EC9143925CA77A0400C06613CB0000FC24C70B03C0349DB1F5CA9F613CB77A081730';
wwv_flow_imp.g_varchar2_table(201) := '8C3FBE1A2BF1FF1B009826D75503006B472C0300F093C43200304DCFCC307EA67A043B308CEF4BF28AEA1900C01EB945F5000080CD26960100F849621900989EFF9BE425D523D8A9A727F952F5080060B789650080B5B3656363A37A0300C06AE8BB2B27';
wwv_flow_imp.g_varchar2_table(202) := 'F95AF50C0060B79C99E46619C613AB87B00BFAEE9824FF387B4DAA7A0A00B0CB7E94E4900CE3ECFB2E0080B5E064190080F339550600A6E73942990919C67F4AF247D5330080DD72409223AB4700006C26B10C00C0F96E563D0000D82D1F4AF2C2EA11EC';
wwv_flow_imp.g_varchar2_table(203) := 'B6272739A97A0400B05BBC660200AC15B10C00C0F9BCF00300D3715692876418CFAE1EC26E1AC653933C2C89BBC101603A9CC60B00AC15B10C00C0F9C43200301DCFCD307EBC7A047B6818FF3EC91F57CF000076D9CDAB0700006C26B10C00C04CDF5D2D';
wwv_flow_imp.g_varchar2_table(204) := 'C9E5AA670000BBE4A3497EBB7AC4FF63EFBEA37DBBEB3AFFBFAE8184402001779422020A088E8AA2A3E330A33F479D51C732CC3856D42DA2803405A4E3282514E9187AD982A10AD20411A44300431248E809104228C94E08C94DBFB9E7B7BE372712925B';
wwv_flow_imp.g_varchar2_table(205) := '4EF99EF3DEE5F158EB92B566AD59EBF98FF7249FF3DA9F0F9BF640CF3101C0687C7FDAE6D0EA0800806531960100B8825B6500603CCF2FB5E9FAC53F1933CF3101C0985C2BC90F544700002C8BB10C00C0158C6500603CCF2F7DB43A82A53EC7F4E2EA0C';
wwv_flow_imp.g_varchar2_table(206) := '00604DEE581D0000B02CC63200005770E00300C3E7F9A5697A409233AA23008003F2A111003019C632000057F891EA000060BF3CBF34555D7F6E923FA9CE00000EC8D909003019C63200006D73932437AECE0000F6CBF34B53D6F56FF61C13000CDE0FA6';
wwv_flow_imp.g_varchar2_table(207) := '6DAE5D1D0100B00CC6320000C90F57070000FBE5F9A579F8B3245FAC8E0000F6E99024B7AB8E0000580663190000D70803C090797E692EBAFEBC24774BB2529D0200EC9333140060128C650000DC2C030043F668CF2FCD48D7BF2DC90BAA3300807D7286';
wwv_flow_imp.g_varchar2_table(208) := '02004C82B10C0080831E0018AAE3923CAE3A826DF740CF3101C0603943010026C158060098B7B6392CC9F756670000D770C9EAF34BBBAA43D8669E630280213396010026C158060098BB1FF0EF440030488F4AD77FBC3A82229E630280A1BA61DAE6E6D5';
wwv_flow_imp.g_varchar2_table(209) := '1100009BE5174300C0DCF9220A0086F9FCD213AB2328F780249FAF8E0000AEE187AA03000036CB58060098BB1FAC0E0000BEC5C5497ECFF34BA4EBCF4F7257CF3101C0E018CB0000A3672C0300CC9D031E00189647A6EB3F551DC14074FDBB923CAB3A03';
wwv_flow_imp.g_varchar2_table(210) := '00F81677A80E0000D82C63190060EE8C650060383E98E4A9D5110CCE43929C521D0100FC3BB7F40200A3672C0300CC57DBDC32C90DAA3300803D2E4CF2FBE9FACBAB431898AEDF99E40F93ECAE4E0100F6B86DDAE690EA080080CD30960100E6EC07AA03';
wwv_flow_imp.g_varchar2_table(211) := '00807FF7B074FD67AB2318A8AE7F5F9267546700007B5C2BC9EDAA23000036C358060098336319001886F7247966750483F7B0249FAA8E0000F6F0AC3500306AC63200C09C19CB0040BDC5133B7F90AEF7C40EFBD7F5172D1ED24CE2A92E00A8E74C0500';
wwv_flow_imp.g_varchar2_table(212) := '183563190060CE7EB03A0000C883D2F55FA88E6024BAFE43499E589D0100E43F540700006C86B10C00304F6DE37D6D00A8F72F499E531DC1E8FC759293AB230060E6DC2C03008C9AB10C003057B74E7270750400CCD87949EE96AE5FA90E6164BAFE9224';
wwv_flow_imp.g_varchar2_table(213) := 'BF9FE4B2EA140098B15BA46D6E501D0100B051C63200C05CDDBE3A000066EEBEE9FAD3AB2318A9AE3F21C963AB330060E69CAD0000A3652C0300CC95EB8201A0CE9BD2F57F571DC1E81D95E4B8EA080098B1EFAF0E0000D82863190060AE1CE800408DB3';
wwv_flow_imp.g_varchar2_table(214) := '93FC71750413D0F58B6798DA248B67990080EDE743240060B48C650080B9329601801AF74AD77FB53A8289E8FA8F277944750600CC9467980080D132960100E6A76DAE95E476D519003043AF4ED7BFB23A82C9796A920F544700C00C19CB0000A3652C03';
wwv_flow_imp.g_varchar2_table(215) := '00CCD1AD921C5C1D010033B3B84DE64FAB2398A0AEBF3CC91F24B9B03A050066E616699BC3AA23000036C258060098235F3E01C0F6BB7BBABEAF8E60A2BAFE94240FAACE008099D991E436D51100001B612C0300CC91B10C006CAF2E5DFF86EA0826EF59';
wwv_flow_imp.g_varchar2_table(216) := '49FEB53A020066E6FBAB03000036C258060098A3DB550700C08C7C31C99F554730035DBF92E40F939C579D020033F27DD50100001B612C0300CC91B10C006C8FC578E18FD2F5DFA80E6126BAFEF424F7ABCE00801971B30C00304AC63200C01C19CB00C0';
wwv_flow_imp.g_varchar2_table(217) := 'F67856BAFEEDD511CC4CD77749DE589D01003371DBEA0000808D30960100E6A56DBE33C911D5190030039F4DF2E0EA0866EB4F929C5D1D01003370DBB4CD41D5110000EB652C0300CC8DB7B40160EB5DBE98A8A6EB2FA80E61A6BAFEAB49EE519D010033';
wwv_flow_imp.g_varchar2_table(218) := '7048925B54470000AC97B10C003037B7A90E0080197872BAFE03D511CC5CD7FF439297556700C00CF8300900181D631900606E6E5F1D000013777292BFAC8E8055F74D72467504004CDC6DAB030000D6CB580600989B5B570700C0845D96E4F7D2F59754';
wwv_flow_imp.g_varchar2_table(219) := '87C01E5D7F76923F4EB2529D020013E6165F0060748C650080B9713530006C9D47A5EB4FAC8E806FD1F56F49F2FCEA0C0098B0DB55070000AC97B10C00301F6D735092EFA9CE008089FAB7248FAF8E807D784092CF574700C044B9C51700181D63190060';
wwv_flow_imp.g_varchar2_table(220) := '4E6E99E4E0EA080098A08B579F5FDA551D027BD5F53B93FC4192DDD529003041374FDB5CA73A0200603D8C65008039F1A513006C8D87A4EB3F5D1D01FBD5F5EF4DF2D4EA0C0098E8EF9A6E531D0100B01EC63200C09C38B80180E57B6792675647C01A3D';
wwv_flow_imp.g_varchar2_table(221) := '22C927AA23006082BEB73A0000603D8C6500803971B30C002CD77949FE305DEF691BC6A1EBAF78322CB9AC3A050026C6990B00302AC63200C09C38B80180E5BA7FBAFEB4EA085897AE3F3EC963AA330060629CB90000A3622C0300CC892B81016079FE29';
wwv_flow_imp.g_varchar2_table(222) := '5DFFC2EA08D8A0A3921C571D010013622C03008C8AB10C00300F6D735092EFA9CE008089383BC9DDAA2360C3BA7E5792BB24593CCB04006C9E0F9400805131960100E6E2BB921C5C1D01001371CF74FD57AB236053BAFED3491E5A9D01001371F3B48D73';
wwv_flow_imp.g_varchar2_table(223) := '170060348C650080B970AB0C002CC7CBD2F5AFAE8E802579469277564700C0042C6EF4BD65750400C05A19CB000073612C03009B774692FB5447C0D274FDEE247F98E4BCEA14009800672F00C06818CB000073E1ED6C00D89C9524774BD79F531D024BD5';
wwv_flow_imp.g_varchar2_table(224) := 'F5A725F9B3EA0C00980063190060348C650080B9706003009BF3BC74FD3F5747C096E8FA172779637506008C9CB3170060348C650080B9706003001BF7B9240FAC8E802DF62749CEAA8E00801173F602008C86B10C003017B7AA0E008091DA9DE40FD2F5';
wwv_flow_imp.g_varchar2_table(225) := '3BAB43604B75FD5793DCA33A030046CCD90B00301AC63200C0F4B5CD0D9234D5190030524F4ED7BFAF3A02B645D7BF36C9DF576700C04819CB0000A3612C0300CCC12DAB030060A44E4EF297D511B0CDEE93E48CEA080018A1C3D33637AA8E0000580B63';
wwv_flow_imp.g_varchar2_table(226) := '1900600E6E511D000023745992DF4FD75F5C1D02DBAAEBCF4DF2874956AA530060849CC10000A3602C0300CC819B650060FD1E93AE3FA13A024A74FDDB923CBB3A030046C8190C00300AC63200C01C38A80180F5392EC951D51150ECC1494EAD8E008091';
wwv_flow_imp.g_varchar2_table(227) := '710603008C82B10C0030070E6A0060ED16CF2EFD5EBA7E57750894EAFA9D49DA24BBAB530060449CC10000A3602C0300CC81831A0058BB47A6EB3F551D0183D0F5EF4BF294EA0C001811673000C02818CB000073708BEA00001889F71A06C0353C328901';
wwv_flow_imp.g_varchar2_table(228) := '1900AC8D33180060148C650080696B9BC3927C7B7506008CC00549EE9AAEF7E40C5C55D72F9E26BB4B124F9301C08119CB0000A3602C03004CDD77570700C0483C285D7F4A75040C52D77F24C913AA330060048E48DBDCA03A0200E0408C650080A9BB79';
wwv_flow_imp.g_varchar2_table(229) := '7500008CC03B933CBB3A0206EED1494EAC8E00801170BB0C003078C63200C0D439A00180FD3B7FF5F9A595EA1018B4AEBF64F1C86792CBAA530060E07CB804000C9EB10C0030759E610280FDBB7FBAFE0BD511300A5DFFD1248FADCE0080813396010006';
wwv_flow_imp.g_varchar2_table(230) := 'CF580600983A631900D8B77F49F2C2EA081899A33CC70400FBE5965F0060F08C650080A9FBAEEA000018A8F392DCCDF34BB04E5DBF7886E9F7932C9E650200AEC9590C003078C63200C0D439A00180BD7B40BAFEF4EA0818A5AE3F29C9A3AA330060A0DC';
wwv_flow_imp.g_varchar2_table(231) := 'F20B000C9EB10C0030750E6800E09A3CBF049BF7C424C7554700C000F9700900183C63190060BADAE63B931C529D010003E3F9255886AEDFB5F8374ECF3101C03518CB000083672C03004CD94DAA030060803CBF04CBD2F51FF71C13005CC321AB1F3001';
wwv_flow_imp.g_varchar2_table(232) := '000C96B10C003065BE6402806FE5F925D89AE7988EAF8E008081F10113003068C63200C09419CB00C037797E09B6EE39A6BB26B9AC3A050006C4990C003068C63200C094399801806F7AA0E797608B74FD47933CB63A030006E466D5010000FB632C0300';
wwv_flow_imp.g_varchar2_table(233) := '4CD94DAB03006020DE99E405D5113071472539B13A020006C2074C00C0A019CB000053662C0300C9CE3D4FC4787E09B656D75FB6FA1CD3E2592600983B673200C0A019CB00005376F3EA0000188087A6EBBF501D01B3D0F5272479427506000C80B10C00';
wwv_flow_imp.g_varchar2_table(234) := '3068C63200C094DDA43A00008ABD37C9B3AA2360661E9DE413D5110050CC334C00C0A019CB0000D3D4368726B96175060014BA78F5F9A5DDD521302B5D7FC9EA734C9757A70040A11B57070000EC8FB10C00305537AB0E0080628F4CD79F521D01B3D4F5';
wwv_flow_imp.g_varchar2_table(235) := '1F4AF2F4EA0C0028D4A46D0EA98E0000D81763190060AABEB33A00000A1D97E4A9D51130738F4C62B006C09C791E1B00182C63190060AA6E5A1D0000452E5B3C4898AEF7040C54EAFA0B93FC719295EA140028E229260060B08C650080A9722003C05C3D';
wwv_flow_imp.g_varchar2_table(236) := '365DFFF1EA0860CF60E65D499E579D0100453C910D000C96B10C0030556E9601608E4E4EF2F8EA08E05B3C28C919D5110050E03BAA030000F6C5580600982A37CB0030378B6797EE96AEBFA43A04B88AAE3F2FC93DAA3300A0809B650080C132960100A6';
wwv_flow_imp.g_varchar2_table(237) := 'CA580680B97966BAFE43D511C05E74FD9B92BCBC3A0300B6999B650080C132960100A6CA58068039F97C9247544700FB75BF2467574700C036F24436003058C63200C05419CB003027774FD75F501D01EC47D79F95E4CFAB3300601BB9590600182C6319';
wwv_flow_imp.g_varchar2_table(238) := '00607ADA66F1EF3847566700C036F9BB74FDDBAA238035E8FA9726796B7506006C1337CB000083652C03004CD1622873507504006C8333933CA03A025897BB27D9591D0100DBC0874C00C06019CB000053E49A5F00E6E27EE9FAB3AB238075E8FAD3923C';
wwv_flow_imp.g_varchar2_table(239) := 'B23A0300B6C1C1699B1B55470000EC8DB10C003045DF591D0000DBE09FD2F5AFA88E0036E49949FEAD3A0200B6810F9A00804132960100A6C835BF004CDDE209977B5647001BD4F59727F9A3249755A700C016734603000C92B10C0030456E960160EA1E';
wwv_flow_imp.g_varchar2_table(240) := '9EAE3FBD3A02D884AE3F29C993AA3300608BDDB83A0000606F8C6500802972C52F0053F6E124475747004BF1E824A7544700C0166AAA030000F6C6580600982257FC023055BB92FCF1EA132EC0D875FD4549EE9E64A53A0500B688DB7F01804132960100';
wwv_flow_imp.g_varchar2_table(241) := 'A6C815BF004CD593D3F51FAB8E0096A8EBDF91E425D51900B045DCFE0B000C92B10C003045AEF805608A3E97E451D511C096786092BE3A0200B680331A0060908C65008029FAF6EA0000D802F74CD75F581D016C81AE5F0C65EE5F9D01005BC0CD3200C0';
wwv_flow_imp.g_varchar2_table(242) := '2019CB000053E43D6C00A6E665E9FA7FA98E00B6D4DF27F9D7EA080058B223AB030000F6C65806009896B63938C90DAA33006089BEEEC6099881AE5FD97383547271750A002C91679800804132960100A6C6210C0053F3E074FDD7AA23806DD0F59F4D72';
wwv_flow_imp.g_varchar2_table(243) := '547506002C91A7B201804132960100A6C6210C0053F2FE242FA88E00B6D513937CB23A020096E4A0B48DB31A0060708C650080A9F1163600537159923F597D9A05988BAEBF64F53926FFB70FC054B8051800181C631900606A7CAD04C0543C395DFF89EA';
wwv_flow_imp.g_varchar2_table(244) := '08A040D7BF3BC9DF556700C092DCB03A0000E0EA8C650080A9319601600ABE90E4D1D51140A9BF4872767504002C81B31A0060708C650080A9710003C014DC2B5D7F61750450A8EBFB240FAECE008025F06436003038C63200C0D4DCA83A000036E935E9';
wwv_flow_imp.g_varchar2_table(245) := 'FA3757470083F0A224EFAF8E00804DF26113003038C63200C0D4F85A0980313B3FC99F55470003D1F52B49EE916457750A006C820F9B0080C131960100A6C6010C0063F6D7E9FA2F55470003D2F52727796A7506006C82B31A0060708C650080A9710003';
wwv_flow_imp.g_varchar2_table(246) := 'C0589D94E4E9D511C0203D2AC9E9D51100B041CE6A0080C131960100A6E686D50100B0018BA756EE99AEF7D40A704D5DBFD3136D008C98B10C003038C63200C0D4388001608C5E9CAE7F7F750430605DFFDA246FA9CE00800D705603000C8EB10C003035';
wwv_flow_imp.g_varchar2_table(247) := '6E9601606CCE49F2D0EA086014EE9DE4E2EA08005827673500C0E018CB0000D3D136D74F72EDEA0C0058A787A5EBCFAC8E0046A0EB3F97E409D51900B04EDF5E1D00007075C63200C094F8520980B1392EC9F3AB238051797C9253AB2300601D6E90B6F1';
wwv_flow_imp.g_varchar2_table(248) := 'FB28006050FCCB09003025C632008CC9EE24F74AD72FFE09B0365DBF7886E9BED51900B04ECE6C00804131960100A6E4F0EA0000588717A6EB3F5C1D018C50D7BF39C91BAA3300601D8C6500804131960100A6C4C10B0063714E9287554700A376BF2417';
wwv_flow_imp.g_varchar2_table(249) := '554700C01AF9C009001814631900604A8EA80E0080357A58BABEAF8E0046ACEBBF90E471D51900B046CE6C00804131960100A6C4C10B0063705C92E757470093F037493E5F1D01006BE0CC06001814631900604A1CBC0030742B49EE9DAEDF5D1D024C40';
wwv_flow_imp.g_varchar2_table(250) := 'D75FBCFA1C13000C9D331B0060508C6500802971F002C0D0BD385DFFA1EA086042BAFE8D49DE529D0100077078750000C05519CB000053E2E0058021FB4692875547009374DF2497564700C07E38B3010006C55806009812072F000CD95FA5EBBF561D01';
wwv_flow_imp.g_varchar2_table(251) := '4C50D79F92E429D51900B01FCE6C00804131960100A6C4C10B0043F589247F5B1D014CDA5149CEA88E00807D706603000C8AB10C00302537A80E00807DB86FBA7E57750430615D7F7E9207576700C03E1C511D00007055C63200C094F84A098021FAC774';
wwv_flow_imp.g_varchar2_table(252) := 'FDBF564700B3F0B2241FA88E0080BDF08113003028C63200C09438780160682E4E72FFEA086026BA7E25C97D92ECAE4E0180AB716603000C8AB10C003025D7AF0E0080AB7952BAFE0BD511C08C74FDF1495E549D010057632C03000C8AB10C00300D6D73';
wwv_flow_imp.g_varchar2_table(253) := '5092EB556700C0559C91E4F1D511C02C3D22C937AA2300E02A7CE004000C8AB10C0030150E5D00189A07A5EB2FA88E0066A8EBBF96E4D1D5190070156E96010006C5580600988A23AA0300E02A3E98E4E5D511C0AC3D33C967AA230060D5F5D2363BAA23';
wwv_flow_imp.g_varchar2_table(254) := '0000AE642C03004CC561D50100B06A25C97DD3F58B7F02D4E8FA4B933CB03A0300AEE2F0EA0000802B19CB000053612C03C050BC345DFF6FD51100E9FA3726795B750600ACF21413003018C63200C0545CAF3A0000925C90E4A1D511005771FF24BBAA23';
wwv_flow_imp.g_varchar2_table(255) := '00C0D90D003024C63200C054B8590680217862BAFECBD51100FFAEEB4F4EF2FCEA0C003096010086C4580600988A23AA030098BD2F2579527504C05EFCBF24DFA88E0060F68C650080C130960100A6C2810B00D51E9AAEBFB03A02E01ABAFEAC248FA9CE';
wwv_flow_imp.g_varchar2_table(256) := '0060F67CE804000C86B10C003015D7AD0E0060D6FE2DC931D51100FBF1CC249FAB8E0060D69CDD000083612C03004C859B6500A874FF74FD4A7504C03E75FD25491E5C9D01C0AC19CB000083612C03004CC5E1D50100CCD66BD2F5EFAB8E005883D724F1';
wwv_flow_imp.g_varchar2_table(257) := 'F71500550EAB0E0000B892B10C00301587560700304B97BAA901188D2B6EC07A401237610150E106D50100005732960100A6C25806800A47A7EB4FAD8E0058B3AEFF709257566700304BCE6E0080C130960100A6C2334C006CB773933CA63A0260031E9A';
wwv_flow_imp.g_varchar2_table(258) := 'E492EA080066C7580600180C631900602A1CB800B0DD1E93AE3FA73A0260DDBAFE0B499E599D01C0ECF8D00900180C631900602A0EA90E00605616BF68FEDBEA08804D382A89C11F00DBC9D90D003018C63200C0541C511D00C0AC3C3C5DEF091360BCBA';
wwv_flow_imp.g_varchar2_table(259) := 'FEEB491E5B9D01C0AC5CB73A0000E04AC63200C054F83A0980EDF291242FAF8E005882A3576FCA0280ED70FDEA0000802B19CB0000537168750000B3F1A074FD4A7504C0A65D7143D623AA3300988D83AB030000AE642C03004CC561D50100CCC23FA7EB';
wwv_flow_imp.g_varchar2_table(260) := 'DF511D01B0448B9BB28EAF8E006016DC2C03000C86B10C003015D7AE0E0060F2762779707504C05275BDBFDB00D82ED7A90E0000B892B10C003015875707003079C7A4EB3F561D01B0745DFFF6248B3F00B0958C650080C130960100C6AF6DDC2A03C056';
wwv_flow_imp.g_varchar2_table(261) := 'BB34C923AB2300B6D0E2769995EA080026CD13DA00C06018CB00005370BDEA000026EF59E9FAD3AA2300B64CD71F9FE455D519004CDAB5AA030000AE642C03004CC121D501004CDAF9491E5B1D01B00D1E9E645775040093E5096D0060308C6500802938';
wwv_flow_imp.g_varchar2_table(262) := 'B43A0080497B72BABEAF8E00D8725D7F6A921754670030593BAA030000AE642C03004CC175AA030098ACC548E6C9D51100DBE851492EAA8E0060A2DAE688EA04008005631900600A8C6500D82A8F49D7EFAC8E00D8365DFF9524CFA8CE00000080AD642C';
wwv_flow_imp.g_varchar2_table(263) := '03004CC121D501004CD217933CB73A02A0C013939C5B1D01C024B95906001804631900600ADC2C03C0567854BAFEE2EA08806DD7F5E778820E0000802933960100A6E0E0EA000026E794247F571D0150E86949FAEA080026E706D50100000BC63200C014';
wwv_flow_imp.g_varchar2_table(264) := '5CB73A0080C97964BA7E5775044099AEDF99E4B1D519004C8EDF4B010083E05F4A008029D8511D00C0A47C3CC9ABAA230006E0B949BE521D01C0A4F8E009001804631900600A0EAF0E0060521E9EAEDF5D1D0150AEEB2F4AF2D7D519004CCAB5AB030000';
wwv_flow_imp.g_varchar2_table(265) := '168C65000000E09B4E48F286EA0880017971922F5647003019C63200C02018CB00005370BDEA000026E311E9FA95EA0880C1E8FA4B933CAA3A0380C9708603000C82B10C003005BE4A0260193E98AE7F737504C000FD5D9253AA2300000060598C650080';
wwv_flow_imp.g_varchar2_table(266) := '29D8511D00C024FC557500C02075FDAE248FA9CE0060120EAB0E00005830960100A6E0F0EA00002671ABCC5BAB230006EC18B7CB00B004D7AA0E000058309601000000B7CA00EC9FDB650000009810631900600A0EAA0E0060D4DC2A03B0366E970160B3';
wwv_flow_imp.g_varchar2_table(267) := 'DC0E0C000C82B10C003005D7AF0E0060D4DC2A03B0166E970160F376540700002C18CB00000030676E9501581FB7CB000000307AC63200C014F82A09808D72AB0CC07AB85D0680CDB941750000C082B10C003005DEBB0660233EEC5619800DDF2E735A75';
wwv_flow_imp.g_varchar2_table(268) := '0400A3E4F75200C020F89712000000E6EAA8EA008011DF2EF3B8EA0C000000D8286319000000E6E884246FA88E0018B1172739BD3A0280D139B83A000060C1580600988243AA0300189DC7A7EB57AA230046ABEB2F4DF2E4EA0C0046E7BAD50100000BC6';
wwv_flow_imp.g_varchar2_table(269) := '3200C0141C5A1D00C0A87C32C93F5447004CC0F3929C591D01000000EB652C030000C0DC3C215DBFBB3A0260F4BAFEA2244FA9CE00000080F53296010000604EBE98E498EA088009794E9273AB2300188D6B550700002C18CB000053B0A33A008051DD2A';
wwv_flow_imp.g_varchar2_table(270) := 'B3AB3A026032BAFE1B498EAECE0060340EAB0E00005830960100A6E0F0EA000046E1CC242FAE8E0098A0A727593CC904000000A3602C030000C05C3C2D5DEF97B900CBD6F5672579617506000000AC95B10C00000073707E92675747004CD8939278E60E';
wwv_flow_imp.g_varchar2_table(271) := '000080513096010000600E9E93AE3FB73A0260B2BAFEB424AFACCE00000080B5309601000060EA2E4DF2F4EA08801978629295EA080006EDF0EA00008005631900600AAE551D00C0A01D93AE3FA33A0260F2BAFE6349FEA53A038041DB511D0000B0602C';
wwv_flow_imp.g_varchar2_table(272) := '03004CC161D501000CD6E2868327554700CCC8DF5407000000C08118CB00000030656F4ED77FA23A026036BAFE5F939C509D01000000FB632C030000C0943DB93A006086DCE8050000C0A019CB0000003055C7A7EBDF591D013043AF4A727A7504000000';
wwv_flow_imp.g_varchar2_table(273) := 'EC8BB10C00000053F594EA008059EAFA5D499E519D01000000FB622C030000C0147D69F56603006ABC20C9CEEA08000000D81B6319000000A6E8E874FD65D51100B3D5F5E72679517506000000EC8DB10C00000053736192E755470090A727D95D1D01C0';
wwv_flow_imp.g_varchar2_table(274) := 'A01C521D0000B0602C030000C0D4BC245D7F4E7504C0EC75FDE792BCB13A03804139B43A000060C15806000080295959BDC9008061F0773200000083632C030000C094BC2D5DFFA9EA08005675FD3B939C549D0100000057652C030000C0943CB33A0080';
wwv_flow_imp.g_varchar2_table(275) := '6BF0773300000083622C030000C0549C9AE4CDD511005CC33149CEA98E000000802B19CB000000301547A7EB7757470070355D7F6192175767000000C0958C650000009882C52F62BBEA0800F6E9E824068D0000000C82B10C00000053F0B274FDD7AB23';
wwv_flow_imp.g_varchar2_table(276) := '00D887AEFF7C92B75467000000C082B10C00000053B9B10080617B5675000000002C18CB0000003076C7A6EB4FAC8E00E080FE39C9E2861900E66B67750000C082B10C00000063F79CEA0000D6A0EB7727795E750600A576550700002C18CB0000003066';
wwv_flow_imp.g_varchar2_table(277) := 'E72479557504006BF6A224975647000000306FC6320000008CD94BD2F517574700B0465D7F6692D75567000000306FC6320000008C99E73C00C6E7B9D501000000CC9BB10C00000063F5DE74FD27AB230058B7772639A53A02000080F9329601000060AC';
wwv_flow_imp.g_varchar2_table(278) := 'DC2A0330465DBFE2EF700000002A19CB0000003046E726794D7504001BF6D224975547000000304FC63200C0147CA33A00806D774CBAFEA2EA080036A8EBBF9AE44DD519000000CC93B10C0030058B6BDC01989717560700B069FE2E07989F5DD5010000';
wwv_flow_imp.g_varchar2_table(279) := '0BC6320000008CCD89E9FA13AA2300D8B4B726F94A750400DB6A67750000C082B10C00000063F3A2EA000096A0EB17B70BBCA43A03000080F93196010000604C2E4DF2F2EA080096E6C5D501000000CC8FB10C003005BBAB0300D8366F4AD7F7D511002C';
wwv_flow_imp.g_varchar2_table(280) := '49D77F3AC907AB330000009817631900600ACEAB0E0060DB78AE03607AFCDD0E0000C0B63296010000602C1637CABCB93A0280A57B65924BAA2300D816DFA80E0000583096010000602C5E99AEBFAC3A028025EBFA738C21016663A53A000060C1580600';
wwv_flow_imp.g_varchar2_table(281) := '0080B1F04C07C074BDB43A00000080F930960100A660677500005BEE9474FD87AB2300D8328B9B65CEAD8E000000601E8C65008029D8551D00C0963BA63A00802DD4F5972479757506005BEEFCEA000080056319000000C6E0E5D501006C397FD7034CDF';
wwv_flow_imp.g_varchar2_table(282) := 'E5D50100000BC63200C014ECAE0E00604B7D245DFFE9EA0800B6DCBB937CB93A02000080E933960100A6E0BCEA0000B6D4ABAA0300D8065DBF18C17B8A0960DA2EAB0E000058309601000060C85692BCA23A02806DE329268069BBA03A000060C1580600';
wwv_flow_imp.g_varchar2_table(283) := '008021FB50BAFE8BD511006C9B0F27F1F73E0000005BCA580600988273AB0300D8329EE3009893AE5FDC28E6EF7E80E9DA551D0000B0602C030000C0502D7E61FA0FD511006C3B631980E9DA591D0000B0602C03004CC1EEEA0000B684279800E6C9534C';
wwv_flow_imp.g_varchar2_table(284) := '0000006C29631900600ACEAB0E00604BBCAE3A0080B2A7985E5F9D01C096B8A43A000060C15806000080A1F20413C07CF91900304D17550700002C18CB00005370717500004B7752BAFED4EA0800CABC3FC959D5110000004C93B10C003005C63200D3E3';
wwv_flow_imp.g_varchar2_table(285) := '09268039EBFACB93BCB13A0380A5F39436003008C63200C014ECAE0E0060E95E5F1D0040393F0B00A6C7190E003008C63200C014F82A09605ACE48727C750400E5DE96E4A2EA080096CAEDC000C02018CB00000030346F4CD7AF54470050ACEB174399B7';
wwv_flow_imp.g_varchar2_table(286) := '576700B05497540700002C18CB000053707E7500004BF5A6EA000006C3CF048069B9AC3A000060C15806009882CBAB0300589AC52D02EFA88E006030DE5C1D00C0525D501D0000B0602C03004C81831680E978D7EAB31B00B0788AE94B494EACCE006069';
wwv_flow_imp.g_varchar2_table(287) := '7CF004000C82B10C003005BBAA0300581A37080070756FA90E0060693CA50D000C82B10C0030056E9601980EBF1005E0EAFEB93A0080A571B30C003008C63200C0145C561D00C0529C9AAE3FB53A0280C139D64D040013D1F5FE3E070006C15806009882';
wwv_flow_imp.g_varchar2_table(288) := '9DD501002CC55BAB030018A0AE5F8CE3DF519D01C0A679461B00180C631900600A1CB6004CC3DBAA0300182C3F2300C6CFC74E00C06018CB000053705E7500009B767992775647003058C63200E37749750000C0958C650080F1EBFADD49167F0018AFE3';
wwv_flow_imp.g_varchar2_table(289) := 'D2F5DFA88E0060A0BAFE3349BE549D01C0A65C541D00007025631900602ADC2E03306EEFA80E0060F0FEB53A00804DB9A03A0000E04AC63200C054B8CA1760DCFC02148003F15C1FC0B85D561D00007025631900602A5CE50B305E972639B63A0280C17B';
wwv_flow_imp.g_varchar2_table(290) := '777500009B726E750000C0958C650080A9D8591D00C0861D97AEBFB03A028081EBFA2F2459FC0160BC237900804130960100A6C2334C00E3F59EEA000046E37DD501006C98813C003018C63200C0549C5F1D00C086BDB73A0080D1F0330360BC9CDD0000';
wwv_flow_imp.g_varchar2_table(291) := '83612C03004C85AF9300C669779263AB2300180D631980F1722B30003018C63200C0545C5C1D00C0867C325DFFF5EA080046E35349FCDC0018A79DD50100005732960100A6E2BCEA000036E4FDD501008C48D7AF24F9607506001B622C03000C86B10C00';
wwv_flow_imp.g_varchar2_table(292) := '301517540700B0211FAA0E0060743CDF07304E17550700005CC9580600980A072E00E3E4760000D6CBD012609C7CE804000C86B10C003015AEF205189FF3937CAA3A0280D1392EC9E2392600C6C513DA00C06018CB000053E1C005607C4E48D7EFAE8E00';
wwv_flow_imp.g_varchar2_table(293) := '6064BAFE9C24A7546700B06E17560700005CC9580600980A072E00E3BC19000036E223D50100AC9B67980080C130960100A6C2810BC0F8F84527001BE56708C0389F6105001804631900602A1CB8008CCF09D501008CD689D50100AC9BB31B0060308C65';
wwv_flow_imp.g_varchar2_table(294) := '0080A9F846750000EB7E3EEF33D511008CD647AB03005837B702030083612C03004C850317807139395D7F7975040023D5F56725F972750600EBB2B33A0000E04AC63200C054387001189793AA030018BD8F550700B02E9E61020006C3580600980A6319';
wwv_flow_imp.g_varchar2_table(295) := '807131960160B33E5E1D00C03A74FD79D50900005732960100A6C2D74900E3E2179C006C96E125C07818CA000083622C03004C43D79F5B9D00C0BA7CAA3A0080D1F3B304603C7CE404000C8AB10C0030250E5E00C6E1FC74FD97AA2300183D631980F170';
wwv_flow_imp.g_varchar2_table(296) := 'B30C003028C63200C0943878011887CF54070030015DFF8D245FADCE00604D9CD9000083622C03004C8983178071F87475000093F1D9EA0000D6C4990D003028C63200C094387801188753AA0300980C3F5300C6C1990D003028C63200C0942CAE610760';
wwv_flow_imp.g_varchar2_table(297) := 'F84EAD0E0060328C6500C6C1990D003028C63200C0943878011887CF57070030197EA6008C839B6500804131960100A6C45806601C4EAB0E006032BE501D00C09A9C5B1D00007055C63200C09418CB000CDFAE24675447003019069800E3602C03000C8A';
wwv_flow_imp.g_varchar2_table(298) := 'B10C0030250E5E0086EF8C74FDE5D511004CC657935C561D01C001F9C009001814631900604A8C650086CFAD32002C4FD7EF4EF295EA0C000EC8990D003028C63200C09438780118BE2F5507003039869800C3E7CC06001814631900604A1CBC000CDFD7';
wwv_flow_imp.g_varchar2_table(299) := 'AA0300989C2F57070070409E61020006C55806009812631980E1F3540600CB766675000007E4CC06001814631900604A1CBC000CDF59D501004C8EB10CC0F07DBD3A0000E0AA8C6500802971F002307C7D75000093632C03306C2BE97A1F38010083622C';
wwv_flow_imp.g_varchar2_table(300) := '03004C89B10CC0F019CB00B06CE7540700B05FCE6B0080C131960100A6A3EB2F4C7249750600FBE58B520096CD2F610186CDA81100181C631900606A1CC0000CDB37AA0300981C434C8061336A040006C7580600981A073000C3767E75000093B3B33A00';
wwv_flow_imp.g_varchar2_table(301) := '80FDF26113003038C63200C0D438800118B2AEF7F53F00CB7641750000FBE5AC0600181C631900606A1CC0000CD785D501004C922126C0B0B9051800181C631900606AFAEA0000F6E9D2EA000026E9B2EA0000F6EBECEA000080AB33960100A6C6010CC0';
wwv_flow_imp.g_varchar2_table(302) := '70EDAC0E006082BADE334C00C3E6AC0600181C631900606A3CC304305CBBAA030000806DE716600060708C650080A9F1B5120000CC8FA7FE0086CB874D00C0E018CB000053632C030000F37361750000FBE4AC0600181C631900606ACEAC0E00000000E0';
wwv_flow_imp.g_varchar2_table(303) := 'DFB9590600181C631900606A1CC0000000000CC759D501000057672C03004C8DAB7D0100607E8EA80E0060AF2E4DD77FA33A0200E0EA8C650080A93196010000001806E73400C02019CB0000D3D2F5BB92F4D51900ECD5B5AA030000806DE58C06001824';
wwv_flow_imp.g_varchar2_table(304) := '631900608A7CB504304C8755070030416D73BDEA0400F6E96BD50100007B632C03004C91AF960086E9A0EA000026E9DAD50100EC93331A0060908C65008029F2D512C0305DBF3A008049F2F30560B88C6500804132960100A6E8ACEA0000F6C15319002C';
wwv_flow_imp.g_varchar2_table(305) := 'DFA1D50100ECD357AB030000F6C658060098225F2D010C97B10C00CB7658750000FBE483260060908C65008029FA4A750000FB7483EA000026C7334C00C3652C03000C92B10C0030450E620086EBF0EA000026E788EA0000F6C9334C00C02019CB000053';
wwv_flow_imp.g_varchar2_table(306) := '7466750000FBE4179A002CDB0DAB0300D8274F65030083642C03004CD1D7AA0300D8A71B5507003039DF5E1D00C03EB95906001824631900608ADC2C03305C7EA109C0B2F9D902304C17A5EBCFAF8E0000D81B631900607ABAFEEC2497566700B0574756';
wwv_flow_imp.g_varchar2_table(307) := '070030394D7500007BE556190060B08C650080A93AAB3A0080BDFACEEA000026E7C6D50100EC9567B20180C132960100A6EACBD50100ECD57754070030397EB6000C939B650080C132960100A6EACCEA0000F6EA66D501004C8E9F2D00C3642C03000C96';
wwv_flow_imp.g_varchar2_table(308) := 'B10C00305567540700B05737AD0E006042DA6671BEE9192680613296010006CB580600982A37CB000CD34DD3363BAA2300988CC550E65AD51100ECD557AA030000F6C558060098AA2F570700B05707BB01008025BA79750000FB642C03000C96B10C0030';
wwv_flow_imp.g_varchar2_table(309) := '55AEFA0518AEEFAE0E0060326E591D00C03E399B010006CB580600982A37CB000CD7ADAA0300980C631980E1723603000C96B10C003055AEFA0518AEEFA90E006032BEB73A0080BD5A497266750400C0BE18CB000053E5AA5F80E132960160596E5D1D00';
wwv_flow_imp.g_varchar2_table(310) := 'C05E7D2D5D7F59750400C0BE18CB0000D3D4F597FA820960B06E531D00C06418CB000C93279800804133960100A6CCC10CC0307D5F75000013D036D74BF25DD51900EC95E7B101804133960100A6CCC10CC0307D67DAE688EA0800267153D98EEA0800F6';
wwv_flow_imp.g_varchar2_table(311) := 'EA4BD5010000FB632C03004CD9E9D50100ECD3EDAA030018BDEFAF0E00609FDCF60B000C9AB10C0030650E660086CB2F3801D82C3F4B0086CB990C003068C63200C0949D511D00C03EFD60750000A3E76709C070B9ED1700183463190060CA1CCC000C97';
wwv_flow_imp.g_varchar2_table(312) := '5F7002B0593F541D00C03EF9800900183463190060CA5CF90B305C77A80E0060C4DAE68824B7ACCE00609F8C6500804133960100A6EC4BD50100EC5393B6B979750400A3F523D50100ECD305E9FAAF57470000EC8FB10C00305D571CCC5C509D01C03EFD';
wwv_flow_imp.g_varchar2_table(313) := '70750000A3F5A3D50100EC9367B10180C133960100A6CE010DC070FD58750000A3652C03305CCE620080C133960100A6EE8BD50100ECD38F570700305A069700C3E5596C0060F08C650080A9F33513C070FDC7EA000046A86D9A24B7AECE00609F7CB804';
wwv_flow_imp.g_varchar2_table(314) := '000C9EB10C003075C63200C3F5ED699BDB564700303A3F511D00C07E398B010006CF580600983A5F33010CDB7FAA0E006074EE541D00C07E398B010006CF580600983A073400C3E6179E00AC979F1D00C3E666190060F08C650080A9734003306C3F551D';
wwv_flow_imp.g_varchar2_table(315) := '00C088B4CD7592FC78750600FB755A750000C08118CB000053E7800660D8BE2F6D7364750400A3F1A3491683190086E9CC74FD45D511000007622C03004C5BD75F92E4ABD51900ECD30EB7CB00B00E3F531D00C07E790E1B001805631900600EBE501D00';
wwv_flow_imp.g_varchar2_table(316) := 'C07EF9C527006BF5B3D50100EC9733180060148C65008039F05513C0B0FD5C75000023D036D74DF293D51900EC9733180060148C65008039F05513C0B07D5FDAE6E6D511000CDE7F4D7248750400FBE50C06001805631900600E1CD4000C9FDB65003890';
wwv_flow_imp.g_varchar2_table(317) := 'FF5E1D00C0013983010046C15806009803073500C3F70BD501000CDE2F5607007040A755070000AC85B10C0030079FAF0E00E0807E3E6D735075040003D536B74C72FBEA0C000EE873D50100006B612C0300CC819B650086EF86497EB23A0280C1FAA5EA';
wwv_flow_imp.g_varchar2_table(318) := '00000EA84FD7EFAC8E0000580B63190060FABAFEE2245FAECE00E0807EA53A0080C1FAE5EA00000EC8CDBE00C06818CB000073E1C00660F88C6500B8A6B6B97E92FF569D01C001397B010046C3580600980B6F66030CDFEDD336B7A98E0060707E21C921';
wwv_flow_imp.g_varchar2_table(319) := 'D511001CD0A9D50100006B652C0300CC85B10CC038FCEFEA000006C7CF06807170F602008C86B10C0030170E6C00C6E17F55070030206DB3B851E697AA33005813672F00C06818CB000073E1C006601C7E226DF3DDD511000CC6CF27B9417504006BE2EC';
wwv_flow_imp.g_varchar2_table(320) := '0500180D631900602E1CD8008CC38E24BF5E1D01C060FC567500006B726992D3AB230000D6CA5806009887AEFF72920BAA33005893DFAC0E006000DAE6D024BF569D01C09A9C96AEBFBC3A020060AD8C6500803971BB0CC038FC78DAE67BAA230028F72B';
wwv_flow_imp.g_varchar2_table(321) := '490EAB8E00604D3E5B1D0000B01EC63200C09C9C521D00C09AFD6E750000E5FC2C00188F53AB030000D6C35806009813631980F1B84B75000085DAA649F28BD51900AC9933170060548C65008039F94C7500006B76DBB4CD4F54470050E6B7935CBB3A02';
wwv_flow_imp.g_varchar2_table(322) := '80353396010046C55806009813073700E3D256070050C6CF008071F96C750000C07A18CB000073E2FD6C8071F9ADB4CD75AA2300D8666D73872477ACCE0060CD7625F942750400C07A18CB000073F2A52417564700B0664724F93FD511006CBB3FAA0E00';
wwv_flow_imp.g_varchar2_table(323) := '605DBE90AEBFAC3A0200603D8C650080F9E8FA15D702038CCEDDAA0300D8466D73DD24BF579D01C0BA7CBA3A000060BD8C650080B939A53A008075F9E9B4CD6DAB2300D836FF77F5663100C6C3874900C0E818CB000073F3A9EA0000D6654792BB574700';
wwv_flow_imp.g_varchar2_table(324) := 'B06DEE591D00C0BA7DA63A000060BD8C650080B9718003303EEDEAB31C004C59DBDC31C94F546700B06E3E4C020046C7580600981BEF68038CCF8D92FC567504005BEEDED501006C8827AF0180D131960100E6C6CD3200E374DFEA0000B650DB1C99E4B7';
wwv_flow_imp.g_varchar2_table(325) := 'AB330058B79DE9FAD3AB230000D6CB5806009897AEFF7A9233AB330058B73BA46D7EAA3A02802D73F724D7A98E0060DD7C9404008C92B10C0030479FAC0E006043FEBC3A00802DD0360727B9577506001BE28C05001825631900608E3E5D1D00C086FC6A';
wwv_flow_imp.g_varchar2_table(326) := 'DAE6D6D511002CDD5D92DCB83A02800D71C602008C92B10C0030479FA80E0060C3FF0DEB76198029699B1D49EE5F9D01C0863963010046C958060098A34F550700B0617F98B639B23A0280A5F99F49FE437504001BF699EA0000808D30960100E6C815C1';
wwv_flow_imp.g_varchar2_table(327) := '00E3756892FB564700B0340FAB0E0060C37639630100C6CA58060098A3D392ECAC8E0060C3EE9DB6B97E7504009BD4363F9DE427AB3300D8B0CFA5EB2FAD8E0000D808631900607EBA7EC5534C00A37644923FAD8E0060D31E591D00C0A67CA23A000060';
wwv_flow_imp.g_varchar2_table(328) := 'A38C650080B972A003306E0F4CDB1C561D01C006B5CD4F24F9D9EA0C0036E5E3D50100001B652C0300CC95B10CC0B83549EE551D01C086FD557500009BE66C0500182D63190060AE1CE8008C9FDB6500C6A86DEE94E417AA3300D83437CB0000A3652C03';
wwv_flow_imp.g_varchar2_table(329) := '00CC95031D80F173BB0CC0383DA63A00804DBB3CC9A7AB23000036CA58060098ABCF27D9591D01C0526E9739A23A0280356A9B9F4BF2FF556700B0699F4BD75F5C1D0100B051C63200C03C75FD4A924F566700B094DB65FEBC3A028035689B1D491E579D';
wwv_flow_imp.g_varchar2_table(330) := '01C0529C5C1D0000B019C63200C09C39D8019886FBA76DBEB33A028003FA3F497EAC3A0280A538A93A000060338C6500803973B003300D87257944750400FBD136072739AA3A0380A5F1011200306AC63200C09C19CB004CC7DDD336B7A98E00609FFE24';
wwv_flow_imp.g_varchar2_table(331) := '89BFA701A6C3580600183563190060CE1CEC004CC7B5933CA13A0280BD689B2392FC557506004B737192CF564700006C86B10C00305F5DFFD52467556700B034774EDBFC54750400D7F0C824DF5E1D01C0D27C325DBFAB3A020060338C650080B9FB5875';
wwv_flow_imp.g_varchar2_table(332) := '00004BF5B4B48DFFD605188A2B9EC8BB777506004BE52C0500183D078800C0DC39E00198961F49F247D51100FCBBA72539B83A0280A5729602008C9EB10C0030771FAD0E0060E91E93B6B9617504C0ECB5CDFF4CF24BD519002C9DB3140060F48C650080';
wwv_flow_imp.g_varchar2_table(333) := 'B973C003303DDF91E4AFAA230066AD6DAE93E4E9D519006C8993AA03000036CB58060098BB4F26D9551D01C0D2FD69DAE687AB230066EC2149BEB73A0280A5FB72BAFECCEA080080CD32960100E6ADEB2F591DCC00302DD74AF2ACB48DFFEE05D86E6D73';
wwv_flow_imp.g_varchar2_table(334) := '9B240FAECE00604BB8A11700980487860000C989D501006C899F4C72B7EA088059699B1D7BC68AC9E2192600A6C7190A003009C63200000E7A00A6EC09699B1B574700CCC85D92FC5C7504005BC6190A003009C6320000C909D501006C9923923CAD3A02';
wwv_flow_imp.g_varchar2_table(335) := '6016DAE6C8244FA9CE00604B19CB000093602C0300E0BD6D80A9FBCDB4CDAF544700CCC0D39334D511006C99F3939C521D0100B00CC63200005D7F4E922F546700B0A59E9DB659DC3203C056689B5F4BF2DBD519006CA98FA5EB77574700002C83B10C00';
wwv_flow_imp.g_varchar2_table(336) := 'C0158EAF0E00604BDD2CC993AA230026A96DBE3DC973AA3300D8721FA90E00005816631900802B38F00198BEBBA66D7EA13A0260A2CF2FDDB83A02802D7742750000C0B218CB00005CE1C4EA0000B6DC8E242FF01C13C012B5CD9D93FC6E750600DBC287';
wwv_flow_imp.g_varchar2_table(337) := '4600C06418CB00005CC1334C00F3798EE999D5110093D0368BDB649E5B9D01C0B6B828C927AB23000096C558060060A1EBBF9AE48CEA0C00B6C55DD236BF511D01306A6DB3B8ADEBF9498EAC4E01605B7C345DBFAB3A020060598C650000BEC975C200F3';
wwv_flow_imp.g_varchar2_table(338) := 'F1ECB4CDE296190036E61E497EB93A02806DE3CC04009814631900806FFA50750000DBE646495E92B6F1DFC500EBD536B74FF2E4EA0C00B695B10C0030290E050100BEC9C10FC0BCFCB7240FAA8E001895B6B94E92572439B43A05806DE503230060528C';
wwv_flow_imp.g_varchar2_table(339) := '650000BEE9F8EA0000B6DDA3D236FFA93A0260449E92E487AA2300D8561724F974750400C03219CB00005CA9EBCF4AF2B9EA0C00B6D5B593BC2C6D73C3EA1080C16B9BFF93E49ED519006CBBE3D3F597574700002C93B10C00C0B7FAB7EA0000B6DDAD92';
wwv_flow_imp.g_varchar2_table(340) := 'BC306DB3A33A0460B0DAE67BF7FC5D09C01C7DB83A000060D98C650000BE95B10CC03CDD39C9FDAA230006A96D0E4DF20F490EAF4E01A084B3120060728C650000BED587AA030028F3C4B4CD7FAE8E0018A0BF4DF2C3D511009471B30C003039C6320000';
wwv_flow_imp.g_varchar2_table(341) := 'DFEA8424BBAA23002871ED24AF4EDBDCB83A046030DAE66E49EE5A9D01409933D3F59FAF8E0000583663190080ABEAFA0B929C5C9D0140999B267945DA66319C0198B7B6F9F1D55B6500982FB7CA000093642C0300704D9E620298B79F4EF2E4EA088052';
wwv_flow_imp.g_varchar2_table(342) := '57DCB2F5DA248754A70050EA83D50100005BC1580600E09A8EAD0E00A0DC7DD2367F501D0150A26D0E4EF29A2437AB4E01A09C0F8A00804932960100B8260741002C3C376DF313D51100059E9DE43F574700506EB767980080A932960100B8A64F27F97A';
wwv_flow_imp.g_varchar2_table(343) := '750400E5164F8FBC2E6D73F3EA10806DD336F74F72D7EA0C0006E113E9FAF3AA230000B682B10C00C0D575FD8A37B9015875E324AF4FDB1C561D02B0E5DAE697933CB13A0380C1F840750000C05631960100D8BB63AB0300188C1F49724CDAE6A0EA1080';
wwv_flow_imp.g_varchar2_table(344) := '2DD3363F9CE4E549FC5D07C0957C4804004C96B10C00C0DEF97A0A80ABFAD5244FAA8E00D8126DF35D49DE94C42D5A005C95B3110060B28C650000F6EE43492EAF8E006050FE2C6D739FEA0880A56A9BC393BC39C9CDAA53001894B3937CA63A020060AB';
wwv_flow_imp.g_varchar2_table(345) := '18CB0000EC4DD7EF4CF2B1EA0C0006E7A9699BFF5D1D01B0146D737092D724F9C1EA140006E703E9FA95EA080080AD622C0300B06FAE1B06E0EA0E4AF2F7699B3B5587006C4ADBEC48F292243F5B9D02C020BDBF3A0000602B19CB0000ECDBFBAA030018';
wwv_flow_imp.g_varchar2_table(346) := 'A44393BC296DF303D521009BF0D424BF591D01C06019CB000093662C0300B06F0E8600D8972392BC256D738BEA1080756B9B4724B95F75060083754992E3AA230000B692B10C00C0BE74FDE9494EABCE0060B0BE2BC9DBD336DF511D02B0666D73CF248F';
wwv_flow_imp.g_varchar2_table(347) := 'AECE0060D08E4BD75F5C1D0100B0958C650000F6EFBDD501000CDAAD570733875787001C50DBFC4E92A3AB3300183C672100C0E419CB0000ECDFFBAA030018BC1F4CF256831960D0DAE6CE495E926447750A0083672C03004C9EB10C00C0FEBDBB3A0080';
wwv_flow_imp.g_varchar2_table(348) := '51F88924AF4DDB5CB73A04E01ADAE65792BC22C941D529000CDEEE24EFAF8E0000D86AC6320000FBF7E92467554700300AFF2DC91B0D668041699B5F4AF20F490EAE4E0160143E96AEFF46750400C05633960100D89FAE5F71BB0C00EB6030030C47DBFC';
wwv_flow_imp.g_varchar2_table(349) := '4C92571BCA00B00EEFAA0E0000D80EC632000007F6BEEA000046C56006A8D736FF23C99B92F8BB0880F570060200CC82B10C00C081F9AA0A80F5329801EAB4CDAF247983A10C00EBB4B85DF73DD5110000DBC1580600E0C04E4A724E750400A36330036C';
wwv_flow_imp.g_varchar2_table(350) := 'BFB6F9D524FFE0E9250036E0E3E9FAB3AA230000B683B10C00C08174FD6E5F5601B089C1CC3BD2368757870033D036BF93E4B58632006C909B750180D930960100581B0746006CD44FAC0E668EAC0E0126AC6DEE91E425490EAA4E0160B49C7D0000B361';
wwv_flow_imp.g_varchar2_table(351) := '2C0300B036EFA80E0060D4EEB8E796B2B6B959750830416DF39024CF329401601316B7EABEBB3A020060BB18CB0000ACCDC949BCDB0DC066DC2EC9B1699BEFAB0E0126A26D76A46D9E9CE471497654E700306A1F4BD7F7D5110000DBC5580600602DBA7E';
wwv_flow_imp.g_varchar2_table(352) := 'C575C4002CC1CD93BC376DF31FAB4380916B9B8393BC38C9FDAB5300988477560700006C2763190080B5FBD7EA000026E1C83D03CCB6F985EA1060A4DAE6FA49DE90E40FAA5300980C671E00C0AC18CB0000AC9D83230096E5BA49DE98B6B96B75083032';
wwv_flow_imp.g_varchar2_table(353) := '6D73E3D51B0FFF47750A0093B16BCFED87000033B2636565F1A20000006BD236A725F9EEEA0C0026E53149FE72F5C93F807D6B9BDB27794B925B54A70030291F48D7DFA93A0200603BB9590600607DDC2E03C0B23D22C9DFA76D0EA90E0106AC6D7E2EC9';
wwv_flow_imp.g_varchar2_table(354) := 'B18632006C81B7570700006C3763190080F5718004C056F89D3D3F63DAE6C8EA106080DAE6EE49DE9CE4F0EA140026C9590700303BC6320000EB3F40F24C06005BE1BF24F950DAE6FBAB438081689B83D236CF48F29C24D7AECE01609276EEF977500080';
wwv_flow_imp.g_varchar2_table(355) := '9931960100588FAE3F33C9C7AA330098AC5B25F960DAE697AB4380626D73C3246F49729FEA140026ED5DE9FA4BAB230000B69BB10C00C0FAFD4B7500009376FD24AF4FDB3C2C6DB3A33A0628D036B74FF2E1243F5F9D02C0E4BDAD3A0000A082B10C00C0';
wwv_flow_imp.g_varchar2_table(356) := 'FA19CB00B01DFFBDFED824AF4ADB1C561D036CA3B6B9F3EA7318B7AE4E0160169C710000B3B4636565A5BA0100605CDAE63A49CE4E72DDEA140066E1E349EE9CAEFF6C7508B085DAE6A0248F49F2E0C5995D750E00B3F0C574FD2DAA2300002AB8590600';
wwv_flow_imp.g_varchar2_table(357) := '60BDBAFEE224EFAECE006036FE4392E3566F9B00A6A86DBE23C95B933CC45006806DE456190060B68C6500003666F1CB0C00D82E3748F29AB4CD93D236D7AE8E0196A86DEE94E4F8243F5B9D02C0ECBCA53A0000A08AB10C00C0C638500260BB2D6E9B78';
wwv_flow_imp.g_varchar2_table(358) := 'C09EDBCDDAE6E6D531C026B5CD8EB4CDE2C9A57725B959750E00B3B32BC93BAA230000AA18CB00006C44D77F26C9E7AB330098A59F4C7262DAE697AB43800D6A9B2393FC5392C727B956750E00B3F48174FDB9D5110000558C65000036EE9FAB030098AD';
wwv_flow_imp.g_varchar2_table(359) := '1B257943DAE6E9699B43AA638075689BC5734B2726F9C5EA140066CD8DB900C0AC19CB00006CDCE26B6000A87C96E9BE493E94B6B97D750C70006D7370DA667193CCBF24B969750E00B3672C0300CC9AB10C00C0C6BD33C9C5D51100CCDE1D927C246DF3';
wwv_flow_imp.g_varchar2_table(360) := 'A7699BC58006189AB6F9BE24C72679B0F3380006E0CB493E561D010050C97F9C03006C54D75F98E45DD5190090E4D02447EFB9F5AC6D6E521D03AC5A0CD8DAE6DE498E4F72C7EA1C0058F5E674FD4A750400402563190080CDF114130043F28B494E4ADB';
wwv_flow_imp.g_varchar2_table(361) := 'FC667508CC5EDBDC7CF5C9A56726B96E750E005CC59BAA030000AAED5859311E0600D8B0B6B95592CF556700C05EBC3AC9BDD2F5675587C0AC5CF11CDA1F257972921B54E700C0D55C92A449D7EFAC0E0100A8E466190080CDE8FACF27F978750600ECC5';
wwv_flow_imp.g_varchar2_table(362) := 'FFDDF333AA6D7EA33A0466769BCC3F2779BEA10C0003F56E4319000063190080657863750000ECC391495E99B6F9C7B4CD4DAB6360B2DAE6DBD236F75A1D51FFF7EA1C00D80F67180000C63200004BE1A00980A1FB5F493E91B6B9FB9E5FEA03CBD336DF';
wwv_flow_imp.g_varchar2_table(363) := '9FE4BD49FE36C9F5AB7300E000DE541D000030043B565656AA1B0000C6AD6D0E4AF295D5AFF70160E8DE9FE41EE9FA93AB4360D4DAE6D0240F4FF2A024D7AECE018035F868BAFE87AB23000086C0D76400009BD5F59727F9A7EA0C0058A33B25393E6DF3';
wwv_flow_imp.g_varchar2_table(364) := '84B4CDF5AA636094DAE617939CB43A96319401602CDC8C0B00B0CA58060060395E5F1D0000EB70EDD5DB303E99B6F9F5EA18188DB6F9EEB4CD6B92BC39C9F756E700C03A39BB000058E51926008065B8E2CBFCB3922CAEE30780B1797B92FBA5EB3F511D';
wwv_flow_imp.g_varchar2_table(365) := '02037E72E92F923CC4BFEF0130526724B979BADE2F850000DC2C0300B0245D7F4192B7556700C006FD5C928FA66D9E9EB6B951750C0C4ADBFCDF248B21D95F1BCA003062AF37940100F82663190080E5795D7500006CC2B592DC37C967D336F749DB2C9E';
wwv_flow_imp.g_varchar2_table(366) := '6A82F96A9B1F4BDBBC37C9AB92DCB23A070036C9990500C05518CB00002CCF1B935C5E1D01009BB4B859E619494E4EDBDCB93A06B65DDBDC226DF3D2241F4EF25FAA73006009CE4DF2AEEA08008021D9B1B2E2D63D0080A5699B7724F999EA0C0058A2F7';
wwv_flow_imp.g_varchar2_table(367) := '277970BA7EF14F98AEB669923C24C9BD931C529D03004BF4D274FDEF574700000C899B65000096EBB5D50100B064774AF2BEB4CD1BD23677A88E81A56B9BC3D2368FD8F30459F20043190026C8134C000057E366190080656A9BEF4AF2C5C5BF6755A700';
wwv_flow_imp.g_varchar2_table(368) := 'C016D89DE455491E95AEFF64750C6C4ADB1C9AE44F923C3CC991D53900B0452ED8F373AEEB2FAA0E0100181263190080656B9B6393FCA7EA0C00D842BB92FC7D92C7A4EB4FAD8E810D8E641E9CE426D53900B0C55E93AEFFF5EA080080A1F10C1300C0F2';
wwv_flow_imp.g_varchar2_table(369) := 'BDBA3A0000B6D8B5169383249F4ADB1C93B6B97D7510AC6924D336F74BB218783DCD5006809970460100B0176E96010058B6B6B95592CF556700C0363FCFF4DA248F4BD71F5F1D03DFA26D8E48728F240F48D254E700C0365A3CBDF41DE9FA9DD5210000';
wwv_flow_imp.g_varchar2_table(370) := '43632C0300B015DAE6B8243F5A9D010005DE96E489E9FAB7578730736D73D324F75D1DCA1C5E9D0300053CC10400B09F6B930100D89A6B8E8D650098A39FDFF3A76D4E48F2E43D3F13BBFED2EA2866A46D7E20C9FD93FC6E9283AB7300A09027980000F6';
wwv_flow_imp.g_varchar2_table(371) := 'C1CD3200005BA16D6EB9FA14D38EEA140028764692A393BC205D7F56750C13D536DF96E41792FC59929FF3EF6000E009260080FD31960100D82A6D736C92FF549D01000371719297277966BA7E71EB0C6C5EDB2C9E576A93DC2BC96DAA730060403CC104';
wwv_flow_imp.g_varchar2_table(372) := '00B01F9E610200D8DAEB8E8D6500E00AD749F2877BFEB4CD87923C7BF589A60BABC318A1B6B963927B24F99D24D7ABCE018001F2041300C07EB859060060ABB4CD7725392DC9E2590000E09ACE4DF2D2D5279A3E561DC3C0B5CD0D92FC6692BB27F9D1EA';
wwv_flow_imp.g_varchar2_table(373) := '1C0018B09DAB4F302D9E620200602F8C650000B652DBBC27C97FADCE008011F8489217277945BAFEECEA1806A26D7624F9A9D55B89164F49B84506000EECE5E9FAC5ED6B0000EC8367980000B6D631C63200B0263FBAFAE7C9699B3725F9FB246F49D75F';
wwv_flow_imp.g_varchar2_table(374) := '521D4681B6B96D92BB24F9BD24B7ACCE0180917959750000C0D0B9590600602BB5CD9149CE4872EDEA140018A1AF2779CD9EAFA39377A7EB2FAF0E62CB9FB0FC8D24BF9DE4C7AA730060A4CE49729374FDA5D521000043662C0300B0D5DAE69F92FC5275';
wwv_flow_imp.g_varchar2_table(375) := '06008CDC99495E9BE4D5863313D236374FF26BAB23993B25F9B6EA240018B9E7A6EBEF511D01003074C63200005BAD6D7E67F53926006039CE4EF28624AF4FF2B674FD85D541AC43DBDC6E752073E7243FBE389FAA4E028009F9E974FD7BAA23000086CE';
wwv_flow_imp.g_varchar2_table(376) := '58060060ABB5CD6149BE9264F14F0060B92E4AF28E246F4AF29674FD69D5415C4DDB1C9CE4BF24F9E5D53FB7A94E028089FA62925BA5EB77578700000C9DB10C00C076689B9726B94B750600CCC02793FCF39E1B67AE78AEC9AD3315DAE6D649FE7B92FF';
wwv_flow_imp.g_varchar2_table(377) := '91E467925CBF3A090066E071E9FA87554700008C81B10C00C076689BC52F8BDE5A9D0100337369920FAEDE3CF3AE241F4AD75F5C1D35496DF3DD497E2AC9CFAE8E636E519D040033F4FDE9FAC5701800800330960100D80E6D735092D393DCA43A050066';
wwv_flow_imp.g_varchar2_table(378) := 'EC9224FF96E47D493EB03A9E39B33A6A74DAE6DBF6FC322EF9CFABCF2BFDD724B7ACCE028099FB48BAFEC7AA230000C6C258060060BBB4CD1393FC45750600F02D4E591DD02CFE1C97E4C474FDF9D55183D236B74AF22349FEE3EA9F1FF7AC12000CCE9F';
wwv_flow_imp.g_varchar2_table(379) := 'A5EB9F5E1D01003016C6320000DBA56D7E20C949D51900C07EED4E726A928F26F9D8EACFEE8F27F97CBA7E57A6AC6D0E4B72BB243F98E48792DC61F5CF8DAAD30080FDBA2CC977B9310F0060ED8C650000B653DB7C24C91DAB33008075BB34C9A7937C36';
wwv_flow_imp.g_varchar2_table(380) := 'C96756FFF9B9245F48F2A5D10C69DAE6BA496EB5FAE77B92DC66752073DB24DF5D9D07006CC81BD2F5BF561D01003026D7AA0E00009899CE58060046E9E0D51B57167FAE6E57DAE6CB494EDF339C49CE48F2B5245F497256923EC9397BFE74FDB94B2F6B';
wwv_flow_imp.g_varchar2_table(381) := '9B8392DC70F50698C59F2393DC38C97724B959929BEEF9DA3CB9F9EAFF1B0030BDB3060000D6C1CD320000DBA96D9AD55FA02D7EE10600CCD36230737E920B925C9CE4BCD5E79F2E4A72C93EFEFF1C9AE49024D74E72BDABFCB94192C5F34900C03C2D46';
wwv_flow_imp.g_varchar2_table(382) := 'B9374BD72F6EC10300608D8C650000B65BDBBC3AC9AF576700000000A3F7B474FD9F574700008CCDB755070000CCD08BAB0300000080497851750000C01819CB00006CBFB7AE3EC504000000B051C7A5EB4FAA8E0000182363190080EDD6F597BB5D0600';
wwv_flow_imp.g_varchar2_table(383) := '0000D8A417560700008C95B10C0040DD35C9BBAB230000008051BA30C9CBAA230000C6CA580600A042D77F3EC93BAB3300000080517A55BAFEBCEA080080B132960100A8F3DCEA0000000060949E571D00003066C6320000755E9FE4CCEA080000006054';
wwv_flow_imp.g_varchar2_table(384) := '4E4AD71F5B1D01003066C632000055BAFED2C5FF566700000000A3E2561900804D32960100A83FE05AA98E0000000046E1C2247F5F1D01003076C632000095BAFED4246FABCE0000000046E195E9FA73AB230000C6CE580600A0DEB3AB03000000805178';
wwv_flow_imp.g_varchar2_table(385) := '56750000C01418CB0000D47B53922F55470000000083765CBAFEB8EA0800802930960100A8D6F5BB923CAF3A0300000018B4A3AB030000A6C258060060189E9FE4D2EA080000006090CE4EF2CAEA080080A9309601001882AEFF6A927FA8CE0000000006';
wwv_flow_imp.g_varchar2_table(386) := 'E985E9FA8BAA230000A6C25806006038FEB63A00000000189CDD499E551D01003025C632000043D1F5C726F948750600000030286F4CD79F561D01003025C6320000C3F28CEA0000000060509E5E1D00003035C6320000C3F28A245FAB8E0000000006E1';
wwv_flow_imp.g_varchar2_table(387) := 'A474FD3BAB230000A6C65806006048BAFED224CFA9CE0000000006C10DB400005BC058060060789E9D64319A01000000E6AB4F724C750400C01419CB00000C4DD72F9E617A79750600000050EAB9E9FA8BAA230000A6C858060060989E5A1D0000000094';
wwv_flow_imp.g_varchar2_table(388) := '59DC38FBACEA080080A93296010018A2AEFF689277556700000000255E95AEFF72750400C05419CB00000CD753AA030000008012CE040000B690B10C00C070FD5392CF544700000000DBEA5DE9FA13AA230000A6CC58060060A8BA7E7792A75667000000';
wwv_flow_imp.g_varchar2_table(389) := '00DBEA49D501000053672C0300306C2F49D2574700000000DBE25349DE521D01003075C632000043D6F5172679767506000000B02D9EB27AD32C00005BC858060060F8FE36C945D511000000C0963A33C9DF57470000CC81B10C00C0D075FDE2B0ECA5D5';
wwv_flow_imp.g_varchar2_table(390) := '19000000C0967A46BADEC7320000DBC0580600601C9E94C435CC000000304D3B933CA73A0200602E8C650000C6A0EB3F9BE41FAB33000000802DF1A274FDD9D511000073612C0300301E4FAC0E00000000966E57922757470000CC89B10C00C05874FD87';
wwv_flow_imp.g_varchar2_table(391) := '93BCBB3A0300000058AA57A4EBBF581D01003027C6320000E3F2F8EA00000000606956923CA13A0200606E8C650000C6E5AD494EAC8E0000000096E2CDE9FA93AB230000E6C6580600604CBA7EF1C599DB65000000601A8EAA0E0000982363190080F179';
wwv_flow_imp.g_varchar2_table(392) := '4D9253AA23000000804D794FBAFE03D511000073642C030030365DBF2BC913AB33000000804D71AB0C0040116319008071FABB245FAA8E0000000036E48474FD5BAB230000E6CA580600608CBAFED2244FAACE0000000036E431D501000073662C030030';
wwv_flow_imp.g_varchar2_table(393) := '5ECF4BD2574700000000EBF28924AFAB8E0000983363190080B1EAFA8BDC2E03000000A3F3D874FDEEEA080080393396010018B7A3937CBD3A0200000058935392BCAA3A020060EE8C650000C6ACEB7726797A7506000000B0268F49D7EFAA8E0000983B';
wwv_flow_imp.g_varchar2_table(394) := '63190080F15B8C65CEAD8E00000000F6EB0B498EA98E0000C058060060FCBA7E3194795A7506000000B05F8F77AB0C00C03018CB00004C83DB6500000060B8BE98E4C5D51100005CC1580600600ADC2E03000000437654BAFED2EA080000AE602C030030';
wwv_flow_imp.g_varchar2_table(395) := '1D6E9701000080E171AB0C00C0C018CB00004C85DB650000006088DC2A03003030C6320000D3E27619000000188ECFB955060060788C650000A6C4ED3200000030248F72AB0C00C0F018CB00004CF37699B3AB2300000060E64E49724C75040000D7642C';
wwv_flow_imp.g_varchar2_table(396) := '030030CDDB65FEA63A0300000066EEAFD2F5BBAA230000B82663190080693A3AC999D51100000030539F48F2F2EA080000F6CE580600608ABA7E6792A3AA3300000060A61E91AEDF5D1D0100C0DE19CB00004CD7F3927CB13A0200000066E6F824AFAB8E';
wwv_flow_imp.g_varchar2_table(397) := '000060DF8C650000A6AAEB2F4AF298EA0C000000989987A5EB57AA230000D83763190080697B719253AA230000006026DE9DAE7F6B75040000FB672C030030655DBF6BCF3BE9000000C07678687500000007662C0300307DAF4A724275040000004CDC1B';
wwv_flow_imp.g_varchar2_table(398) := 'D2F5C7564700007060C63200005377C53BE90FA9CE0000008009DB9DE461D5110000AC8DB10C00C01C74FDBF24794775060000004CD44BD3F51FAF8E0000606D8C650000E6E3C14916B7CC00000000CB7371924756470000B076C632000073D1F5C725F9';
wwv_flow_imp.g_varchar2_table(399) := '87EA0C0000009898A3D3F5A757470000B076C6320000F3F2D024975647000000C0449C9BE4A8EA080000D6C7580600604EBAFED424CFADCE0000008089786CBAFE9CEA080000D6C7580600607E1E9DE41BD5110000003072A725F9DBEA080000D6CF5806';
wwv_flow_imp.g_varchar2_table(400) := '00606EBAFEAC244FA8CE00000080917B78BAFEE2EA080000D6CF580600609E9E96E4F4EA0800000018A9E392BCAC3A0200808D3196010098A3AEBF28C9C3AA3300000060A41E90AE5FA98E000060638C650000E6EB98D52FE100000080B5FBC774FD7BAA';
wwv_flow_imp.g_varchar2_table(401) := '230000D83863190080B9BAE20BB8FB5767000000C0885C9AE4C1D51100006C8EB10C00C09C75FD7B93BCA63A0300000046E2E874FD67AB230000D81C63190000FE22C925D511000000307067277974750400009B672C030030775DFFF9244FABCE000000';
wwv_flow_imp.g_varchar2_table(402) := '8081FBCB74FDD7AB230000D83C63190000168E4AF2B5EA0800000018A893933CAF3A020080E5309601006071BBCC79491E569D0100000003F5E7E9FA5DD51100002C87B10C000057EA927CA43A0200000006E675E9FAB757470000B03CC63200005CA1EB';
wwv_flow_imp.g_varchar2_table(403) := '7727B94F9295EA1400000018888B93DCBF3A020080E532960100E09BBAFED824C75467000000C0403C255DFFF9EA08000096CB58060080AB7B7092F3AB23000000A0D8E9498EAA8E000060F98C650000F8565DFFE5248FAACE00000080627F91AEBFA03A';
wwv_flow_imp.g_varchar2_table(404) := '020080E533960100606F9E91E453D51100000050E41DE9FA5756470000B0358C650000B8A6AEBF34C97DAA33000000A0C06549EE5D1D0100C0D63196010060EFBAFEED495E5D9D01000000DBEC69E9FA4F56470000B0758C650000D89FFB27D9591D0100';
wwv_flow_imp.g_varchar2_table(405) := '0000DBE48C248FAE8E0000606B19CB0000B06F5DFFA5247F5D9D01000000DBE4CFD3F5E757470000B0B58C6500003890A72739B93A02000000B6D8DBD2F59E230600980163190000F6AFEB2F4B72CF242BD529000000B0452E4EF2A7D51100006C0F6319';
wwv_flow_imp.g_varchar2_table(406) := '00000EACEBDFB7F8DFEA0C000000D8228F4FD79F521D0100C0F63096010060AD1E94A4AF8E0000008025FBCC9EB10C0000B3612C0300C0DA74FD6228F3C0EA0C00000058A2C593C3F74CD75F521D0200C0F631960100603D5E92E49DD511000000B0242F';
wwv_flow_imp.g_varchar2_table(407) := '4DD7BFA33A020080ED652C0300C0DA75FDE28BBB7B24F1C51D00000063E7065500809932960100607DBA7EF196FB63AB3300000060931E90AE3FAB3A020080ED672C0300C0463C21C9C7AB230000006083DEBEE7092600006669C7CACAE2267D000058A7';
wwv_flow_imp.g_varchar2_table(408) := 'B6F9C924EF33C006000060642E4CF283E9FACF5587000050C32F360000D898AE3F36C9D1D519000000B04E7F69280300306FC63200006CC6C3937CB13A02000000D6E8B8244FAB8E0000A096B10C00001BD7F5E727F993EA0C0000005883CB92DC355D7F';
wwv_flow_imp.g_varchar2_table(409) := '7975080000B58C650000D89CAE7FEBE27FAB33000000E0008E4AD79F541D0100403D6319000096E18149BE5A1D01000000FB707292C755470000300CC63200006C5ED79F9DE41ED519000000B017BB92B4E9FA4BAA43000018066319000096A3EB5F9FE4';
wwv_flow_imp.g_varchar2_table(410) := '98EA0C000000B89A27A4EB3F521D0100C07018CB0000B04CF7F31C13000000037B7EE9D1D51100000C8BB10C0000CBE3392600000086C3F34B0000EC95B10C0000CBE5392600000086C1F34B0000EC95B10C00005BE13E49CEA88E00000060B64EF4FC12';
wwv_flow_imp.g_varchar2_table(411) := '0000FB622C0300C0F275FDD793FC719295EA140000006667F1EC92E7970000D82763190000B646D7BF25C9F3AB33000000989DBF4ED77FB43A020080E132960100602B3D20C9A9D511000000CCC607923CB13A020080613396010060EB74FDCE24BF9FE4';
wwv_flow_imp.g_varchar2_table(412) := 'F2EA1400000026EF8AFF06ED7AFF0D0A00C07E19CB0000B0B5BADE577D0000006C8707A4EBDD6E0A00C00119CB0000B01DFE5F92E3AB2300000098AC37A6EB9F571D0100C03818CB0000B0F5BAFEB224BF9BE4C2EA1400000026E76B49EE561D0100C078';
wwv_flow_imp.g_varchar2_table(413) := '18CB0000B03DBAFE53491E589D010000C0A4AC24B96BBAFECCEA100000C6C358060080EDF49C3D5763030000C0721C9DAE7F7375040000E3622C0300C0F6E9FAC5177F7F94E42BD5290000008CDEC949FEA23A020080F131960100607B75FD5949FE60F5';
wwv_flow_imp.g_varchar2_table(414) := 'AA6C000000D8888B93FC76BA7EF14F0000581763190000B65FD7BF2DC993AA3300000018AD07A4EB1737CB0000C0BA19CB000050E511498EAB8E00000060745E97E4D9D51100008CD78E9515B7DF030050A46DBE27C98949AE5F9D020000C0287C29C91D';
wwv_flow_imp.g_varchar2_table(415) := 'D2F5E754870000305E6E960100A04ED77F2EC99F5467000000300ABB92FC96A10C00009B652C030040ADAE7F459217546700000030787F95AE7F7F75040000E3672C0300C010DC37C949D5110000000CD6BF24795C75040000D3B0636565A5BA01000092';
wwv_flow_imp.g_varchar2_table(416) := 'B6F9BE24C72539AC3A0500008041F972921F49D79F591D0200C034B85906008061E8FA4F27B947750600000083727992DF3694010060998C650000188EAE3F26C90BAA33000000188CBF4CD7BFA73A02008069319601006068EE93E4C4EA08000000CABD';
wwv_flow_imp.g_varchar2_table(417) := '39C9E3AA230000989E1D2B2B2BD50D0000F0ADDAE67B927C24C911D52900000094382DC91DD3F5E754870000303D6E9601006078BAFE738BC94C12CB6E000080F9B924C9AF1BCA0000B0558C65000018A6AE7F7D92275467000000B0EDEE97AE3FAE3A02';
wwv_flow_imp.g_varchar2_table(418) := '0080E93296010060C81E91E41DD5110000006C9B2E5DFFDCEA080000A6CD58060080E1EAFACB93FC5692D3AB53000000D872C727F9D3EA080000A6CF5806008061EBFAB392FCEF241757A7000000B065CEDEF3DF7E5D7F5175080000D3672C0300C0F05D';
wwv_flow_imp.g_varchar2_table(419) := 'F156FDBDAA33000000D8128B5B457F335D7F5A75080000F3602C0300C03874FD8B923CAB3A03000080A57B68BAFE5FAB230000980F63190000C6E4CF93BCA73A02000080A57959BAFE6FAA230000981763190000C6A3EB2F4DF21B49BE589D020000C0A6';
wwv_flow_imp.g_varchar2_table(420) := '1D9FE48FAB230000981F63190000C6A5EBBF96E4CE492EAC4E01000060C3AEF86FBBAEF7DF7600006C3B63190000C6A7EB175F1FFE519295EA14000000D66D716BE8AFA7EBDD1A0A00400963190000C6A9EB5F91E4A8EA0C000000D6ED4FD3F5EFAB8E00';
wwv_flow_imp.g_varchar2_table(421) := '0060BE8C65000018B34726F9C7EA08000000D6EC69E9FA1756470000306FC63200008C57D72F9E61FABD242754A700000070406F49F2C0EA080000D8B1B2B2F8FD0200008C58DBDC3CC98792DCA43A05000080BDFA78923BA5EBBF511D0200006E960100';
wwv_flow_imp.g_varchar2_table(422) := '60FCBAFEF424BF9AE4C2EA14000000AEE1CC24FFD350060080A130960100601ABAFEB824BF9FC4D589000000C3717192FF95AE3FAD3A040000AE642C0300C07474FD6B923CA43A030000803D161F33B4E9FA63AB430000E0AA8C6500009896AE7F6292E7';
wwv_flow_imp.g_varchar2_table(423) := '57670000009087A7EB5F591D01000057672C0300C014FD6992B75647000000CCD80BD2F58FAB8E000080BD31960100607ABA7E5792DFF8FFD9BB0F704DCAFA7CC0CFD294266D5004AC60C3861D1B62EFC69ED8478D35D6682CB1C7F2D7C46E6CD1E8D812';
wwv_flow_imp.g_varchar2_table(424) := '157B8B0DC52EF65E228AA2A0C84853AA94FF356767C9020B6CF9CE79A7DCF7758DE7ECB2FB9D07FCCEF7CD99F799DF9BE47BA5A3000000CCD0A7FA9B1800006090569D7556B7652800004C505DED9EE4EB492E553A0A0000C04C7C37C90169DA134A0701';
wwv_flow_imp.g_varchar2_table(425) := '0080F3A32C0300C0B4D5D53E49BE9A6487D25100000026EE37496E98A6FD7DE920000070416CC30400C0B435ED4F92DC25C969A5A30000004CD831496EA7280300C01828CB0000307D4DFBC524F74B7246E928000000137452923BA7697F563A080000AC';
wwv_flow_imp.g_varchar2_table(426) := '0F65190000E6A169DF97E489A5630000004C4C7753C27DD2B4DDF6B70000300ACA320000CC47D3BE26C9F34BC70000009888B3923C3C4DFB91D2410000604328CB00003037CF49F2A6D22100000026E01969DAB7940E0100001B6AD5596775C56F000098';
wwv_flow_imp.g_varchar2_table(427) := '91BADA3CC97B92DCA37414000080917A459AF61F4B870000808D61B20C0000F3D3B46724B96F92CF968E02000030426F4BF2A4D22100006063992C0300C07CD5D5B6490E4A7283D25100000046E24349EED9DF84000000A3A42C0300C0BCD5D5CE490E4E';
wwv_flow_imp.g_varchar2_table(428) := '72F5D25100000006AEBBD9E00E69DAD34A070100804DA12C030000757589245F4EB277E92800000003F5F524B74CD39E543A0800006C2A65190000E8D4D51E49BE96E452A5A30000000CCC7793DC3C4D7B7CE9200000B0089B2DE451000060EC9AF688A5';
wwv_flow_imp.g_varchar2_table(429) := '8BBFC9EF4A4701000018901F26B9ADA20C00005362B20C0000ACADAEF6497270925D4B4701000028ECD024374DD3FEA174100000582493650000606D4DFB9324B7487274E928000000858B320728CA0000304526CB0000C0BAD4D535927C31C90EA5A300';
wwv_flow_imp.g_varchar2_table(430) := '0000ACB0DF24B971BF5D2D00004C8EC9320000B02E4DFB8324B749727CE9280000002BE877496EA9280300C09429CB0000C0F969DA6F28CC000000332BCA745B2FFDB274100000584ECA320000704114660000807950940100603694650000E0C228CC00';
wwv_flow_imp.g_varchar2_table(431) := '0000D3A6280300C0AC28CB0000C08615668E2E1D05000060810E55940100606E569D75D659A5330000C078D4D5D5927C2EC9AEA5A30000002CA8287344E9200000B0924C960100800DD1B43F4A728B2447958E020000B0097EAE280300C05C992C030000';
wwv_flow_imp.g_varchar2_table(432) := '1BA3AEF64A7270923D4B47010000D8403F4C72CB34AD6D660100982593650000606334ED2F93ECDF8F2D070000188B4314650000983B65190000D8584D7BD8D2D8F2E4C7A5A3000000AC872F26B9ADA20C000073A72C0300009BA2698F4872F324DF2A1D';
wwv_flow_imp.g_varchar2_table(433) := '050000E002FC4F92DBA7698F2F1D0400004A53960100804DB5FAAECC5B2539B8741400008075784F92BBA6694F2A1D0400008640590600001661F5DD99774CF291D251000000D6F2C624F74BD39E563A0800000C85B20C00002CCAEABB34EFDE7D563A0A';
wwv_flow_imp.g_varchar2_table(434) := '00004092172479549AF68CD24100006048569D75D659A5330000C0B4D4D5AA24FF96E449A5A3000000B3D45DF87F429AF6D5A5830000C01029CB0000C072A9AB2726795977DE5D3A0A0000301BDD764B0F4CD3BEA774100000182A65190000584E7575DF';
wwv_flow_imp.g_varchar2_table(435) := '246F4DB255E9280000C0E41D9FE49E69DACF960E02000043A62C030000CBADAE6E95E47D4976281D05000098AC2393DC214DFBFDD241000060E8946500006025D4D535937C3CC91EA5A300000093F3D324B74BD31E5E3A0800008CC166A5030000C02CAC';
wwv_flow_imp.g_varchar2_table(436) := 'BEBB73BF243F2C1D05000098942F26B9B1A20C0000AC3F6519000058294DFBBB24374DF299D251000080497857925BA7698F2D1D040000C644590600005652D31E9FE48E49DE543A0A0000305A6725797E9207A4694F2B1D060000C666D5596775E7D400';
wwv_flow_imp.g_varchar2_table(437) := '00C08AABABA7247971775E5E3A0A0000301A5D39E6EFD3B4EF281D040000C64A590600004AAAABBB257967926D4A4701000006AF4D72B734ED974B07010080315396010080D2EAEA5A493E9264CFD251000080C1FA69923BA5697F553A0800008CDD66A5';
wwv_flow_imp.g_varchar2_table(438) := '030000C0EC35ED77935C2FC9374A4701000006E97F92DC505106000016435906000086A069FF90E48024EF2A1D05000018949725B9739AF6F8D2410000602A6CC30400004353574F49F2A2249B978E02000014736A9287A769DF5E3A0800004C8DB20C00';
wwv_flow_imp.g_varchar2_table(439) := '000C515DDD2EC97F25D9A97414000060C51D91E4EE695A5BB50200C0325096010080A1AAAB2B24F950927D4A4701000056CCD7FAA24CB7552B0000B00C365B8E0705000016A0697F91E40649DE573A0A0000B0225E97E40045190000585E26CB0000C0D0';
wwv_flow_imp.g_varchar2_table(440) := 'D5D5AA24FF94E44549362F1D07000058B853923C2A4DDB940E02000073A02C030000635157374FF2EE24172F1D0500005898C392DC234DFBDDD2410000602E6CC304000063D1B49F4F72ED245F2B1D05000058884F24B9AEA20C0000AC2C651900001893';
wwv_flow_imp.g_varchar2_table(441) := 'A63D22C901495E553A0A0000B0D1CE48F2AC24774AD31E533A0C0000CC8D6D98000060ACEAEA9E49DE9264FBD251000080F5765492FBA6693F573A080000CC95B20C00008C595DED9DE4C024FB968E0200005CA82F24B94F9AF6F7A5830000C09CD98609';
wwv_flow_imp.g_varchar2_table(442) := '0000C6AC690F4D72C3246F281D050000385F67267941925B2ACA0000407926CB0000C054D4D5DF2679936D9900006050FE98E4FE69DACF940E020000ACA62C030000D3DB96E93D49AE5D3A0A00009083923CC0341900001816DB300100C0F4B665BA5192';
wwv_flow_imp.g_varchar2_table(443) := '5725D18C07008032CE48F2AC24B75594010080E13159060000A6AAAEEED8D5679254A5A30000C08C1C9EE4BE69DAAF940E020000AC9BC932000030554DFBF124D7E847BF030000CBEFC024FB2ACA0000C0B0992C0300005357575D49FEC9495E9064CBD2';
wwv_flow_imp.g_varchar2_table(444) := '7100006082FE92E40969DAFF2C1D040000B870CA32000030177575ED24FF95E44AA5A30000C0847CABDF76E917A583000000EBC7364C000030174DFB9D24D749F286D25100006002CE48F2FF92DC4851060000C6C56419000098A3BABA53926E44FCC54B';
wwv_flow_imp.g_varchar2_table(445) := '47010080113A2CC903D2B45F291D040000D87026CB0000C01C35EDC7925C2DC9874B4701008091796B927D1565000060BC4C96010080B9ABAB07277965928B958E0200000376749287A7693F543A080000B0699465000080AE3073E96EDE4C929B978E02';
wwv_flow_imp.g_varchar2_table(446) := '000003F4A1BE28D3156600008091539601000056ABAB55491E93E4C549B6291D07000006E0B8248F4BD3BEA3741000006071946500008073AAABBD93BC25C94D4B47010080823EDE4F9339B27410000060B19465000080F3AAABCD923C36C98B4C990100';
wwv_flow_imp.g_varchar2_table(447) := '6086D3649E90A67D5BE9200000C0F25096010000CE9F29330000CC8B693200003003CA320000C005ABAB55491E95E4C549B62F1D07000096C19FFA6932EF2C1D040000587ECA320000C0FAA9AB4B25F98F24B72B1D05000016E8C0A52D489BF6A8D24100';
wwv_flow_imp.g_varchar2_table(448) := '008095A12C0300006C98BABA7F925724A94A470100804D7044927F48D37EB87410000060656DB6C25F0F000018BBD5A3E9F749F28ED25100006023747790BE61E99C565106000066C96419000060E3D5D5ADFA8586BD4A47010080F5F093240F4BD37EB5';
wwv_flow_imp.g_varchar2_table(449) := '74100000A01C93650000808DD7B49F4D72F5242F4AF2D7D2710000E07C9C92E49949AEA528030000982C0300002C465DEDD34F99B969E9280000B0964F2779749AF697A583000000C3A02C0300002C4E5DAD4AF2A024FF9A64D7D271000098B5DF277962';
wwv_flow_imp.g_varchar2_table(450) := '9AF63DA583000000C3A22C0300002C5E5DED9CE485491E6EFB57000056D8E9495E9BE4D969DA134A87010000864759060000583E7575FD7EA1E2BAA5A30000300B5F4EF20F69DA1F940E0200000C973B3C010080E5D3B4DF487283240F4BD2968E0300C0';
wwv_flow_imp.g_varchar2_table(451) := '641D95E48149F657940100002E8CC9320000C0CAA8AB9D92FC4B924726D9A2741C000026B3E5D26B923C2F4D7B7CE9300000C03828CB0000002BABAEAE9EE4D5490E281D05008051FB749227A4697F5A3A080000302ECA320000401975758F24FF96E472';
wwv_flow_imp.g_varchar2_table(452) := 'A5A30000302ABF4CF2A434ED874B07010000C6495906000028A7AE2EBA743770F2CF49B62F1D070080413B21C90B93BC2A4D7B6AE9300000C07829CB000000E5D5D56E49FE25C943926C5E3A0E0000837246923727794E9AF6A8D261000080F153960100';
wwv_flow_imp.g_varchar2_table(453) := '0086A3AEAE9EE4A5496E533A0A000083F0E97ECBA51F950E0200004C87B20C0000303C7575DB24FF9AE41AA5A3000050C40F93FC539AF653A583000000D3B359E900000000E7B17A51E45AFDB64CBF2B1D070080157344928726D95751060000582E26CB';
wwv_flow_imp.g_varchar2_table(454) := '000000C356575B27796C92A727D9B1741C000096C571FD64C157A6694F2E1D060000983665190000601CEA6AA7244FEB8B335D81060080F1EB8A31AF4BF2E2346D5B3A0C0000300FCA320000C0B8D4D5EE499EDD8FE7DFA2741C000036CAE949DE9EE4B9';
wwv_flow_imp.g_varchar2_table(455) := '69DADF960E030000CC8BB20C0000304E75B55792E725B94F92CD4AC7010060BD7417A40F5C2A3F37EDCF4B87010000E6495906000018B7BABA4A921726B96BF7334EE93800009CAF8F2579569AF67BA583000000F3A62C0300004C435DED9BE43949FE46';
wwv_flow_imp.g_varchar2_table(456) := '69060060503ED96FB77448E9200000001D65190000605AEAEADAFDA499DB958E0200307307F7DB2D7DA97410000080B529CB000000D35457D74DF20C936600008A9464BA49325F281D040000605D946500008069B33D1300C04A6EB7F42F69DAAF950E02';
wwv_flow_imp.g_varchar2_table(457) := '00007041946500008079A8ABAB2C6D0390DC33C916A5E300004C447781F9A3495E94A63DA47418000080F5A12C030000CC4B5DED95E4A9491E9464ABD271000046EACC24EF4DF2E234EDF74B87010000D810CA320000C03CD5D51E499E98E41149B62B1D';
wwv_flow_imp.g_varchar2_table(458) := '070060244E4BF2B624FF9AA63DB474180000808DA12C030000CC5B5DED94E451491E97E412A5E300000CD49F93BC21C92BD3B447960E030000B02994650000003A75B57592FB277952922B958E03003010BF4FF2AA246F4CD31E573A0C0000C02228CB00';
wwv_flow_imp.g_varchar2_table(459) := '0000ACADAE364B72A7244F4E72D3D27100000AF95192972779579AB6DB7A09000060329465000000CE4F5D5D37C91393DC2BC996A5E300002CB3EE62F16792BC6CE963D3BA780C00004C92B20C0000C085A9AB3D933C3AC9C393EC523A0E00C0829DBC34';
wwv_flow_imp.g_varchar2_table(460) := '412679659AF6C7A5C30000002C376519000080F555575B27B94F92C725B966E93800009BE877495E97E44D69DAB6741800008095A22C030000B031EA6AFF248F4972B7245B948E0300B001BE98E4DF937C304D7B7AE9300000002B4D590600006053D4D5';
wwv_flow_imp.g_varchar2_table(461) := '1E491ED61FBB978E0300703E4E4CF2CEA549324DFB83D2610000004A52960100005884BADA32C95D923C2AC92DBA9FB74A47020048F293246F48F2F634EDF1A5C30000000C81B20C0000C0A2D5D55E7D69E64149AAD2710080D93935C9FB93FC479AF60B';
wwv_flow_imp.g_varchar2_table(462) := 'A5C30000000C8DB20C0000C072A9ABAD92FC4D924724B97992CD4A47020026EDE74B0599D55364DAD261000000864A590600006025D4D5E5923CB8FB2CC9A54AC7010026E3A424072679739AF6CBA5C30000008C81B20C0000C04AAAAB6EBACCADFBE2CC';
wwv_flow_imp.g_varchar2_table(463) := '5D935CA47424006094BE9EE4AD49DE9DA63DA1741800008031519601000028A5AE764AF277491E9864BFD2710080C13B32C93B974A324DFBB3D261000000C64A590600006008EAEA8A7D69E67E492E5B3A0E0030A86D963E94E4ED493E9BA63DA3742000';
wwv_flow_imp.g_varchar2_table(464) := '0080B153960100001892BA5A95E4267D69E65E49762E1D090058715D21E67349DE95E40369DA3F970E0400003025CA320000004355575B25B96D92FB26B973926D4B47020096D5B792FC5792F7A469BB2D970000005806CA32000000635057DB25B96392';
wwv_flow_imp.g_varchar2_table(465) := 'BF4D72872417291D090058881F2779F7D2D1B487960E0300003007CA320000006353573BF49366EE9DE4368A3300303A3F4B726092F7A6697F543A0C0000C0DC28CB0000008CBF38D34D9AB947FF71EBD291008075FA4992F72BC800000094A72C030000';
wwv_flow_imp.g_varchar2_table(466) := '301575B54D92DB25B96B923B25D9A974240098B1EEC2EB77927C60A924D3B43F2F1D08000080D59465000000A6A8AEB64CB27F5F9CB94B924B978E040033F0D7245F4AF2A1241F4ED31E5E3A10000000E7A52C03000030077575CDBE34D34D9CB96E92CD';
wwv_flow_imp.g_varchar2_table(467) := '4A47028089382EC927937C34C9FFA4698F2D1D080000800BA62C030000303775B55BBF5D53579CB975928B958E040023F3B3241F4FF2B1245F49D376136500000018096519000080395BBD5DD38D92DCBE2FD05CA3FB59B1742C00189893927CAE9F20D3';
wwv_flow_imp.g_varchar2_table(468) := '4D8FF955E9400000006C3C6519000000FE4F5D5DB29F36739BFEE3C54B47028002BA8BA63F4CF299BE20F3E534ED29A543010000B018CA32000000AC5B5DADEA27CDDCAA3FF64FB24DE95800B04C8E4CF2D9B38FA6FD7DE9400000002C0F6519000000D6';
wwv_flow_imp.g_varchar2_table(469) := '4F5D6D95E4FA496E99E48024FB25B968E95800B0918E497270BFBDD24169DA9F950E040000C0CA509601000060E3D4555794B9415F9CB959FFB9C933000CD59F927CA92FC874C70FD3B467960E050000C0CA539601000060919367AE93E4A6496E92E446';
wwv_flow_imp.g_varchar2_table(470) := '4976291D0B80D9FA6D922F27F9625F92F9499AD6C5500000009465000000582675B52AC99592DCB82FCEDC30C995BB9F454B470360724E4FF283245FEB0B325F4DD31E5E3A14000000C3A42C030000C0CAA9AB9D925C2FC97EFDB64DDDE7BB968E05C0E8';
wwv_flow_imp.g_varchar2_table(471) := '1C99E490245FEF3F7E2B4D7B62E9500000008C83B20C00000065D5D5E5FBED9BAED77FEC8E1D4AC70260308E49F2EDA5424CF2CD24DF48D31E513A14000000E3A52C030000C010B76FDA3BC935FBE2CCBE49AE95E412A5A301B0EC8E4AF2DD24DF39FB63';
wwv_flow_imp.g_varchar2_table(472) := 'D3FEAA7428000000A645590600008071A8ABDDFBE2CC9AE39A7DA966B3D2D100D860DD45C9AE04F3BDBE14D31DDF37310600008095A02C030000C078D5D57649AE96E41A7D79E61AFD71B1D2D10038DB49497EB45486597D7405991FA6694F281D0C0000';
wwv_flow_imp.g_varchar2_table(473) := '80795296010000608ADB385D36C9D5CF755C31C916A5E3014C5877A1F1B0243F58EBE84A3287A669CF281D0E000000D65096010000601EEA6AAB24574972D5BE3CB34FFFB12BD674051B00D6DF1FFA224C77FCB0FFF89334ED5F4A07030000800BA32C03';
wwv_flow_imp.g_varchar2_table(474) := '0000C0BCADDECAE9CA7D89E6AA6B7DDE9568362B1D0F6000A5989F9C5D86597DFC384D7B4CE960000000B0B19465000000605DEA6A9B2457E88B3357EA27D15CA93FBA29350053716692C393FCF43C87520C00000013A42C030000001BA2AE36EFA7CE74';
wwv_flow_imp.g_varchar2_table(475) := '5B3A5DB19F4473C5BE44B35BE9780017E0CF497E91E467497EBED6C7FF4DD39E5C3A1C000000AC1465190000005894BADA21C9DE7D71E60AFD71C5FEF7762A1D0F9885D392FC72A900931CDA9761BA82CC2FD2B447940E0700000043A02C030000002BA1';
wwv_flow_imp.g_varchar2_table(476) := 'AE76E94B3357E83FEEB5D6C75D4BC70346E5E4BE08F3ABFEE39AA32BC91C9EA63DA374400000001832651900000028ADAE2E96E4727D71E6F26B7DDE7DBC4C928B948E08ACA8EE82DDEFFB324C771CB6D6E7BF4AD31E593A200000008C99B20C0000000C';
wwv_flow_imp.g_varchar2_table(477) := '595D6D9664F7BE3473D9751C9752A681D196610E4FF2EB751E4D7B6AE9900000003055CA32000000306675B52AC925FBD24C57A8B9747F5C6AADE3E2A563C2CC9C98E4B7497ED37FFC6D5F8C5973FC561906000000CA519601000080A9ABAB8BF6A5993D';
wwv_flow_imp.g_varchar2_table(478) := 'FA63CFFED7BBF7C79A42CD16A5A3C208B4FD549823FA12CC916B7DDE7DFC5D9AF6D8D22101000080F3A72C0300000074859ACDFBC24C579ED9AD2FD55CB23FBADFBB44FFB1FB335B958E0B0B7666923F2639AA2FC2FCA1FFB8E6F3DFF5FFEC0813610000';
wwv_flow_imp.g_varchar2_table(479) := '0060FC9465000000800D5357BBF4A5994B9CEBD875AD8FBBF67FE662A5E3325B27F505983FF6D360D69461D64C8639BAFF75771C9DA63DA37460000000606528CB00000000CBA7AE2E92A4EA8FAE40B3CB5A47F7EB9DFBA3FBF54E6BFD7A55E9E80C4677';
wwv_flow_imp.g_varchar2_table(480) := 'F1AADBD6E898751C7FEA4B2F6B3EFFD3D9E598A63DB974700000006098946500000080E1A9ABAE38D31D3BAEE3D861AD63C77E7ACD9A63FBFED8AEF4BF02673B3EC99FD73A4EE88FE3D73A8E5BEBE3DA9F1F9BA6ED8A32000000000BA32C030000004C53';
wwv_flow_imp.g_varchar2_table(481) := '5DEDD89766B6ED8F35259AADFB5F77E59A8B26D9A6FFFDADFADFDBAAFFBDEECF5DA4FF7CABB57EBD65FFF7D33FE6E6199FAEB4D26D3BF4D72427F6BFD79553D21759CEEC0B2B6B3EAEF973DDD646A7F57FF6D42427F7FFFCE4FE9F758FFB97FE38314DDB';
wwv_flow_imp.g_varchar2_table(482) := 'FD1A000000605094650000000036555DADEA27DDACD1956E365BEBD73B9CCFD6526BFF9D0DD1155AD67551674DD1655DBF3E294DDB155D00000000664D59060000000000000080D958FB0E27000000000000000098346519000000000000000066435906';
wwv_flow_imp.g_varchar2_table(483) := '0000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D6519000000000000000066435906000000000000';
wwv_flow_imp.g_varchar2_table(484) := '0080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D9509601';
wwv_flow_imp.g_varchar2_table(485) := '00000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D9509601000000000000';
wwv_flow_imp.g_varchar2_table(486) := '00603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D9509601000000000000006036946500';
wwv_flow_imp.g_varchar2_table(487) := '00000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D9509601000000000000006036946500000000000000';
wwv_flow_imp.g_varchar2_table(488) := '00980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D651900';
wwv_flow_imp.g_varchar2_table(489) := '00000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D651900000000000000';
wwv_flow_imp.g_varchar2_table(490) := '00664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D651900000000000000006643590600';
wwv_flow_imp.g_varchar2_table(491) := '00000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D651900000000000000006643590600000000000000';
wwv_flow_imp.g_varchar2_table(492) := '80D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100';
wwv_flow_imp.g_varchar2_table(493) := '000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000';
wwv_flow_imp.g_varchar2_table(494) := '603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000';
wwv_flow_imp.g_varchar2_table(495) := '000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000';
wwv_flow_imp.g_varchar2_table(496) := '980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000';
wwv_flow_imp.g_varchar2_table(497) := '000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000';
wwv_flow_imp.g_varchar2_table(498) := '664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D9509601000000000000006036B6281D0000006090EAEA6F92EC9BF178499AF694D2210060D9D4D523';
wwv_flow_imp.g_varchar2_table(499) := '92EC9671382E4DFBAAD2210000005837651900008075BB6BB72C97F1E816E494650098B2478EA8C8FAEBFEBD1900008001B20D130000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C00';
wwv_flow_imp.g_varchar2_table(500) := '00000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C00000000000000';
wwv_flow_imp.g_varchar2_table(501) := '00B3A12C0300000000000000C06C28CB0000000000000000301BCA32000000EBB67DE90000C0396C5B3A00000000D3A02C030000B06E172B1D000038871D4A07000000601A9465000000D66DF7D20100805E5D6D9564D7D2310000009806651900008073';
wwv_flow_imp.g_varchar2_table(502) := 'ABABEE67A5CB978E01009CED724956950E010000C03428CB0000009CD75E49B62E1D020038DBD54B07000000603A9465000000CEEBBAA5030000E7E0BD1900008085519601000038AF5B940E00009CC3CD4B07000000603A9465000000D65657AB92DCBE';
wwv_flow_imp.g_varchar2_table(503) := '740C00A057579730590600008045529601000038A71B26D9A3740800E06C77771D1300008045F243260000C0393DB8740000E01CEAD2010000009816651900008035EA6AE724F7291D0300E8D5D5F5925CBF740C000000A64559060000E0FF3C36C9B6A5';
wwv_flow_imp.g_varchar2_table(504) := '43000067FBE7D201000000981E65190000804E5D55499E503A0600D0ABABEB24F99BD231000000981E6519000080D59E9764C7D2210080A5A2CCAA24AF4CD27D04000080855296010000A8ABFD923CB2740C00E06C7F9FE426A543000000304DCA320000';
wwv_flow_imp.g_varchar2_table(505) := 'C0BCD5D5F649DEE1E723001888BADA2BC9CB4AC700000060BA5C0C060000E6BEC5C39B93EC5D3A0A00B0F4DEBC4D92F725E9CAAC000000B02C9465000080397B76927B970E01002C1565364FF2B624FB968E020000C0B429CB000000F354578F4CF2DCD2';
wwv_flow_imp.g_varchar2_table(506) := '310080B3A7BDBD26C93D4B4701000060FA9465000080F9A9ABC726795DE91800C0D913655E9FE451A5A3000000300F5B940E000000B0C28B712F4AF294D2510080A5F7E6ED92BC23C95D4B47010000603E946500008079A8AB8BF78B71B7291D0500587A';
wwv_flow_imp.g_varchar2_table(507) := '6FBE4A92F726B95AE928000000CC8BB20C0000307D7575B77E7B874B948E0200B3B77AD2DB63FB696F5B978E030000C0FC28CB000000D35557FB24796992DB978E02002CBD37DF3CC9CB925CAB7414000000E64B59060000989EBABA4E922727B97792CD';
wwv_flow_imp.g_varchar2_table(508) := '4AC7018059ABAB55FD36884F4B7240E938000000A02C0300004C435D5D2AC95D933C30C9754BC70180D95B3DE1ED9E491E9064EFD271000000600D65190000605CEA6ACB24174F72B9245749D24D91B94992AB968E0600B35457174D72C924974D72F524';
wwv_flow_imp.g_varchar2_table(509) := 'D74B72D32497291D0D6093D5D5C5D69A56B96D92EEE791BF2639B1FFBD33D3B427144C0800C0465875D659676DCCDF0300188EBAFA75921D4AC7E03CCE4C724C923F24F955921F27F9669243D2B42765EAEA6AB724374E72ADBED071E9BEE0D15D689DAB';
wwv_flow_imp.g_varchar2_table(510) := '6BA6690FDFE8BF5D574F4DF29C245B2F34D5741C9F642C3FE05D364DDBE51D9EBADA7CE9B99AECD72FF8769310F64CB253928B6CC223BF3E4DFBCF59097575C9FE35A75BA4DE23C92592EC9AA44AB263FF3A74B1FE069AF37B4D3A39C9A9494EE93FEFFE';
wwv_flow_imp.g_varchar2_table(511) := 'FF3AA1FFD8BDB61F9DA44DF2C724BFEF8F23D3B4DDC211301775F5CE7E72CCA6BC3E4EF95C782C8BE787A769BBF7BE71A9ABADFA698237E8DFB3F74AD29D83EF3CE39B4457EE7C63ACEAAA7B7E5CAA3F47DAB37FCE5CA23F4FDAA57FFEAC395FDA6E035F';
wwv_flow_imp.g_varchar2_table(512) := 'DF4EED0B34DDF9D271FD39D39FFA73A6EE5CE9A824BF4B7244FF7DD7FD1900000A99EB0F0D00C0B4ECD05FCC627876EE179ABBA91F6B9C9ABAFA4292F7253970521708EBAAFB77BD5F92BB25B946574E2F1D6960D6DC8DB9B1BABBD61565CEDF984A83AB';
wwv_flow_imp.g_varchar2_table(513) := '0638ADE83649FE2EC9EDFB859245DB7A994A79D7EECB3D57ED8F2BF4773C6FAA8D795F3D3375D51524BB12EB617D51F2D024FF9BE4E769DA6317908B39A8AB8BF465AFCBF40B995D016CF7FE7B7397FEF9B943FF7DB57D92CDFB8FE757FAEA3E9ED41717';
wwv_flow_imp.g_varchar2_table(514) := '8E5D6BE1F2A87EF1F2F07EF1F257B328F42E56F77AA32873FEE73D63F919653CE7E375B56DBFEDE6BD93DC2AC936A5230D8C73E5FF9B04D3DDB070E524574A72C5BE4C75F965BE79E122FDB1F37AE63CAE3F5FFA65929FF5E74C3FEECF9BBC1F01002C33';
wwv_flow_imp.g_varchar2_table(515) := '6519000056DA45FA45E9EE7865EAEABF92BC2C4DDB5D1C1C9FBAEA16FD6F97E449496E31B8120070FEEAAA5B747F549247F78BF1C355579BF577CD1FD04FADBA517F47F4906CD6171A76EFF39DD3EA22CD4F92FC30C9F7937C676941A8694F2F9296F256';
wwv_flow_imp.g_varchar2_table(516) := '9762AEDE17BEAE96649F7E51F3520B2858AE5934DE7A830A0B757544BF58D93D577FD03F577F90A6ED0A3740297575A9FE7CFBC1339FD4C8BA27EA5DB73FF6ED6F5AE8B6841B831DFBE273779CBB807C68FF3EF4DD24DF4EF20DC5630080C552960100A0';
wwv_flow_imp.g_varchar2_table(517) := 'A4EE4ED0BF4FF2907E8CFF3FA769BB45AA71A8ABFD93BC34C9F54A470136405D6DDD2FB8FDD3A017DC566F13D095F1EE98E4D6FD564A63B65B7F74C5C2354E4C5D1D92A49B38F6D97EABBE330A666439AD9E8674B3BEF075C3BE24D34D761A923DFAE3E6';
wwv_flow_imp.g_varchar2_table(518) := '6BFDDEE9A9ABAEE4F5B5245F5C7ABE366D57FE02965B5DEDDA6FC3F9B024DDB64BCC5D5D5DBCBFF1E296FD7BCAE5323D9BF5D370AED86F75B7A640D315390F4EF299249F4FD3FEB9704E00805153960100602817031F98E41EA9AB672579559AF6CC0C7B';
wwv_flow_imp.g_varchar2_table(519) := '1AC52B923CA074146003D555573AF98FC1DE715C573B2DBD16AEDE126AFF011609166DDBBE3CD31DCF4B724CEAEA13493E98E47F4CF318B9BADAAA7F1EDFA15FD8ECB60A1BEBF5B36BF5C7A3FB7FB76E9B8C4F25F978922FA569FF5A3A244C4E5DD54B13';
wwv_flow_imp.g_varchar2_table(520) := '28D7774B1BA6ABAEBAED93EED56F777BBD054D1F1B9BCDFA296CDDF1987E7BE3CFF7E74CEF4FD3765B0C0200B0019465000018DAA2E9CB93DC257575DF34EDEF333475D52DE8BEA3DF660418D7A2FD4BFBC5855503DC62E956FD5DF377EEB7AB9BAB6E41';
wwv_flow_imp.g_varchar2_table(521) := 'F4FEFD717CEAEAFD49DE9AA6FD72E9606CD0D64AB7EF1735BBA9483B649AAEDA1FFF98E4D8D4D5C792FCF7D28424C51958C464B5B72EFD4CC07CD555B745D17D923C28C90D4AC719A08BF41308BBE3DF53579FECBF6F3EE67D080060FD28CB0000304407';
wwv_flow_imp.g_varchar2_table(522) := '24F94EEAEA6E69DAAF6728EAAA5B10FBD7249B978E026C80BABA44920F25D92F4352575D89E0A149FE214977C734E7D4FDF77948BF555F37C5E3B549DE9EA63DB17430D6A1AEAED7FFFFD54D45EA1638E764A77EDA5C771CDD6F2DF99634ED8F4A0783D1';
wwv_flow_imp.g_varchar2_table(523) := 'A9ABAB2C2DF67B5F9CAFBABA4692C7F7EF27DDB6BD5CB82DFBC27577FC2175F5C6246FB0652000C0055396010060A8764B7250EAEAEFD2B41F2D9AA4AEBA2914AF4CF2B8A239800D57577B25F9F4A016DDEAAA4AF2A4248F9AF0D48D45EB2678BC2EC9F3';
wwv_flow_imp.g_varchar2_table(524) := '5357AFE9B7EB3BAE74A8D9ABABADFBBBFE1F9B64DFD2710662D7244F5C3AEAEA8B49BAE7EB87D2B4A7970E0683575737E98B32DE1BE768F504CFA7F7D3F6D8B49FA39F93E469A9ABB72779499AF697A54301000CD11CF7F60400603CBA3B09DF97BAEAEE';
wwv_flow_imp.g_varchar2_table(525) := '902B5994E9A61928CAC0388B32070FA6285357174B5D3D3FC9614B0B18160337C62E499EBBF4DFB0AE9E93BADABE74A059EA0A5FDD7FFFE43749FE5351E67CED9FE4C024FF9BBA7A445F2E02D6A5AEBAEF974F796F9CA1BABA59EAEA2B4B374A28CA2C7A';
wwv_flow_imp.g_varchar2_table(526) := '9BA66E8BCF9FA5AEDE9ABABA4CE940000043A32C0300C0D06DB5B4D05457372DF4F59FDF4F7F00C6B7F552B7E8B66786A15B04FCDF24CF4CB25DE93013B0635F9A393475F5C8D495EDF156AE24F3FFFAC2D773FB292A5CB8CB2D6D8791FCB27FBE76E736';
wwv_flow_imp.g_varchar2_table(527) := 'C01A7575F5241FB1E5CECCD4D53EA9AB8FF5C5E61B958E33F1DD05EABEB8F9D2D4D5DCB64A0400385FCA3200008CE5AEB80FA6AEBAC5A6955357F74FF28C15FD9AC0A65BBD10FD8124DD6499A1B87692AEC0C3625D3CC9EB937C3B75B55FE93093B57A2A';
wwv_flow_imp.g_varchar2_table(528) := 'D2BFAC351549E16BE35CB27FBEFE247575AF7E7A1DCC5B5D75A5BB6ECB551365E6F59EF28A24DF4F72C7D2716664AB7E1BD09FA7AE1EEC3D08004059060080716DBD71E08ADD8D5D5757E9EF0207C6E7C5EE509E9D6B26F94AEAEA35A92B458E45E926F6';
wwv_flow_imp.g_varchar2_table(529) := 'D4D5C393FC22C9B3946416A62BF2BD37C9175257B6B062BE562FD6BF3389ED61E6A2AEFE66A930983CA19F784299A2F15B9626FAD4D5154B87010028495906008031B94E92672FFB57A9ABEEC2EDBB926CBBEC5F0B58ACBA3AA05F80619ED7381E93E407';
wwv_flow_imp.g_varchar2_table(530) := 'A9AB1B970E337A75758324DF4CF2C67E618DC5EBB698FCE6D28405252FE6E9D1496E533A042BA0AE764A5D75C5A80F25D9A3741CCEDE22F4FBA9AB2798320300CC95B20C000063F394D4D55597F96B740BEDD75AE6AF012C5A5D5D34C99B93B8E03F6F97';
wwv_flow_imp.g_varchar2_table(531) := 'EB27763C6F69320A1BA62B6D74137A92AF7A2F5C115BF4E71D3FE8CB7E300F75D51526FE5FE918AC80BAEA4A193F4872BFD251388FEEDCB9DB12EBD3A9AB6EAB4000805951960100606CB64CF2CA657BF4BABAC48A4CAF0196C3E3FBED4D60F3FEB5BC5B';
wwv_flow_imp.g_varchar2_table(532) := 'FC3115657DAD2E6BFCA09FD0E39AD1CA97BC3E97BA7A655FFC83396C99B87DE9102CA36E5A495D3D63E9B52DD9B3741C2ED0AD927C2F7575CBD241000056920B1F00008CD1AD5257375BA6C77E9A0BF7304275B563FFFD0B6BBB45BFCDCDBEA5830C5A5D';
wwv_flow_imp.g_varchar2_table(533) := '6D95BA7A499283FAD20665ACEA4B7F87A4AEAE543A0C2C9BBABA4A92FB968EC132AAABEDFB2D975ED0175819BEAE5CFCA9D4D5934B0701005829CA3200008C557797E262D5D52E491EBEF0C70556C2239274851938B74B27F952EAEAF6A5830C525D5D66';
wwv_flow_imp.g_varchar2_table(534) := 'E9BF4FB7CDA1EB4443718DBEE475CFD24160993CDDEBCDE4B7D8FA7292BB948EC206EB8A4DFF96BA7A73EAAADB26100060D2FC500200C098A7CB5C79C18FF99024DB2CF83181E55657DD85FD47978EC1A06D97E423A9ABFB970E32287575EB24DF4972FD';
wwv_flow_imp.g_varchar2_table(535) := 'D251388F6E2AC37B53572F58DACA04A662F5D6787F5B3A06CB3A35E8EB7DE98FF17AE8D264A0BAF2B331003069CA3200008C55B770F4E0053FE6A21F0F5819B7ECA787C005E9EE907E7BEAEA91A5830C425D75DBFDFC4F929D4B47E102CF759ED197662C';
wwv_flow_imp.g_varchar2_table(536) := '583215DDF64B5B950EC132A8ABAB25F942923D4B476121EE98E4A3DE7F0080295396010060CCEEBDE08BBBDD9D90C09C5F0B9843F9E075A9AB6EDBAEF94E62AAABD7267965BFDD02C3D76DC7F4E9D4D54EA583C002982A3345AB7F96FA5C925D4B4761A1';
wwv_flow_imp.g_varchar2_table(537) := '6EA13003004C99B20C00006376D9D4D53E0B7AAC3B2DE8718095B47A7B92EECE57585FDD73E6B5A9ABF92DD8D6D54596A694D8B66C8C6EBC34B161F51636304E75D515296CFB363575B55792831465265D98F940EACA44280060729465000018BB9B0FEC';
wwv_flow_imp.g_varchar2_table(538) := '71809575E524BB950EC1E86CDE6FC9D46DE1350FABEF0AFF4492BB978EC246BB7A92AFA4AEF6281D0436D2FEAE474FCCEA02DFA79228F24DDB6D93BCA52FA903004C861F4E000018BB1B6EF223ACBEE8778385A40156DA7EA503305ADD1DD2EF4F5D7585';
wwv_flow_imp.g_varchar2_table(539) := 'AB3914653EDADF1DCEB8EDBDB4D5C9EA091D3036CEB7A7A4AEB64EF29124DD6419A6EF7E499E573A0400C02229CB00003085BBAC37D56592ECB080C701C6F91AC07C75AFFD1F4D5DED9CA9529499A22B26F96CEACAB90B6373CDD20158A8372A40CDCE33';
wwv_flow_imp.g_varchar2_table(540) := '5357F72E1D020060519465000098C21DD69BCADD90305EBE7F59C4FBC83B5357D3BB465257DD7653FFAD283349D7589AE85057DD842498D3793B4350578F4DF280D2315871ABFAED98F6291D04006011A67721080080B9D92675B5E3263EC66E0BCA02AC';
wwv_flow_imp.g_varchar2_table(541) := 'BCDD4B0760126E9FE4E9999E3724B94BE9102C9BFD93BCB5DF4E12C6C07BF614D4D57593BCB4740C8AD936C9FB5257DD4700805153960100600A36B52C532D2807B0F276291D80C9786EEAEA46998ABA7A5A92BF2F1D836577DF8916BD98E69670172D1D';
wwv_flow_imp.g_varchar2_table(542) := '834D5457DB2579771253ADE6ED2A495E513A0400C0A652960100600A2EB6897FDFC55E182F131558942D92BCA35F081CB7BAEAA6C9BCA8740C56CCF35357DD74241832E7DBD3F0725B60D27B58EAEACEA54300006C0A65190000A66053CF6BBB3B5D01E0';
wwv_flow_imp.g_varchar2_table(543) := 'F2495E9631ABAB2B2679A722D9ECCE83DE99BABA54E920C084D5D5AD4D2CE35CFE2375B573E91000001B4B5906000000E09C774ADF2C635457DB26F94092ED4B4761C5758B95FF9DBADABC74106082564F5D7B932226E7B25B9297960E0100B0B1946500';
wwv_flow_imp.g_varchar2_table(544) := '000000FECFAAFE4EE98B647C5E9DE4AAA54350CC8D933CBD740860929E9DE432A543304875EA6AFFD22100003686B20C000000C039755B193D29635257F74CF290D23128EED9A9AB6B960E014C485D5D25C9134AC760D025E3D7A6AEB6281D0400604329';
wwv_flow_imp.g_varchar2_table(545) := 'CB000000009CD73352577B640CEAAADB06E10DA56330085B26692C5A020BF48AFEB505CECFD5923CBC740800800DA52C03000000705EDB247971C6E1F54976291D82C1D837C9134B870026A0AE6E93E4B6A563300ACF4B5DED503A0400C0865096010000';
wwv_flow_imp.g_varchar2_table(546) := '0058B7FBA5AEAE95E16FBF74D7D231189CE7A4AEF62C1D0218B1BADA6C44A551CAAB923CB9740800800DA12C03000000B06EAB92BC28435557174BF2EAD23118A46D93BCAC740860D4EE9564D8855186E609A9ABAE340300300ACA3200000000E7EF76A9';
wwv_flow_imp.g_varchar2_table(547) := 'AB1B65989E9DE492A5433058F74E5DDDB8740860B45365BAF718D810DB257952E9100000EB4B5906000000E0823D2B435357574CF2B8D23118BC97A6AEBA0949001BE2EE49F6291D82517A8CE93200C05828CB000000005CF87499EB67585E9264CBD221';
wwv_flow_imp.g_varchar2_table(548) := '18BCFD92DCA5740860749E5A3A00A39E2EF3A8D2210000D687B20C000000C0857B4A86A2AE6E98E4AEA563301A2FE8B75401B87075754092EB968EC1A83D3675B575E910000017C60FCA0000000017EE6EA9ABBD320C2F2A1D8051B99AE932C0067842E9';
wwv_flow_imp.g_varchar2_table(549) := '008CDEAE49EE533A0400C08551960100000058BF6B288F2D1D227575B324DD5DFFB0219E593A0030027575D924772E1D8349785CE90000001746590600000060FDD4A9AB6D0B67F8E7C25F9F71BA4EEAEA96A5430083F7306B062CC8355357FB950E0100';
wwv_flow_imp.g_varchar2_table(550) := '7041B6B8C07F0A00000CD1F7921C97F1396513FFFEAF931C9C9573E524BB653CBE9CE4F48CC358728ED549498E48D226F9539263939CD0FFFE89FD9FE97E7DE65AD706B6EB3FBF687FECD0FF5EF771E72417EF8FEE9FCD59F7DFE35E499A225FBDAEF64D';
wwv_flow_imp.g_varchar2_table(551) := '729BCCDB29FDFBC19149FEB8D6F3FBE424A7F61F3BDB24D9AAFFB8FD5ACFE3DD935C66A6CFE527263968C18FF9A3243B66E55C77ADD7AB313C57BF9E71F843E90003FD6FF2B38CCFA11BFD37EB6AF3240F5A689AE9EADE6F2E523AC4083C7844AF8300C0';
wwv_flow_imp.g_varchar2_table(552) := '0C29CB000053D08D8A5E553AC4C4BC28C9A34A87E07C3D214DFB85CC4DD3BE2D4977AC8CBA7AEBD21489F1B8739A768C252A36BE70F49324DF4FF2D3243F4FF2CB2487A769BBF2C0F2A8ABAE70B047924B27D92BC9DE49AE9AE45A4976CA3CD4C5CA32C9';
wwv_flow_imp.g_varchar2_table(553) := '93322F47F445C06FF545D19FA7697FBBC98F5A57DD79E3A5925C25495740BA61929BF6859A29BB7DEA6AAF346DF75AB1184DFBACACA4BAFA6EFFFFD918FC214D7BF3D221D8689F4CD3760BFD73728BFE3D9E0BF69B240F49F259D7212ED4DFA6AE1E97A6';
wwv_flow_imp.g_varchar2_table(554) := 'EDCA45000083A32C03008C5FD31E5F3AC2E4D4958B5900C37358920393FC4F926FA469BB49312BAB698F49D21D3F3CC7EFD755B765C3D593DC21C97D935C2DD3B57FEAEAD269DAC357F4ABD6D52593DC3BD3D7DD81FEFE241F4FD37645B0C56BDAB3968A';
wwv_flow_imp.g_varchar2_table(555) := '65AB8F4FADF51CEEA696DC2DC97DFAE93353B3595F867E72E920C020FD6DE90023F1C434EDE7FA627D579AE18227F2DD31C9074A0701005817651900000018B64F26796992CFF58BFCC3D3B467F6536EBAE3FFA5AE6E92E419496E97E9E9EE22BF679297';
wwv_flow_imp.g_varchar2_table(556) := 'AFF0D77D68BFADD014FD25C97F26795D9AF67F0B3E87BFB174D455F7DCBD7D927F4A72B34CCB835257FF9CA63DAD74106040EA6ACBBE2CC805EB8A9C1FEC3F7F5A92BBCE602AD9A6EAB6AF54960100067B4709000000303CDF4E72E334EDEDD3B4070DB6';
wwv_flow_imp.g_varchar2_table(557) := '28B32E4DFBE5A5DCC92D93FC22D35CF85939ABA79EFC7DA6A7DB3AEEB94B5B2235ED138A1565D6559C69DA6E41F480FE8EF8E599705346B5B46D1FC03975C540A58F0BD64DF47BECD9BF6ADAA3933CB568A2F16C0138D5B22F003072CA32000000302C67';
wwv_flow_imp.g_varchar2_table(558) := '24797692FDD2B45FCD9875DB1424D7EA3ECBB4DCA0DF1669A5DC6A62DB02FDB59FCCB3579AF67969DAAE34334C4DFB8924D7EC27089C92697860E900C0E028D15DB817A469BB2D31D7D64D45FB4AA13C63DA8A69FFD2210000D645590600000086E3F8A5';
wwv_flow_imp.g_varchar2_table(559) := '3B709BF6F969DAD333054D7B629AF6C1FDB64C53DA8AE90E2BF8F51E94E9F8D252F9A4699F94A63D2663D0B47F4DD3BEA42F7E7D37D3B8CBDF0409606DDD142DCEDF8FFB2D31CF69F5D4BF47F62550CEDF4A9E330100AC376519000000188663931C90A6';
wwv_flow_imp.g_varchar2_table(560) := 'FD4CA6A8695F94E499998E6E9BA9E55757DB25B96BC6EFD424FFD83FC7C7B9AD51D3FE2CC90D93BC29E3B6E5449E53C022D4D55E4B93BE383F672679F85271725D9AF64749FE6DC5538DCB6D4A07000058176519000000184691E04E69DAEF65CA9AF685';
wwv_flow_imp.g_varchar2_table(561) := '49DE9569B879EA6AF315BADB7F9B8CDB6F92DC384DFB8A346DB7E8385E4D7B6A9AF6E17DF1A79B283056F72A1D00188C034A0718B837AEC7B698CF4FF28B15CA3346574D5DED563A0400C0B929CB00000040798F5B8F8598A9787492C3337EDD3636FBAE';
wwv_flow_imp.g_varchar2_table(562) := 'C0D7197BA9E19B496E90A6FD76A6A42BFE240F197161E696A9AB1D4A870006E1E6A5030CD811499E76A17FAA694F49F28811BF27AC849B950E0000706ECA3200000050D647D2B4FF91B968DA13923C26D370D3657DF4BADA7AC5B67B5A1E9F4B728B34ED';
wwv_flow_imp.g_varchar2_table(563) := '5199A2A66D923C3EE3DD8AC9B618C0F2BF978DDBA3FBF3960BD7B49F4FF29FCB9E68BC3CCF0080C1519601000080724E4CF20F999BA6FD685FA418BB1B2FF3E3DF72C45B307D23C95DD2B47FC99435ED6B92BC3EE374A7D20180C2EA6ACF24972E1D63A0';
wwv_flow_imp.g_varchar2_table(564) := 'DE93A6FDC806FE9D7FEAA7D1705E372C1D0000E0DC9465000000A09C97A5697F97797A76C6EF46CBFCF877C8381DB654C468DAAE0C36074F4CF2FD8CCFAD5357AB4A87008ABA7EE90003757492C76EF0DF6ADAE36659825E3FD7E827E601000C86B20C00';
wwv_flow_imp.g_varchar2_table(565) := '000094D12DA8BC2273D5B45F49F2B58CDBEEA9AB3D96F1F16F97F13939C9DFA469BB85C67968DA53933C38C9E919974B26D9A77408A0A8EB950E30E0ED9736EE7DAC693F9CE45D0B4F347E5B2C156600000676820200C072AAAB8B27B954923DFB4589DD';
wwv_flow_imp.g_varchar2_table(566) := '93EC9A6497243B25D931C9C5927477596DDF9FA36D573A3600CBEEF5FD1DC873F6BA098CE5BFF6B26CB950577B27B95CC6E70969DA1F666E9AF6BBA9ABEEF9FCB88CCB01497E5C3A0450CCBEA5030CD08169DAF76DE2633CBEDF4A71B705659A8AEB2439';
wwv_flow_imp.g_varchar2_table(567) := 'A474080080359465000016A1AEBAF3AA2B25B97A7F876E77748B5C7B29BE00B00E672C9565787F927F4FB243C6EB5A493EBA0C8F7BF38CCF6792BC29F3F5DC240FEC8BD0632ACBBCB67408A0986B960E3030472F641BA5A6FD53EAEA91493EB49054D3E1';
wwv_flow_imp.g_varchar2_table(568) := 'F906000C8AB20C00C0C6A8ABCB26B9517F37FC75FB8B3EF6DF06607D7D2A4DFBDBCC5DD39E9CBAFA48920764BC966B4B819B655C4E5B5A606CDAB332574D7B6CEAEA957D69662C6E5C3A0050485D55FDE45316B1FDD2BAB663AAABB72579D0421E6F1ABA';
wwv_flow_imp.g_varchar2_table(569) := '9B8B0000064359060060FDB752BA4D3F4AF916492E5D3A1200A3F6CED20106E47D232FCB5C75991EF7A61997B7A4697F513AC400BC3AC93F25D936E370C9A51278D3FEBA741060C575D350F93FEF5AC0F64BE7F68424B74AB2C7821F77AC3CE7008041D9';
wwv_flow_imp.g_varchar2_table(570) := 'AC74000080C1AAAB2BA5AE9E9EBAFA5A92DF277947F7BB8A32006CA253937CAC748801F96C9253325E7BA7AEB65AE823D6D5EE233BDF383DC98B4A8718CC7499E4DD1997EB950E0014D16D23CC6A472479FCC21FB5698F4BF2E024F39DBA764E3BA4AE4C';
wwv_flow_imp.g_varchar2_table(571) := '3302000643590600606D75B567EAEA29A9ABEF27F959BFF0B39FF3260016E8F369DA3F970E31184D7B5292AF67DC537B2FBFE0C7BC41C6E5C3B6153B8726E3729DD2018022946556EB8A2C0F4BD3FE69591EBD693F93E4F5CBF2D8E37485D2010000D6B0';
wwv_flow_imp.g_varchar2_table(572) := '0D1300405D75E744774AF2887EAB25C5180096D3A74A0718A02F243920E3B5775FB25D94EB675CDE563AC0C07C35C91F9374DB788EC1B54B07008AD8AB74808178539AF67F96F96B3C35C9AD1545CE7EDE7DB1740800808E85200060BEEA6AC7A52932C9';
wwv_flow_imp.g_varchar2_table(573) := 'AF927C30C9ED9C1F01B0020E2E1D6080BA2D0FC76CD10B8EFB663C4E4CD2DD35CF1A4D7B6692CF653C9465609E163D156D8C0E4BF2A465FF2A4DFB977E4BE73396FD6B0D9FE71D00301816830080F9E9F6C8AEAB9724E9B60BE83E5EAA74240066A35B2C';
wwv_flow_imp.g_varchar2_table(574) := 'F961E91003F49D8CDB6517FC78D7CC781C94A63DA57488814E97198B5D5257CE87617E2E9379EB8A8D0FEA8B2CCBAF69BBF78597AFC8D79AD7391300C04653960100E6A3AE764E5DBD38C92F93741365B62B1D0980D9F94E9AD65DC5E7D6B447273922E3';
wwv_flow_imp.g_varchar2_table(575) := 'B5B805C7BAAA925C32E37150E90003F5BD8CCBD54A070056505DED90A43BE6ECD569DA2FADF0D77CF682B76D1C23E54C006030B6281D000060D9D5D55649FEA1BF30B563E93800CCDA774B0718B09F24D923E3B4E7021FEB2A1997FD5357972B1D6280C6';
wwv_flow_imp.g_varchar2_table(576) := '56CABE6292FF291D025831BB67DE0E4DF28C15FFAADD24B6BAEAB663FA4A92CD334F633DD70300264859060098B6BABA65927F4F72E5D2510020C98F4A0718B0EE4EEB5B679C165996B952C6E51EA503B010972E1D005851732E2C9C95E46169DA938A7C';
wwv_flow_imp.g_varchar2_table(577) := 'F5A63D2475F58A244FCE3CCDF9B907000C8C6D98008069AAAB5D52576F4BF2594519000664EEA3F72F48B74DE2585D3C75B5D902277CC04A1BD3D65FC0A6BB78E6EB4D69DA830B6778CEC8CF7B36C5D6A9ABED4B870000E828CB0000D35357B7EFEFDC7F';
wwv_flow_imp.g_varchar2_table(578) := '60E92800702E735D18591FBFCE78755B29ECBAA0C7DA6B418F031B6297D2018015B55BE6E9F7499E5A3A443FD5E61199AFB93EFF00808151960100A6A3AEB64A5DBD2AC9C75D7C0160804E49D3768B34ACDB6F336ED5821EE7B20B7A1CD810CA32302F8B';
wwv_flow_imp.g_varchar2_table(579) := '7ACF1A9BC7A7698FCB1034ED4149DE9979F29E03000C82B20C00300D75B567922F25795C9255A5E300C03AFCA67480813B32E3B6F3821EE7320B7A1CD8103B950E008CF23D6B4C3E95A63D30C3F2E424C7667E946500804150960100C6AFAEAE9FE49B49';
wwv_flow_imp.g_varchar2_table(580) := 'BA8F003054A6CA5CB0A3939C99392FFCD4D5D6169028445906E6656E659953933C2643D3B447257966E6C77B0E003008CA3200C0B8D5D55D927CDEB64B008C80B2CC0569DA3392FC29E3B5E3021E638F053C066C8CAEA805CCC722DEB3C6E46569DA4333';
wwv_flow_imp.g_varchar2_table(581) := '4C6F4CF2BDCCCBDC9E7F00C04029CB0000E35557F74DF28124DB948E0200EBA12D1D6004C65C96D961018FB1EB021E0336C6454B070056D4C5321F47247951865D16EEB6939E93459C3301006C32651900609CEAEA7E49DE9E64F3D251006003B619E282';
wwv_flow_imp.g_varchar2_table(582) := '1D97F1529601602CB6CD7C3C3D4D7B6286AC69BF94E4C0CCC79C9E7F00C08029CB0000E35357F74EF2364519004666CC459095727CC66B1193EE9465005809DB651EBE9DE45D1987A725392DF360EB3F0060109465008071A9AB0392BC43510680113AA1';
wwv_flow_imp.g_varchar2_table(583) := '748011F84BC6EB220B788C1D17F01830B7EF3D60C3CD65B2C753D3B467660C9AF657495E9F79B00D13003008CA3200C078D4D515927C20C956A5A300C0465096B9707FCEBC177E2EB680C7808DF1D7D2018015B565A6EFA034ED41199717CEA4BCB8AA74';
wwv_flow_imp.g_varchar2_table(584) := '0000808EB20C00300E75D58D89FE50929D4A4701808D7472E9002370F2CC177E94652865CC5BA00165B60E1CBA67646C9AF6E824FF9EE933490F001804651900602CBA71C4FB940E0100332D82AC945333EF85C7AE1C0C258C639B126051A63EADF59369';
wwv_flow_imp.g_varchar2_table(585) := 'DA43324E2F9BC974190080E294650080E1ABABFB24B97FE91800B089CE281D6004CECABC171EB758C063C0C6F853E900000BF4FC8C55D3B633992E0300509CB20C00306C75B55B92D7948E01000BE02EE10B37F7AD606CC34429BF2F1D006041BE9CA6FD';
wwv_flow_imp.g_varchar2_table(586) := '6AC6EDD5239FB677612E5A3A0000404759060018BA9727D9A57408008015E03A0DA51C5A3A00C082BC3463D7B45D81F15D992E65190060105C84010086ABAE0E48D26DC10400002C9F1F960E00B0008725F968A6E155A50300004C9DB20C00304C75D59D';
wwv_flow_imp.g_varchar2_table(587) := 'A7BCAC740C00009881434A07005880FF48D39E992968DA1F2419FB7652000083A62C03000CD5BD925CBB7408000098B83F24F959E910009BE8F4AE6292697953A6E9CFA50300007494650080A14E957976E918000030031F4FD39E553A04C026FA549AB6';
wwv_flow_imp.g_varchar2_table(588) := '2BFF4DC9FB929C94E939A3740000808EB20C0030447748B24FE91000B060DB940E3002DB67BC4E2B1D0036D27B4B0700588077676A9AF62F493E523A0600C05429CB000043F48FA50300C032D8B2748011D83CE335C53BBF99BEDF2639A8740860C59D98';
wwv_flow_imp.g_varchar2_table(589) := '69E90AAB1FCD347D20D3F3D7D20100003ACA3200C0B0D4D515931C503A06002C83AD4B071881AD325EB6B1618C5E9FA6B51D06CCCFD4CA0A5F4ED31E9F69FA4C92D3332D532B6B010023A52C03000CCD8393AC2A1D02009681B2CCB4B7AA9AEA221DD375';
wwv_flow_imp.g_varchar2_table(590) := 'DC52590698A3A94D43FB74A6AA69BBD7EA43322DB6AE04000641590600188EBAEA4A32F72D1D030096C9C54A071881ED335EA7960E001BE8A5FD222C303F537BCFFA62A6EDCB9996A995B5008091DAA274000080B55C3FC9A5336F4724F95592DFF5C79F';
wwv_flow_imp.g_varchar2_table(591) := 'FABB7EFFD21F2BE5A149EEBC825F0F600E76281D6004B6CB78D9528031392CC9CB4B87008A99D234B46E8BA2EF65DABE916939A1740000808EB20C00302477C9BCFC21C9C1FD5D62DF49F2E334ED302E1AD5D501A523004CD04EA5038CC08E19AF61BC87';
wwv_flow_imp.g_varchar2_table(592) := 'C3853B2BC923D2B427970E0214F3E74CC72F67F07AF6A34CCB4ADE08040070BE9465008021B97DA6EF67490E4CF28124DF4FD3768B1500CCC3AEA5038CC0980B4553BA4B9F697B6D9AF633A54300454DA9E0D94D669DC334B033936C966998D2F30F0018';
wwv_flow_imp.g_varchar2_table(593) := '316519006018EAAA5B40DC37D3D4DD35F5AE246F4AD37EBB7418008A5196B97055C6ABDB361186EE90244F2E1D0228EEB8896D653C6D4DFBD7D4D5D1492E916998D2F30F00183165190060286E9C6455A6A54DF2B2246F48D3BA1804C0EEA5030C5A5D6D';
wwv_flow_imp.g_varchar2_table(594) := '9564E78CD79F4A07800BF19B24774DD39E5A3A0850DCB1998EB96CE933A5ADA68E291D0000A0A32C03000CC57E998E6E01E2E5495E9CA6355E188035F6281D60E076CBB859F861C87E9FE49669DA3F940E020CE6C60E28C53913003008CA3200C0505C27';
wwv_flow_imp.g_varchar2_table(595) := 'D3F0DD240F48D3FEB87410000667CFD4D5E669DA334A0719A8B14FDEB1F0C850FD36C9CDD3B4BF2C1D04188C3F663AE6B2C6B159A6E3A8D2010000A6768205008CDB35337E6F4B7223451900CEC796492E5D3AC4805D36E3D515A08E2E1D02D6E1DB496E';
wwv_flow_imp.g_varchar2_table(596) := 'A028039CCB94DEB376C93C54998E293DFF00801153960100CAABABEEE2D6AE19B7172779709AF694D2410018B4BD4B0718B0CB67BCFE98A63DB374083897FF487293346DB70513C0DA8EC8745C2A5357573B27D926D3704C9AB6DBBA1A00A0B8B98C2804';
wwv_flow_imp.g_varchar2_table(597) := '0086ED0A19B7B727F9E734ED59A583003078FB24F94CE9100375C58CD7EF4A0780733D1F1F9DA6FD68E920C060FD21D371E54CDF94FE1D8F2C1D0000600D936500802118F3B60B872679D4048B325B970E00305153D87670398B446335A53BF419AF1393';
wwv_flow_imp.g_varchar2_table(598) := 'BC70E97B495106B8F0F7ADA9FC0C5BA5AEF6CCB45D2BD3A1600C000C86B20C003004631E9BFCE434ED49999EB16F8B053054D7291D6090EA6AF32457CD781D5E3A00B3D626795192BDD2B4CF4CD3FEB9742060E09AF6B42453DAA2ED2699B69B663A7E53';
wwv_flow_imp.g_varchar2_table(599) := '3A0000C01ACA3200C0108CB598F1D3241FC9345DBE74008089DA2775B56DE9100374A524DB64BC0E2B1D80D9E90A31EF4F72EF247BA6699F91A63DAA742860547E9DE9B86DA65D28BE55A6634ACF3B0060E4B6281D000060696CF238BD6D82DB2F7517E3';
wwv_flow_imp.g_varchar2_table(600) := 'B64A7295D2310026FC73F87E490E2A1D64606E9471FB55E9004C52779E797C92E3FA2D537E91E407490E49F2AD7E3204C0C6FAE504DE7FD7B84BEA6ACB34ED5F333D0724D925D37ADE01000C82B20C0030043B659C3E9669BA7E928B940E013061B75096';
wwv_flow_imp.g_varchar2_table(601) := '398F9B65DCE6B9F0D3B4AB4A470060A31D9AE9D839C91D937C28D3F3A04CCB949E7700C0C8D98609001882ED323E27F7DB304D5177911180E57387D20106A5AE56F505A2B13AA39FF801006332B5F7AE47676AEAAADBB2FA5E9916651900603094650080';
wwv_flow_imp.g_varchar2_table(602) := '2118E3B4BBA3D2B467666AEAAAFBFFE2FEA563004CDCBEA9ABCB950E3120FB26D93DE3F52BDBE10030423FC9B4DC3A75D59D534CC93F26B968A6E3F034ED9F4B870000584359060080B5DD33C99EA54300CCC0DF950E302077CFB8FDB8740000D8083FEF';
wwv_flow_imp.g_varchar2_table(603) := 'A7A34DC9F333157575F1248FC9B44CADA005008C9CB20C00C0C699D2DD5DABD5D556499E573A06C04C3CA4DF7E68DE56FF37B86FC6EDFBA50300C0066BDA5326B815D39D5257B7CE34BC60A45B565F901F940E0000B036651900808D7389D4D5369996A7';
wwv_flow_imp.g_varchar2_table(604) := '27B962E9100033B17792DB970E3100374F72F98C9BB20C0063F5BD4CCF6B47FFB37A5DDD24C943333DCE990080415196010086E0AC8C4F7727FC353215AB2FC63DB3740C80997956E90003F0D88CDFB74B0700808D34C5F7B02B247949C6AAAEB6EFE6FE';
wwv_flow_imp.g_varchar2_table(605) := '4C74EDE63BA5030000AC6D8A275C00C0F81C9F71BA43A6A0AE2E9DE47D49B6281D056066F64B5DDD25735557574932F67FFFA3D2B487970E01001BE95B99A67F485DDD2DE3DC9EF2CD49F6CAF49C90E47F4B870000589BB20C0030047FC9383D307535EE';
wwv_flow_imp.g_varchar2_table(606) := '82495DED9AE4934BDB4A0150C2AB5257DB659E9E3F81EB1287940E00009B58963923D3D3954EDE96BABA66C6B735F2BD334D5F4FD39E593A0400C0DAC67E510A009886E3324E9749F2908CBB28735092EECE7E00CAB86C9297666EEAEA1649EE91F1FB4A';
wwv_flow_imp.g_varchar2_table(607) := 'E90000B0D19AB6BB71E5FB99A66E3BA38FA5AE2E9731A8AB3AC90B325D5F2D1D0000E0DC9465008021382AE3F5927E1BA371A9ABAEE8F38524572F1D05803C2275F5D0CC455D6DDF6F313005DD7B29008CD917335D7B26F974FFF3EF70D5D57DFB73A36E';
wwv_flow_imp.g_varchar2_table(608) := '22CE547DB974000080735396010086E08F19AF1D937C2475B543C6A2AE6ED66F1B61A20CC070BCB15F2899B6BAEA1681FE33C938EEF2BE60DDDDF8DF2E1D020036D1C199B6BD978A1A7575B50C515D3D2EC93B936C9EE93A25C9D74A8700003837651900';
wwv_flow_imp.g_varchar2_table(609) := '60080ECFB875FBA07FA6DFD668B8EA6ACBD4D5F3FAAD972E513A0E00E7D02D90BC3D75F5984CDBBF26B957A6E1F369DAD34B870080059465A6FE7EB6675F98B96386A2AEB64A5DBD36C9AB263E51A6F3D534ED49A54300009C9BB20C003004BFCEF85D6F';
wwv_flow_imp.g_varchar2_table(610) := 'E94EA9E1DEAD769324DF4AF2EC89DFB1063066DDEBF36B5257EF4C5D7593CBA6A3AE364F5D758B414FCE747CAA740000D8644D7B7C92AF67FABA69B01F4D5DBD78E9469292EAEA727D49E9D19907E74C00C02029CB000043F0AB246764FCF64AF28DD4D5';
wwv_flow_imp.g_varchar2_table(611) := 'A35357C338CFAAABABA6AEDEDFEF437F8DD27100582FF74BF2E3D4D5DFF5DB168D5B5DED9EE49349BA6D06A6E413A50300C082CCE53DAD3BAF7A6AFF73FBB557FCAB77D709EAEA1F92FC20C90D331F1F2B1D0000605D86B1880300CC5BD39ED61766A660';
wwv_flow_imp.g_varchar2_table(612) := 'EB24AFEDA7CCDCAC4882D517E06E93BAFA68921F26B9FB0CC63A034C4D5730F9EF24DF4E5DDD3375B545C666F5F6028F5F2AFE24B7CAB4FC204D7B58E91000B0201FCEBCECDB17665E9FBABAE48A7CC5BADA7FE96B26FF9E64BBCCC72FD3B43F291D0200';
wwv_flow_imp.g_varchar2_table(613) := '605DC677B10D0098AAAED471854CC7F597C62AD75537D1A5DB76E2A369DABF2EEB57ACAB6E72CCBDFB8904975DD6AF05C04AB9569203931CB9B43DD3EACFBF9DA63D2B4355577B267960BFB5C01E99A60F960E00000BD39519EAEA6749AE9C796D7FF9C8';
wwv_flow_imp.g_varchar2_table(614) := '24F74F5DBD31C92BD3B4BF5BF857A9AB5B24794A92DB669EBA73570080415296010086E2BBFD0494A9D9BF3F8E495D7DB81F6FFD8534EDD19BFCC875B577921B243920C96D925C7A21890118EAA499A7F4C71F53579F4BF2D5FE0EE51FA5694F2C96ACAE';
wwv_flow_imp.g_varchar2_table(615) := '2E9EA4DBCAE0C6496E9DE47A339864FBEED2010060C1DE9BE4D9999F6ECACB93923C3E75D56D17F4B6A5ED239BF6944DDC82F26F933C34C955336FCA3200C06029CB000043D12DF64DD9CE491EDC1FDDC5B36EDBA9EF25F96992C3937477B01D9BE4E424';
wwv_flow_imp.g_varchar2_table(616) := 'A7F68B8C5B26D926C98E4976EB174A2F9FE48A49AE966487D2FF520014D19553FEAE3F3A67A6AE7EDDBFA71C9AA4FBFC88FEBDE54F49DAA5F7988D9D465357DD7B589564D7247BF6E5CC35EF47FBF4EF5173F2BD346D77F73D004CC9BB665A96597BADE4';
wwv_flow_imp.g_varchar2_table(617) := 'AEFDF197BE987C70924396B6946CDAE3CFF76FD655776E74F52437E9B79EBC8EAD9097FC3C4DFB9DD2210000CE8FB20C003014DD05A833FA51C87370F9FE0058942FA6AEBAD7D131D83F4DFBE7D2212664B3F57A5FA9AB6E91A79B40735A9213964A36EB';
wwv_flow_imp.g_varchar2_table(618) := 'B67D92ADFA8F5D31D362CF3935A5030C465D759301190EAFADC3B2FB88BE478E4CD3DEB174080A6BDAFF4D5D7D2DC90D4B4719C8B499BBF4C76A75D5958FFFD0DFE4D29D735F34C94E492ED5DFE4C27939670200064D5906001886EE2EADBAFA7EBF8D03';
wwv_flow_imp.g_varchar2_table(619) := '001BAEBB9B752CE6528C1C9AAEF8622AD9A639B5BFF39ED5F62D1D8073F0DA3A2C5B8DE87BA49B64099D372BCB9CAFAA3F583FA727797BE91000001764EA7B880300E37250E900000017E07D69DAEECE720098A2F7F4935360537D284D7B64E910000017';
wwv_flow_imp.g_varchar2_table(620) := '4459060018924F940E000070015E533A00002C9BA6EDB66BFCCFD231988457970E000070619465008021F98ABBD8008081FA5A9AF690D2210060054A0EDD163AB0B1BE95A6FD52E91000001746590600188EA6FD6B928F958E0100B00E2F2D1D0000965D';
wwv_flow_imp.g_varchar2_table(621) := 'D3FEB6DF8E0936D6BF950E0000B03E94650080A1F9AFD2010000CEE527493E543A0400AC90172639AB740846E9D024EF2B1D0200607D28CB000043F3D9247F281D0200602DFF9AA63DB374080058114DFBD3241F2E1D83517A81732600602C9465008061';
wwv_flow_imp.g_varchar2_table(622) := '69DA6E6FF4B7958E0100D0FB599277950E01002BEC9949941ED810BF70CE04008C89B20C0030446F70510E00188867F7655E00988FA6FDB16D92D940CF70CE04008C89B20C00303C4DFBEB241F291D030098BD6F26795FE9100050C8B3929C5A3A04A3E0';
wwv_flow_imp.g_varchar2_table(623) := '9C0900181D65190060A85E5A3A0000306B6725F9C7346DF71100E67A23CB2B4BC760F0BA73A5273A670200C64659060018A6A6FD4A92834BC7000066EB3D69DA2F970E010085BD28C9EF4B8760D0DEDD5FC30100181565190060C89E5B3A0000304B7F4E';
wwv_flow_imp.g_varchar2_table(624) := 'F2A4D22100A0B8A63DC17B2217C0F30300182D65190060B89AF60B493E5E3A0600303BCF48D31E593A04000C42D3FE77924F958EC1203D3D4D6BF21000304ACA3200C0D03D25C9E9A5430000B3F1F524AF2D1D020006E6E149FE523A0483F2A5246F281D';
wwv_flow_imp.g_varchar2_table(625) := '0200606329CB0000C3D6B43F49F29AD2310080593829C903D3B467960E020083D2B487277962E9180C46579C7AB073260060CC9465008031786E92DF950E01CCCE5F4B070056DC93D2B4BF28F8F54F2BF8B5610C4E2D1D0066AD69DF9CE423A56330084F';
wwv_flow_imp.g_varchar2_table(626) := '48D3FEB2740800804DA12C03000C5FD39E90E411A56300B3734CE900C08AFA609AB6F456025E77E0821D5B3A009087BA9965F6DE9DA6FDCFD22100003695B20C00300E4DFB89246F291D039895234A070056CCA1491E523A84D71DB850BE47A0B4A66D93';
wwv_flow_imp.g_varchar2_table(627) := 'DCDB34B4D9FA799287970E0100B008CA3200C0983C3E49C9AD1180F92D9E03D3F79724774FD31E573A88F31CB850BE4760089AF66BFDCFE7CC4B37F5F76E69DA3F970E0200B008CA3200C078346DB79875AF2427978E02CCC20F4A070096DD1949EE9FA6';
wwv_flow_imp.g_varchar2_table(628) := 'FD618661283960A87C8FC050ACDEBAF075A563B0A2E74CF749D3FEB4741000804551960100C6A569BF9FE451A5630033D0B4DD560FBF2B1D0358564F4ED37E38C3DADAE0F8D22160C0BE99E4ACD22180B33D2EC9C74B8760453CB6DF1E1B006032946500';
wwv_flow_imp.g_varchar2_table(629) := '80F169DAB7257969E918C02C7CBE740060D9BC384DFBCA0C49D376776D7FA1740C18ACA63DDA741918DCFBD6BD937CB5741496D5BFA4695F5F3A0400C0A229CB000063F5B4241F281D0298BC8F950E002C8B6EC1E79F334CEED0870BE6BD1986A4694F4A';
wwv_flow_imp.g_varchar2_table(630) := '72872487948EC2B2958B9F533A0400C07250960100C67C07DB03927CB1741460D2BA51E327960E012CBC28F30F69DAA16EE5F2C1247F2D1D0206ECBDA50300E7D2B4DD1682B75598996451E6E9A54300002C1765190060EC77B0DDC5053960D934ED5F92';
wwv_flow_imp.g_varchar2_table(631) := '1C583A06B0302F4CD33E7AC0459935DBCC7CA4740C18ACA6FD7E926F978E019C6F61E6E0D2515888E72ACA000053A72C03008C9B3BD880E5F7EAD201804DD64DA47B4C9AF6991987D7940E0003E77B0486FBF3F9ED92BCBB741436DAE9491E9EA67D5EE9';
wwv_flow_imp.g_varchar2_table(632) := '200000CB4D590600985261E62BA5A30013D4B4DF4DF2C9D231808D765C923BA5695F9BB168DA2F24F97AE9183060FF9DE4F0D221807568DA5393DC374957B618EE2437D6E598A5B253D3BEA97410008095A02C03004CA930739B241F2E1D0598A46E1AC5';
wwv_flow_imp.g_varchar2_table(633) := '99A543001BACDBAEE57A69DA3116DE6C7D00E7A7694F4BF29CD23180F3D16D77D8B4CF4D72D724C7968EC37AF94E92EBA6690F2A1D040060A528CB0000D3D1B42725B9479297958E024C4CD37E3BC95B4BC70036C8EB93EC97A63D3463D4B40727797FE9';
wwv_flow_imp.g_varchar2_table(634) := '1830606F4FF2CDD221800BD0B41F49726DD3D206AD9BFEF3EF496E9CA63DAC7418008095A42C03004C4BD39E91A67D7292072439B1741C60529E9AE40FA5430017AAFB3EBD739AF6D169DA53326E8FEBB79102CEAD69BB896F0F4BF2D7D251800BD0B4BF';
wwv_flow_imp.g_varchar2_table(635) := '4E72D37E1A94EFD7E19D33755B553E7602E74C00001B4C59060098A6A67D6792EB27F951E928C04434ED9F92D4FDDD97C03075EFFF574BD37E2C53D0B447267944E91830584DFBFD7EAB4460C89AF6F434EDBF2C6D8D987CB7741CCE9ECED59D337DA274';
wwv_flow_imp.g_varchar2_table(636) := '1000805294650080E96ADA9FF417E35E9EA4BBF3948DE3EE3F58A3693F95E405A56300E7F18B24B749D33EA02FB64D47D3BE37C96B4AC78001FBB724DD562FC0380A6EDD4D2DFF98E484D27166EA67496E95A67DD0E4CE9900003690B20C00306DDD28E1';
wwv_flow_imp.g_varchar2_table(637) := 'A67D52921B25F961E93823D42D3CDCB5740818986E84FC81A543004BBA2D8A9ED2DF19FD994C57B7A8F8C9D22160909AB69BF8767FD32A605453665E91E44A49FED38D2D2B7ACED46D597DCD34ED41A5C300000C81B20C00300F4D7B48926B2779627F91';
wwv_flow_imp.g_varchar2_table(638) := '880BF6AB247749D3FE4D926E0B08E0BC8B72DD9419D8D03B799FE57D68214E4ED22DB45D214DFB6F69DAD332F585C5E41E493E573A0A0C52D3FE39C96D95E361449AF60F69DABF4F728D241FB2D5E9B29E33FD6B92BDD3B42F9BFC391300C00650960100';
wwv_flow_imp.g_varchar2_table(639) := 'E67607DB2B972E12ADDE9AA9BB68C439B5FDDDEB5749D37EB4741818ACD51799EFD25FD887F5D54D3BEBB6F1BA5C92E72639A674A011FA4B5F92D92B4DFB8F69DAEE7D6B1E9AF6A424774E32E5093AB0F19AF6E824B74CF2BDD251800DD0B43F4ED3DEAD';
wwv_flow_imp.g_varchar2_table(640) := 'BFB9A5DB7AD0A499C5E8B6B97A497FCEF4545B2E01009C97B20C00303FDD45A2D55B33ED95E495FDC2DBDC758B0B4F5B5AC0ED4662BBDB0C2EDCEAEF937B267975E9288C4CD31E97A67D5E92CB24795C925F948E3402BF4DF2CF4BFFCD5697647E9F395A';
wwv_flow_imp.g_varchar2_table(641) := '5D98B95392B7948E02032ECCDC2CC9274A47013650D37E2F4DFBB7FDCD2D5D31D624BE8DF3CB24DDF58E4BA7699F36DB73260080F5A02C0300CC5777D1A8699FD82F56764591C3333F3F4FF2E87EF1F125695AC521D8104D7B469AF6F1FDB64CDD1610B0';
wwv_flow_imp.g_varchar2_table(642) := 'FEBAD7DCA67D4D922B25B94D9203939C5A3AD680FC35C94792DC35C9E5D3B4FF2F4D6B1A4F57D46BDA8726797892AE3C03ACAD694FE8A7303D3B49B7851930264D7BD8523136D923C903937CDEB4990BD54DCD7D777F3E79C534EDCBD3B4C7970E050030';
wwv_flow_imp.g_varchar2_table(643) := '745B940E000050DCEA85B797A4AE5E9AE476491EDCDFB57D91D2D19649B710FBE1246F4EF2D934ADBDE1615335EDBB52575F49F2C6FE2235ACBFD5AFC3DDD63A9F495DED9CE4DE49EE9BE4C633BCC9A55BD8FE425F1CFA403F25827569DA37A5AEBE98E4';
wwv_flow_imp.g_varchar2_table(644) := '4D496E5A3A0E0C4AD3760BEBCF4F5D7DBAFF1EB97AE948C0464D537BC7D25157BB27B97B3FD5F12649362F1D6F00BAFF3EDD6BDCFB97CAC5AB8B8200006C0065190080B52744241F5F3AEA6AC7FE625CB777FAAD925C34E32FC87C2EC9FBFAC54723AD61';
wwv_flow_imp.g_varchar2_table(645) := 'D19AF6D7496E9BBAEA5E375EBC7457276C5C81F30D4BC7EA85A16E3AC25D92DC3CC9D699A65FF7778D770B3E9F4AD31E5B3AD06834EDCF5357DD9633F749F2C224972D1D0906A5690F495D5D3BC923FB4933BB968E046C84A63D32C9BF2F1D75B553925B';
wwv_flow_imp.g_varchar2_table(646) := 'F6C701FD84BE5599BEEE7AC577931CDC97ACBF98A63DA57428008031539601005897D56592B72C1D75B56D925B24B975BF5879D5915C8CFB595F90E9161F3F97A6B5450CAC84A6FD60EAEAA349EE95A41B217FDDD29118F5C25037ADE88DA9ABADFB3BA9';
wwv_flow_imp.g_varchar2_table(647) := '6FD12F0C5D77A43FD3FF29C9F7937C3BC9B7927C3D4D3BC76D10173D99E8BF5257EFEB27123D21C9354BC782C168DAD3FB05F626C943923C2EC95EA563011B6975A9F67DFD91D45595E43AFD71AD24D7E8BFC7371FF956943FEFCF99BED79F337DCBB6C9';
wwv_flow_imp.g_varchar2_table(648) := '00008B35C60B6B00002BAB694F4CF2D1FE587331EE0649F6EB2FC6EDDBEFA75ED291FD85B4EF24F96692AFA569FF583813CC7D61EEBF978EBAEA16ADFFAE9F54D5DDF90A1BAE694F3E7BABA64E5D6D93E4DAFD7BD1BEFDD14D33DAB274D4245D79E37749';
wwv_flow_imp.g_varchar2_table(649) := '0E4DF28B243FED8F1FA5698F281D6EB29AF6B4EE7F978EBABA5E92BFED5F772E5F3A1A0CC2EA45E657A7AEBAE914FBF7DF23DDE4AE6E8A1730564DDB2E4DA65B7DACB6BA64DC9D775FA5FFB8777F9E74B924DDCFF3437154925F9DEB9CA92BC9FCBC7F5F';
wwv_flow_imp.g_varchar2_table(650) := '0700601929CB00006CDCC5B8D5DB35ADB17ADBA6EE42DC15FA0B709749B2675FA2E9C6BDEF9264B34DB8ABACBB13FFE8BE14D32D40FEB6BFA8F68BFE42DAB1CB3CEE79E8DB36751937C52923F8775C5B57C4602C9AB62BB275C7D35357DDEBC28DFB6243';
wwv_flow_imp.g_varchar2_table(651) := '77E17ECFFE356287914CAC5A6499824DD1B42725F9727FAC56575BF6EF437BF747B725CFA5935CB23FAA4DDCCAA97BADEDDE6F8EE9DF97BA52E6EFFBA37B7F3ABC3F0E4BD376DBFF514AD376C5D9EE7872EAAA7B1EDC68AD42D59EFD794977EEC2B4786D';
wwv_flow_imp.g_varchar2_table(652) := '5D1F4D7B66BF8D49773C2A7575A5FE7BE41AFD6B68F73DD26DF372B1CCC7092BF4FC1CD3F976F73ECBB84BC6DFEB8F73AAABED925CAA3FBA9FD777EB8F353FB7EFD41FDB27E9A6CC767F7E7D1DDF3F774EE89FEFC7F6E74C47F5E74D47F6E74DDDCFF4BF';
wwv_flow_imp.g_varchar2_table(653) := 'E973020050C8AAB3CEF2733400C08A585DA8D9A1BFE0B655926DD63101E0A4BE1CD37DEC26DA9C60FB24800B505787F5A59031F85E9AB69B4856CEEA3BAD77EC177EB6EDDF87BAF7A3739762D68CF9EF167ABAE2CB9F8DFE070066A9AE2E722185E3BFF4';
wwv_flow_imp.g_varchar2_table(654) := '9325010018116519000000C64B590600000000D8401BBB150000000000000000008C8EB20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000';
wwv_flow_imp.g_varchar2_table(655) := '000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28';
wwv_flow_imp.g_varchar2_table(656) := 'CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000';
wwv_flow_imp.g_varchar2_table(657) := '000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA';
wwv_flow_imp.g_varchar2_table(658) := '320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000000000CC86B20C0000000000000000B3A12C0300000000000000C06C28CB0000000000000000301BCA320000000000';
wwv_flow_imp.g_varchar2_table(659) := '000000CCC616A503000000C026787292ED320EC7940E000000000024ABCE3AEBACD21900000000000000006045D886090000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000';
wwv_flow_imp.g_varchar2_table(660) := '000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D95096';
wwv_flow_imp.g_varchar2_table(661) := '0100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D950960100000000000000603694650000000000000000980D65190000000000000000664359060000000000000080D95096010000000000';
wwv_flow_imp.g_varchar2_table(662) := 'E0FFB76B07020000000C83EE4F7D901547000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00';
wwv_flow_imp.g_varchar2_table(663) := '0000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000';
wwv_flow_imp.g_varchar2_table(664) := '00000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000';
wwv_flow_imp.g_varchar2_table(665) := '000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000';
wwv_flow_imp.g_varchar2_table(666) := '0000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000';
wwv_flow_imp.g_varchar2_table(667) := '00000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000';
wwv_flow_imp.g_varchar2_table(668) := '000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000000000';
wwv_flow_imp.g_varchar2_table(669) := '0019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000000000';
wwv_flow_imp.g_varchar2_table(670) := '19B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019';
wwv_flow_imp.g_varchar2_table(671) := 'B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B2';
wwv_flow_imp.g_varchar2_table(672) := '0C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C';
wwv_flow_imp.g_varchar2_table(673) := '000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00';
wwv_flow_imp.g_varchar2_table(674) := '0000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000';
wwv_flow_imp.g_varchar2_table(675) := '00000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000';
wwv_flow_imp.g_varchar2_table(676) := '000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000';
wwv_flow_imp.g_varchar2_table(677) := '0000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000';
wwv_flow_imp.g_varchar2_table(678) := '00000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000';
wwv_flow_imp.g_varchar2_table(679) := '000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000000000';
wwv_flow_imp.g_varchar2_table(680) := '0019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000000000';
wwv_flow_imp.g_varchar2_table(681) := '19B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019';
wwv_flow_imp.g_varchar2_table(682) := 'B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B2';
wwv_flow_imp.g_varchar2_table(683) := '0C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C';
wwv_flow_imp.g_varchar2_table(684) := '000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00';
wwv_flow_imp.g_varchar2_table(685) := '0000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000';
wwv_flow_imp.g_varchar2_table(686) := '00000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000';
wwv_flow_imp.g_varchar2_table(687) := '000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000';
wwv_flow_imp.g_varchar2_table(688) := '0000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000';
wwv_flow_imp.g_varchar2_table(689) := '00000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000';
wwv_flow_imp.g_varchar2_table(690) := '000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C00000000000000';
wwv_flow_imp.g_varchar2_table(691) := '0019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000000000';
wwv_flow_imp.g_varchar2_table(692) := '19B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019';
wwv_flow_imp.g_varchar2_table(693) := 'B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B2';
wwv_flow_imp.g_varchar2_table(694) := '0C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C000000000000000019B20C0000000000000000AB3825';
wwv_flow_imp.g_varchar2_table(695) := '957406B12ACD4B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(14525514770417641)
,p_file_name=>'artpetro-logo-icone-laranja.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260813161822Z')
,p_updated_on=>wwv_flow_imp.dz('20260813161822Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D7B7454D5B9FFF63C9249422699C913508410C027AF0490C8BDADF7D6C7BD5AFFF0AE7A5DF7AE75B5B7AB90A80965AD7BAB026DA90BD2D6';
wwv_flow_imp.g_varchar2_table(2) := 'B6564881846A5F6AD7EA12B416A40BF181B53C82588B224411E52184775E9379CFEC7EDF9E890D9899CC9C73E675CE3EEB7CE7B9F7F77DFBF7FD66EF7DCEDE336302B9480454202009A4023C9915401248B24015029240AAE093992581240754212009A4';
wwv_flow_imp.g_varchar2_table(3) := '0A3E99591248724015028A09A4CAAACCAC1B0424817413CACC1444122833B8EBC6AA24906E429999824802650677DD589504D24D2833531049A0CCE0AE1BABE9275002D0FDEF8F9E2E7EE0F1B5D5CD8F774C6E7EAC7D46CBCA0D0D8B57B5DFD2BCB2FDAB';
wwv_flow_imp.g_varchar2_table(4) := '46102A2B9599CA4E181016844902D0A53D496609C4397BA8B5E3EA96D68EFB16AF5ABFAE6555C7BE9655EDFE31C140BF2560EE6601FE3133C3DF80857772805718833F1A41A8AC54662A3B6140581026844D4B04A3B58419610788216470492B819A5B7F';
wwv_flow_imp.g_varchar2_table(5) := '59B1B875DD5DCD2BD7AF6A695DBFBDA5B5A3C7C4F92104E1D71C581300AF432CAC28721D1901C44660F4006146D8118602CB551D2BA9765EB2E229E7C8595373357D04C24F0A0BFB1B70F730636C2970F6152C52098A5CD5215012C1922F333178389C17';
wwv_flow_imp.g_varchar2_table(6) := '68407231752A13CF9D72022DECE8B02E6E5DFF4DFCA47401833F00B006904B4A10E00037E1077433627D68716BFB3708FB94181AA634A5045AB272FD78DB79D88D85DA8036A7A2C8353D084CE31C9E2A38CF773563B72195265346A0E6D6F66B438C7546';
wwv_flow_imp.g_varchar2_table(7) := 'FB35A92C83D41D0301AC91EA19F7EF5EF2D886EB6224517D3925046A59D9B18071D885DE8D47D168956A14223039640EEF6C6EDDF02585F9E366D39C4054F300E3DBD0AAEC20230859B296301EDE9A8A9A4853022D5CD1518835CFF3085A218A5CB30B81';
wwv_flow_imp.g_varchar2_table(8) := 'C2A025FC7B8A91966E694A209B25BC0E9DBB1645AE5988007EB8AF8BC64833EF342350F3AAF5F70363F769E69954941A04304622561A69D784404B9E78A280017B42239FA49A142380B1FAE942EC6E686146130285DC8554F338B47048EA480B024E9B85';
wwv_flow_imp.g_varchar2_table(9) := 'FF8F1696D413887324347C0BB277919E8D8400632D5A0C79A82650CB0F3B6E43FFA6A1C835A710E0D74463A7CA6BD504E26190B50FE4E6A245EC5411E8FE15BFB231805B72133EE935C58E1E80D420A18A40A566EF8D685C950ECC2FD7CC2160E28305F3';
wwv_flow_imp.g_varchar2_table(10) := 'D4985715FCB0D9440452635FE6CD30026A63A88A40D88B9704CA3001549BE75C550C151388D3E33BC002D505C8620506712D33047AF0C7EBAA10E03214B9E63602550FB6FE5C711C15D740F961AB62A3B98DB7FEBCCF33E5552B2D9562028539C8291B4A';
wwv_flow_imp.g_varchar2_table(11) := '51CFB27C6A62A982404149A02C23825277C25C792C151388315381528765BEEC4280719345A9478A09C46513A614F3ECCB67022B285C141308640D141BF21CBBA3A632504C207338A498B5B982EF607F1F90E48ABF8AFD545119282610071654EC700E64';
wwv_flow_imp.g_varchar2_table(12) := 'ECEF390F83034820143ACE019733E2A2620265C4DB3419EDBB780EBC6E375455960BA1E3BE8BE7D3643DB7CC48025D16AFDE0B67C1E7F180D3510A7366CD10E27496E23537F45E3877596A792A09348C03FD3D17C0EFF542B17D0CCC9F331BCC669390F9';
wwv_flow_imp.g_varchar2_table(13) := 'F5B3A1A4C48EF73C4069866531FCA1245094026E573F365B83505C3C0616CC9B03168B397A07C4710312AAA8A850A4F10C0E7C7ECFE80726A30340E5F779DDE0EAEB85C2421B34CCAD833CEB17DFABE5E55961C18D73A000D30CF4F680DFE7A5AC1A4BEE';
wwv_flow_imp.g_varchar2_table(14) := 'A9333C81C2E1B06896186330AFBE0E6CF97931A348F7E6CD9E05CCC4A01F3BD59437666283DC303C81FAF1719DE368E2D5536AC13EA670D4B09760FF686A6D0D1079067A2F8C9A5EEF090C4D208FDB05439DE6293557251CEB693593C08E44A2A7359FC7';
wwv_flow_imp.g_varchar2_table(15) := '9D703E3D26342C81A80671F5F500630CEA67CE006A96120D30A5AD9B7183C83BD07B1138368389E6D55B3AC31268B0BF1703CFE1EAA953126ABA2E0FBC1D9FD6A8D92322D21BEBCBEF1BE5DC90040A0602E01974413E7698E925E1C59E3E502294979ECE';
wwv_flow_imp.g_varchar2_table(16) := 'DCAE010885743DB213F3F3604802B9B0F621447C3E3FECDCBD17DE52283BF7BC0D7E7F805401D568E220339B8C59351C8142C100769C3D70D595E3E06B77DDA6894CB8621CBE60741BB216321C81A8B9A18FEBED37DF0477DC3C5F13B9FDE6C84F5F7B07';
wwv_flow_imp.g_varchar2_table(17) := '0749B5A1C45004E29C634D3108661CA6987DDD54CD025D77FD34A1935E0B68A6344714198A405ECF201089E6CE9A0EF93834A1558C4857FD8CEB201C0A010D8B68A53717F4188A403E8F47C4647EDD0D621F6BE3C5CEF596D776C1FA675F10B2E5F5DD40';
wwv_flow_imp.g_varchar2_table(18) := 'D762A5A7EBF3674FA71D0CD9102706D818864054F3F87D1E282A2A80E9D36A6286F6E499F3F0E80FD7C2C62DAF40E73BEF09D9B8799BB876EA6CECA18B99D7D64241814D74D0632AD7E10DC31088C8031CA0A17E56CC3086F08D72FB339BA0DFE5827FFF';
wwv_flow_imp.g_varchar2_table(19) := 'CA3FC3035FBF179AEEFF4F714CD7DA9FDD049426968286FA99628C2CE0F7C54A9275D7D53A64200245827AE3ECEB636276F8E8493871B21BE6D54D874913C68BA10A93C9248EE7611375FCC429F8E4F8A998F9E7CE8AFC2545C017B11533A18E6E188640';
wwv_flow_imp.g_varchar2_table(20) := 'A1805F846DF28471623FD2E6B3EEB3E272B9A354EC876FA65F33599C9E3C7D4EEC47DA4CBA62ACB81C0C466C89139D6F0C43201ABEA0F1AB78F1B4171789DB5EFF1709F0C9F16E716F4C9C291F34118D26A5912D91D8001B4310881EAF69D0D3516A8F1B';
wwv_flow_imp.g_varchar2_table(21) := 'D21A7C3B4D09BA3EFA0477D861C26D64E5D075F853000630199B3688B39496D821886FBBF17D419C54FAB96508020D0D745270E385AEDC6187BBEFB8058E7FD60DCF6DDA0A6FEE7947081D1FFFEC147CEDABB781C33E269E0A282B2D01EAAC87C2A1B8E9';
wwv_flow_imp.g_varchar2_table(22) := 'F472D31004A247780AD86804A23477FE6B03FCD7DD77C0000E4B1C38F81190B8F0F8BFFFE34EF8B72F8FFE635EF4ED0DD263943942C620103E9E53504B8AE3D71E94C6C418DCFA4F73E0E91F7F07563DF210FC60690BACFFC1A370CB827AA07B94269E0C';
wwv_flow_imp.g_varchar2_table(23) := 'D9A026335EBA9CBF172D80210814E661515C4749B1D827BA195F550E632B9C60B57CF15B1AB1740CD908CB262C1644B97B3D1DB50263D8D3268886F7C1E95CA762881A88B14850FBFA5D290F634F5FE44B878C456CA6DC60860D188240261629666F7F24';
wwv_flow_imp.g_varchar2_table(24) := 'B8A9C47CC806C337D8A9B4932DBA23C8668B3729F263289843C14D9119A1B6AFAF5FEC6908441CE87C6308020DCD42EC8D06379531BDD0DB27D4BB5D112289131D6F744F20FA5D1F5FF4CB7FF4CD8B6462F9E1A7278024993C4336E83785E85BAFC9E4CD';
wwv_flow_imp.g_varchar2_table(25) := 'C5B4C91328874AD977F11C1079C68FAB86B1D555E01A74434F121DE95F3CB7099EFADD0B0997F842EF0078BD3E618B6C128988C0092BC8C184FA2410E7403F06E5F378A01A895337FD7AA8AE2C17E13974E498D827B20987398442893F8F1FFC18C7CB50';
wwv_flow_imp.g_varchar2_table(26) := '71755505089B68DB87B51F1159AF6363BA24505FCF793133B00A033977D60DC04C0C2A2B22FFCC70A0EB08863835EB81AE8F85E2EA8A7261936CD3CFE4F990C8E493B8A9B38DEE08E41EE8C766CB0315E54EA0C9F38C45DEC7D8F2F3A1C45E0CFB3F3884';
wwv_flow_imp.g_varchar2_table(27) := '9541E2B50A24B88471B864FF812E287594007D5B95B231C6C44FE495391DC227F28DAEEB497445209A87E31AE885828202983B7B265CFE285D55550983831E381E9D38A665208F9E3C0334F1BEBAA2F212B566B309E6D5CF029B2D1FC837FA62E3250972';
wwv_flow_imp.g_varchar2_table(28) := 'FC443F04C27E4F5FCF393195A27EE60D60B1FCE327EA866244CD091D1FA4B93D74A0A11C3C7C5468ABAC8C3495E224BAB1A22FB3B11F46D33C44A71A7D8DDECAF99D6E08E4F7FB20140882C3510A4E6C46468A8C039B30ABD5026FEDF92B84350C224DB4';
wwv_flow_imp.g_varchar2_table(29) := '7F73F75E20DD646324DBD4A452134AB564203ABD76A474B9762D8D044A2D344393C6A8BF11CB12630C265D35014E9D3E0BEF1CF83056B2A4AFBFFD5E179C3BDF03359326C6CD5B5EE614F743C1A0D8EB61A31F024583525EE6881B97C93513C16236C38B';
wwv_flow_imp.g_varchar2_table(30) := '5B5FD7A416A29A6CD3CBAF8ADAA776E284B8B62581E2C293D99B1C9F82C883027CDAA27D2CC9C3FEC8D42993452DF4EE078763254BF8FABEF73FC4DAE7224C9B523B62BF6BB8A2C2029B380DEB68AE906E6A201199043735575D29BE1BFFD2B61DAA1EE9';
wwv_flow_imp.g_varchar2_table(31) := 'A9F67971EB6BF8846503FA1E5982E67595CC9004A247EB69536B8126CAEF57F162916AB0EE33E7E09AA993BFF0CA40572C895318431288F09878C578AC39F2E1998D5B60D0E3A54B4989DBE313790B0B0BE0CA716393CAABA7C4862510BD39A6178E172E';
wwv_flow_imp.g_varchar2_table(32) := 'F642FBB32F24D59451D3B5F6998D40D3436CF97940BAF4448A64CA920B044AA63C09A5F5F903F056E73EE8E9E90586E364EF1FFC08B6EED893505E4AF4F26BBBE0834387455E9ABE41BA4827DD339A188E402E971BFEBCAB1368E6A0ADB008CAAAC68319';
wwv_flow_imp.g_varchar2_table(33) := '9FCC366E7E050E1F3B396AFC697ED00B5B5F1579282FE9205DA4D3ED8EFCFED0A84A7494C0A4A3B28C5A14AA2DDEDCDD0914E8227B09D81D65603299705F2E9AB0D5BF780E8626C593B2C8CB6A4E8742CEF7F4C39AA77F27D296382BA279CB807491CE1D';
wwv_flow_imp.g_varchar2_table(34) := '3BF7404F1AE65D0B67B264631802759F3D077FD9F3360471B8C3EEC4A017977C1E026B5EBE20014D38FBDE4FDA61E39F76C0CB6FEC068FD70B6EEC60D3315DFBFE131D6230768CBD142CD67FFC294B11EA229D01D4FD975D7BE1F459E3FCBBA1E9731475';
wwv_flow_imp.g_varchar2_table(35) := '7C70E4E809D8BBEF6F403F8EE0A8A8025B41E4573860D8422420E9770DC2965776C0F37FDC0634BB90848EE9DA00DEA33485C5F661392387A49374731C31EDDCF72E7C7AECB3C80D9D6F754FA00387E8FBED5DA2CFE2ACA806AA6D62C5949AA28AB15700';
wwv_flow_imp.g_varchar2_table(36) := '11A1B4BC523451D4C4D1315DA37B9426567ED24D364C6633BCF7C12138D075385652DD5CD72D81FCD89C74BEB31F8E7C7A0C2C7979488AB14822EBA881A3AF0059B149CBCBB7013026848EE91ADD835116B3C50A4422B279E493A3B0F7AFEF01356DA364';
wwv_flow_imp.g_varchar2_table(37) := 'CBD9DBBA23D01B6FED8697B66E873F6D7F034E9F390BF494E428AF12B549BAA264329B816CDA0A0BA1FBF419D8BAFD0DE113F9962E1FD265473704A21A220F075285D80AA0A0680C50D3434F5A8C614DA200D17CD443A2202B565E4C3CDD910FE44B9ECD';
wwv_flow_imp.g_varchar2_table(38) := '06C237F4D18AA2446736E6514CA03083ACFAA7351BBED329C59A4648590514973A3160D80CA9409D7490A850217C201DA5659548E82A21D4E156A353F3BC3CACF805966202E1873AAB08A439A80652A826968A09C455B0D640B1C989A2AA89A562029998';
wwv_flow_imp.g_varchar2_table(39) := '45D64039418FD19D54134B1504CAAE3ED0E830C914B110C0F164C595816202010F2AEE78C52A48D65C379A232A62A998403E3357CC5AA3C527DBCBAB26968A09142CB1D05FD7243F952FDBD1349E7FDE682C15955C3181362C5A1400E09D8AACCA4C5984';
wwv_flow_imp.g_varchar2_table(40) := '00EF8CC452994B8A091435B723BA97BBDC4540550C5511C8140655C6412E1947406D0C5511A83764A389C4B21F94711A2876C01B8DA16205AA08F4EB155FF772062F29B6AEBB8CB955208A1DC5508DD7AA08240C87C34F8ABDDCE41E021AC44E3581DA96';
wwv_flow_imp.g_varchar2_table(41) := '3F40CD987C1ACB3DFA744663A7CA73D5048A58E7B2168A0091435B6D62A609819C81331B113963CC22C782EA603D198D99EAA26842A0152B560481C343AABD910AD28200E7D02462A681354D08447EAC59DE484F63ABE9584A5623B0BA6D79E366AD3CD4';
wwv_flow_imp.g_varchar2_table(42) := '8C40E490B79CFD3F0E6FBC4DC7529242202D89F1B17D472446DA99D3944034A66232C13DE8874659D700000236494441545E2F8A5CB30B8133266EBE9762A4A55B9A12881C7BF2D1A6A3DCC4FF058F8FA2C8352B1060C7B8196E5BBDEC9B67B476477302';
wwv_flow_imp.g_varchar2_table(43) := '91836D8F36BD1B62C17A60FC553A979239041883D7432C50D7F648E3FE547891120291A36B973E74A1BBB6EC763C6E47916B0610E0C07F7AAAD6792BC52255E653462072F8F97BEE09AD59D6D8848FF84D78EE47916B7A10F0300EF7B62D6BFA3F8A412A';
wwv_flow_imp.g_varchar2_table(44) := '4DA69440438EE3237EBB99F31A7C0AF81E073831745DEE3547005FE6B21588F594D5CB1B7F0F6958D242202AC7CF96379D6C5BDAF8D8E929CE49C0F9DD48A46D781D77B895AB62043063086533077667F714E7C435CB167D9FB0C66B6959D346A0A1D250';
wwv_flow_imp.g_varchar2_table(45) := '95BA6679D38B6DCB1A6FF79A9903ABDA2FE1BD6F21A97E030CDEC763FDFC0F001646E33548187180DF72CE967066FAB2CD62756037E1AEB6658B5E266C35B637AABAB41368B8471B1E59D48755ED9F1180D548AAFBD72C6D9C8EC75697C56A0F5A4363B9';
wwv_flow_imp.g_varchar2_table(46) := '95D5F210CC046EBA8901DCCA39DC6504A1B25299A9EC8401614198103684117EF8EE6B5BBEE8C9B6A50BDF7CFCE16F0C4006978C122856B97F89A0ACFBF683A7DBBEBDE848DB771BF7AF59BE70D7EA658DDBE915BC1184CA4A65A6B21306840561120BAF';
wwv_flow_imp.g_varchar2_table(47) := '4C5ECF4A02651210693B3904248192C34BA6BE0C0149A0CB0091A7C9212009941C5EFA49AD514924813402D2A86A24818C1A798DCA2D09A411904655230964D4C86B546E49208D8034AA1A4920A3465EA3724B026904A471D45C5A5249A04BF190674922';
wwv_flow_imp.g_varchar2_table(48) := '200994246032F9A508FC1D0000FFFFB1E0AC3600000006494441540300A460E68A39F510480000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20751396129651680547)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D796C1CD779FF6697C7F2E69214458A97EE833AAC239215C35793A66DDCF68F262D90066891162850348581A6400B146861A0688B0685DB';
wwv_flow_imp.g_varchar2_table(2) := 'A271E016699DBAF2D1AA7612D91692C87224C5A224DB9275CB92755FD6418A14B9BC77C9BCDF1BCE9B59EE35BB9C5DCEEC7C04DFCCF7BEF7BDF7BEF77BEF37F3E6CDB18167FFEEC5690E8C815FC74080F88F11F031024C001F773E379D8809C0A3C0D708';
wwv_flow_imp.g_varchar2_table(3) := '30017CDDFDDC781F13803B9F11E029108F019F23C067009F0F00BF379F09E0F711E0F3F633017C3E00FCDE7C26801F4700B75921C0045050B0E0470498007EEC756EB3428009A0A060C18F083001FCD8EBDC668500134041C1821F1098DD4626C06C4438';
wwv_flow_imp.g_varchar2_table(4) := 'EE2B049800BEEA6E6EEC6C049800B311E1B8AF106002F8AABBB9B1B3116002CC4684E3BE42C04704F055BF72636D22C004B009149B1527024C80E2EC576E954D049800368162B3E2448009509CFDCAADB2890013C026509E3663E75322C00448090D27F8';
wwv_flow_imp.g_varchar2_table(5) := '010126801F7A99DB98120126404A6838C10F083001FCD0CBDCC6940830015242C309C58040A63630013221C4E9458D0013A0A8BB971B9709012640268438BDA81160021475F772E33221C004C88410A7173502454C80A2EE376E9C430830011C02928BF1';
wwv_flow_imp.g_varchar2_table(6) := '26024C006FF61B7BED10024C008780E462BC890013C09BFDC65E3B840013C021205D550C3B631B0126806DA8D8B0181160021463AF729B6C23C004B00D151B1623024C8062EC556E936D049800B6A162432F2090AD8F4C806C1173C83E168BD240EF5D19';
wwv_flow_imp.g_varchar2_table(7) := '203B542C179325024C802C0173C23C168D52FFFDBB34313E2E0364E89C289BCBC80E0126407678CDD93A169D1483FF0E4DC562AA2CC8FDF7EF10D29492858220C0042808CC7A259313E3F4400CF4A9A929A9A8AAAA240444A0435A747202510E05428009';
wwv_flow_imp.g_varchar2_table(8) := '5020A031F8077AEFD1F4D4B4ACB1AAAA821EDFBE5506C85022AD5F5C17C016710EF947A08808907FB072AD61627C4C4C7BEED2F4B431F82BC5C0DF46A1F232191EDFBE4D9D094002108549902BDAD9E50B6467CED6D922808BDB870FEEAB6CD53555F4E4';
wwv_flow_imp.g_varchar2_table(9) := 'E7F5C16F284104E88CE9108832D0774F5C13440D13DEE7090126409E8045B1D362AE3FD0278EFC33D39E5045889E78742B95959522392E40872951281492FA699167E001A64CFAF58254F2C6710498008E433A53A098EEE0C81F8BEAAB3D25A52562F07F';
wwv_flow_imp.g_varchar2_table(10) := '2EE9E09FC921A7438F6DDB42A52541A98A4D460965C8086FF2820013202FB0120D0E3C906BFC285E0B68F4D8D62D5459598168DA50535D49DB1FFD1C210F0C27C4BD82A187FD1039E4010126401E401D1D1EA2B1916155F2B6CD1B295C5FABE2998486BA';
wwv_flow_imp.g_varchar2_table(11) := '5ADAB669A3321B8D0CD1E84844C5130456E48C00132067E89267C43AFED08079C45ED7BD9A5A9A9B921BA7D1B62C6CA2EE352B95C59038A3442727559C05671060023883A32C05AB370F1FF44A199B969685B46C7107C49CC28A255DD42ACA9099C50AEA';
wwv_flow_imp.g_varchar2_table(12) := 'C37EB19A24AE2D649C378E20C004700446BD90C8E0805ABA0C85CA69CB86B57AC21CB69BD6775348AC1EA1085C1447861E42E4E010024C0087809C1037BB3057378AC3BCBF646635C7D0E5B22F2D2DA1AD1B37A8AC234383C437C9141C73169800738690';
wwv_flow_imp.g_varchar2_table(13) := '685AACF70FF6F7A992D6AC5C91D545AFCA98426808D7D1CAE54B552AEAC2744B297C2CCCB5E94C80B92228F26399124F740A9170A777C5B22E888E86D52B96AAC72562D128457869D4117C99007384313A3911B7E4B979C33AD2346D8EA52666D7348D36';
wwv_flow_imp.g_varchar2_table(14) := '89B28D94D1E108457955C88023E73D132067E8F48C38FAEB125157473B85C51ABE11777ADF28A6429D1D6DAA585C74AB080B3921C004C809363DD3F8D8084D8A3BB588E15187EED52B20E63574AF5A41A80B954C8C8DF205318098436002E40A9E588FB7';
wwv_flow_imp.g_varchar2_table(15) := '1E81D7AD5E496562C526D7E2ECE62B2F2BA5B5A22EC3DE7A063274BCB78F80870960BF91F9B0C4A309589737CA3E7EEA2CFD68F79E828413A22EA3DEE8C4048D8F8E1851DE67890013204BC0608E25C8E141F7DC908A0C9A8F5EC03F0EF6116002D8C74A';
wwv_flow_imp.g_varchar2_table(16) := '598E8D4408EFF02AC53C0BB1688CCF0239F601132007E04622432AD737FFF06BF4FD7F7E6E5EC29FFCC1D7941F23C3A64F4AC9424604980019218A37C0230F3171230ADA9AEA2ADABCD67C6213BA42862DEB5652ADF0017562352A2AEE4940E6601F0126';
wwv_flow_imp.g_varchar2_table(17) := '807DACA4A5F5E8FF2B4F3D46C1C03C40283D2159F7179EDC3E1323B2FAA6942CA44560FE7A2FAD5BEE4CC4911F6BEFF04ED3347AFAF39B20CE6B78EAD14DEACEF3D8E8B0ABAE4DE615189B9533016C020533BCE9853DC2F62D8F504D5525C4790DE1DA6A';
wwv_flow_imp.g_varchar2_table(18) := 'DABA699DEEC334D1D830BF39A683616FCB04B08793B41AB3ACB77FE1F1AD52E786CD171FDFA6DC181377A75584858C0830013242A41BE002D378E2B3A1BE96567499CFE4E816F6B6038311FABF77DEA3E7BFF71A3DFB37FF2403E49DBB7F4648B3574ABC';
wwv_flow_imp.g_varchar2_table(19) := 'D5AA251D545B532D95B831E6A6255AE9948B374C009B9D333E36AA2C37E7F8A6D7C9F397E9AFFEF13BB4FBDD0374F2CC791A1C8AC800F99D3DFB651A6C544559089B36742BEBF1223E0BA8463A2430016C02695CFCC27CFD9AE5D86515F6F61CA5E75F7C';
wwv_flow_imp.g_varchar2_table(20) := '994646C652E6431A6C7E76E8584A9B54091B569B3E597D4D65CF7A1D0126808E43DA2DA6149313FA579B03C100ADC9F28597DBF7FAE8D537DF51752CE96AA7AFFCC697E89BE2461602E4259DE694EA15617BB737BBC71BD6AE58AC568326C604C9A6C515';
wwv_flow_imp.g_varchar2_table(21) := 'B1AA918554083001522163D15B8FA8EB562DCFEAA9CFD8D4147DF7BF77522CA67FE2707DF74A7AE68B4F502B3E95229652C5A895F233BFFC04AD9BF90C4A341AA31777BC41C86B7123AD88EF8BAE5EA9BF368967952626C6D3DA73A28E001340C721EDD6';
wwv_flow_imp.g_varchar2_table(22) := 'FA12FA236B57A5B59D9D78F9C66774F3F61DA9AEAC0CD1938F6E9672E246A327B76F26D820EDCAB59B74FDF63D88B6C3C66ED337DC19B69DD1C7864C001B9D8F1520C36C9965AA62E8D2EDFBFACDA746977675128EF894E24FD334923633E9BDFD033392';
wwv_flow_imp.g_varchar2_table(23) := 'BDDDF2C5EDCA301AD5A76C4AC14252043C4480A4FE1744396979C6A6B5B931AB3A0787CC4F24565767BE71565D657E3FF4E1A099D74EA5AD0B4CDFA2FCBEB01DC888099001263CFE4033D7938D0DF58437B23264894BB6122612C9FCE24A64D85C6E6D59';
wwv_flow_imp.g_varchar2_table(24) := 'D0105756A648654539D5D7D64833DDEF19C7A58637C91060022443C5A2B34E25DA17B55852EC89EDADCDCAF0CAB51B4469566770F17AE9EA7565DF61C9AB9419848E36D347EB992B4336DF2633013274BD752AD1DEBA30837562329ED5316E9C0D8F8CD2';
wwv_flow_imp.g_varchar2_table(25) := 'FEC3A9D7F80F1C3E4AA3A362095314B3717D37D5D5540929BBFF368B8FF22C905D76DF5933013274B9F5A74B17B52CC8609D3CF9F7BEFA6531752A9389A7CF5D9077823FBBD72BCF0638EA7F76BF8F76EF3D40A7CF7D2A6DCACBCAE81BBFFD8C94B3DD58';
wwv_flow_imp.g_varchar2_table(26) := '7D8C5AAE5DB22DC72FF64C800C3D8D9B60864978667E6DC4EDEEC3B5D5F4BBBFF565657EE5FA2D7AF3ED3DF4C24BAFD3774578F3AD9FD2956BB754FAD7BFF28C98CBEBCFF64865169BB0C547ABEF5914E12B53264086EEC6773F0D13DC6C32E46CF74F6F';
wwv_flow_imp.g_varchar2_table(27) := 'DF44DFFAE3DF57EBFCC9F2E31E006C9E7AD4FC718C6476E974F82AB5913E3DADDF7C33E2BC4F4480099088499C66DA72D13A1702A0D00DAB96D2DFFFE59FD2AF7FE929DA20EE086359B4BEAE46CABFF9AB4FCB34D8C036D760F591CF009951640264C068';
wwv_flow_imp.g_varchar2_table(28) := 'DA7214AD28D7E7F119B2A44DAE17D3A1DF79E697E85B7FF475FACEDFFE05FDCB737F2EE5AFFEDAD3394F7BAC155A7DB49EBDAC362C9B0830014C2C924AD6A368B90304485A89834A5C401BC5597D3774BC8F478009108F47426C7ACABC99649D5E2418BA';
wwv_flow_imp.g_varchar2_table(29) := '44112A377F83787ACAFBD700F9869509900961CD34F0C21155234D393C6DDCC2561A166623C004988DC8ACB8661950E3E3EEFF95C6B199F716D00C4DD3B0E390060126401A7090A469E6201A9BF000012C24D534EE5EF461BAC008A54347A469960F5F8D';
wwv_flow_imp.g_varchar2_table(30) := 'CDFC168050BBF6DFEAA31630C9EB5A87E7D9312640860E080483CA62DC036780D171F33D8060C0F45D35828538045C4C80383FE72D12089810599FED9F378732546CF551630264408BC8ECDD8CA6FE3498B6DC09BED7D7EF7A10EE5B7CB4FAEE7AC7E7C9';
wwv_flow_imp.g_varchar2_table(31) := '4126401AE087061E90FCC2C28C8D170870B7F7C18CB7247C1F25B441295848408009900089AE18ECEF23FC14A91ED3B7F7EEF7EA828BB7F72D04809B6803930048240F4C8024B860C08C8D24BE8F7B07CFF027B1CF453530344CFFF0C2F765809C4B19C9';
wwv_flow_imp.g_varchar2_table(32) := 'F2DCB97F3F41CD244880442998000A0A5DC0E0C780D16344ED6DAD8648F7661D5D55420EC2D1539FD0F98B5765801C57C41C22BD7DE69724DA2CBEA34D68DB1C8A2ECAAC4C004BB7CE9EF67476B4115E676C6A325F4EBF7127F1086B29C2B6386659AEB4';
wwv_flow_imp.g_varchar2_table(33) := 'CAB60B486278EDD65DA56D6A6AA42D1BD612DA60284102B4D188F39E5781D418C0C0B04E7BBA3ADB69D3FA6ED2348D1A1BC2CAEEC265F3A575A5748970E1CA0DE5097CD6344DB6016D3112D046B4D588FB7D1FF03B00683F060406066484A54BBA68E3BA';
wwv_flow_imp.g_varchar2_table(34) := '35106568ACAF977B6C3EB974153B57867317AF28BF9AC2A6CF680B9340411327F89E0098175B07FFF2A58B69FDCC373A0DA41AEAEB0C914E9FBBA064370953E27EC5D9F317A54B9AA651D8E233942001880D19016D46DB21FB39F89A002391C1B8A5CE95';
wwv_flow_imp.g_varchar2_table(35) := 'CB97D2DAD52B12C643B02448F575B5523F3A3A4EB7EEBA6F39F4B6F0696C4CFF206EBD18FCC16062D782D820B86C88D8E09A001808D135FF85762411A5427B304FF5E18BCF9187E68A0906FF9A95CB527AB370E1029576FAFC6525BB4538F9897EF4873F';
wwv_flow_imp.g_varchar2_table(36) := 'ADCDA6AF885B0308BE5C10DDD001838971FD5B4486CE4F7B5F12008F0860DE6F7434564AD20D7ED82D6A31BFB8D6F3D171A85C150E1C3AAAFC695FD4AAE464C25A41F4CE8E452A69F0412F0113A5F091E04B02E0B46FBCDD5527A63658EDC9D4E7B5D595';
wwv_flow_imp.g_varchar2_table(37) := '543DF3A5B66B376E53AFE5ABCF99F2E63B1D5332E3261DA66A1515E519ABDCB47E2DD5D4544B3B60311A1992B2DF36BE2400E6BE464777AF5A6E8819F79D6D6DCAE6D0D1D34A9E6FE1C393E7940BED6DE6915D295308DDABCCEB9D916126400A988A4B8D';
wwv_flow_imp.g_varchar2_table(38) := '1FBB307EED111F916A16378CECB6B0AD65A132DD7BF00861E54529E649C0AFC8ECEBF950D5DE96C507755B9A9B285411927981891F3FA5E8A23380EC87BC6FC647CD4F946773B48463F8725B7D585F121D1818A4E367F56F79226DBEC2C7673E25F882FA';
wwv_flow_imp.g_varchar2_table(39) := '1BC4DA7FA83CF3F407B646686B35AF6DC62CD818E9C5BEF71D01AC9F0CB71ED1ED76F492CE0E65FA937D3D4A9E2FE19DF7DE57552F5DDCA964BB42EBC266651AF5E1EF8AF98E0038D51B3D5E535D6588B6F71DE288691C65F130DB4D879E0DB2ED80C5F0';
wwv_flow_imp.g_varchar2_table(40) := 'CACD3B74E5AAFEF803A6328B2C83D9629656ACB560109B8AA5B52DC644DF1120168BAA7E4C76B34825A610F0A2F9F2654B54EA8FF71F5672A1853D078EA82A572E5D42F04D296C0A560CAC07079BD93D6FE63B0238F1ADA8AEF645545252223BBFE7838F';
wwv_flow_imp.g_varchar2_table(41) := 'E9FE03F3869A54166073A7B79F0ECDDC8F282B2BA54EE1532ED5062CEF3C4F5BBE82974B595ECCE33F0238D04B2525415AB6A44B968435F4D776ED9172CE9B1C32EE7863B7BA79B56CC962B21EC97328CEB75998003976FD3271C189232FB21F3B71863E';
wwv_flow_imp.g_varchar2_table(42) := 'BD7A136241C2B94BD7E9F427FA0A546969092DEB322FCC0BE2401155C204C8B13331F0AC37CF28CE03000006BF494441549276BCB9BB20F705F0C8C2AB3FDCADBC5ED7BD9A82E28CA4142C64850013202BB8E28DBB3ADAC8B82F80C7238E1C3F1B6F9087';
wwv_flow_imp.g_varchar2_table(43) := '58CFB1D37443ACFEA0683CF6D06979ED113A0ED921C004C80EAF04EB47BAD728DD8E37DEA6C888F93BBF2AC12161303242AFFEC03CFAE397241D2ADAB7C53001E6D8F5F889A34E71264031C3C3A3F4BDD77741CC4BF88F577E40A80385E30DAF3ACB0FE2';
wwv_flow_imp.g_varchar2_table(44) := '41E7C530DF3E33011CE801E3C6188A3A7EEA1CBDFFD129888E867D478EAB0B5F145C5E36F79F6B42397E0F4C80398C00AC9B7F7CEA2C5DB818FF82CCCB3B77516FFFE01C4A8ECF7AAF6F8076FCFF5B714AD489BAE1435C0247B242800990155CA6F1E464';
wwv_flow_imp.g_varchar2_table(45) := '947A3EFA98AEDFB8A594C69DD8898949FAB7975EA70961A3127314F045EA7FFDAFD7281A8DC9128C3A1041DDF001BE20CE217B049800D96346782F787FCF11EAEDED53B92BAAAAA971611B0582FA27C9B12AF49FFFBB4BA5E72260C9F3DF5FF921DDBAAD';
wwv_flow_imp.g_varchar2_table(46) := '7FEF27100CCA3A5097511E7C802FF0C9D0F1DE3E024C00FB5849CBFE8141DA77F090B818351FABAEA90F534D7D03E1B182BA8626228DE4DF91A32769F7BEDC9F157AFBBD4374ECE419591636281B75A02ED4091DC2F0F088F469E0A13F5F6A0106B98679';
wwv_flow_imp.g_varchar2_table(47) := '2440AE2ECF5FBEDB77EED1CF0F7D4098E2C00B4DD3A8BE71015554D5202A43695939D5D485A58CCDCE5D3FA1B317AF41CC2A9C3C7F99DE78FBA72A4F755D3DA16C43813A51B7A66952059F0E88B3127C940ADED8428009600B26A20B97AED287C74EA8E7';
wwv_flow_imp.g_varchar2_table(48) := '6F02C1208517B45059A822A1040CCEF20A5D8F69CCB75F7889F6F61C25ACE32718CF52C0E6DD8347E9F9175F562928ABB25AFF2C8B520A017587172CA440509F76A12EF878E152F68413C5F9F29F0990A1DBB1CAF2D1F15374EEBCFEEC0DCC4B4A4BA941';
wwv_flow_imp.g_varchar2_table(49) := '0C7EEC114F166AEB1BE31E51F89F9D6FD1B37FFD6DFAC69F3D2703CE0C463EC8861E36D6151F3CE6501B16D32AC378D6BEA4B42CC19773E72F10AF10CD022A459409900218A8B18A73F083A3E222F40EA232E847DD1675D495CA241B2D10A070538B98B6';
wwv_flow_imp.g_varchar2_table(50) := 'E4BE5E5F5A5E2ECBD0347D9A93A41AA90A048DB35148C6B1C10A117CE71522A0913A30015260333C324A077A0E53DF03F367912AAB6BC83AEF4E9155A903417D6062FE0EE20482FA544519241102C1A09C56214FB8C99CDE50863F4DD3A8BEB1992A848F';
wwv_flow_imp.g_varchar2_table(51) := '86297CC70A11DA62E8781F8F0013201E0F19EBEB7F48FB0F1E162B3D33CFF58803704DB881AA2D17B7D2D0E606F37710A7A9A58D9ADB3AA95984AA9A3A951BB2A1870D6C9147196421E0021CBE1A59B04284B6F48BD52B43C77B130126808985942E5FBB';
wwv_flow_imp.g_varchar2_table(52) := '49EF8B951E63EAA0691AC9236B65B54CF7C2A642F85ADFD44C9A26982B1C465B0E8815A22BD70BF7CE82A8D613FF4C00D14D439161BA2A06C7BBFB0FD2A933E647A67001DAD02C567ACACDB9B530F7C47F99F019AB546883E1F0C9D3E768EF811EBA2AEE';
wwv_flow_imp.g_varchar2_table(53) := '5EA3CD86DECF7B5F13E047BBF710C27B62509C108303D3056330C80BD005AD6225A7D450796E8F55AAB06843699979211E11643F71EA2CA1CD683B82E71AE6A0C3BE2380A6E9D3825418E28859DBD028565F1612EEBAA6B29BAB5ED34C3F34CD94E75AEE';
wwv_flow_imp.g_varchar2_table(54) := 'ECFC6843582CD956D7D5AB29D16C1B23AE69F9F3C3A8C36D7BDF1120545995D00725E20889D593BAC626F9AC4DA822D12621D31C15C6AA50201894AB3E94E73F5C543734B71256B2CA422171664B5C914A868DD36EB9AD3CDF1100CFD1182B2EC61E37B5';
wwv_flow_imp.g_varchar2_table(55) := 'B07A521EAA2C58FF607A82151F04C885A83858522257B270518F07F78CF61B7B6053083FDC5447C04DCEB02F8C40A1116002141A71AECF550830015CD51DEC4CA1116002141A71AECF5508149000AE6A373BC308480498001206DEF8150126805F7B9EDB';
wwv_flow_imp.g_varchar2_table(56) := '2D116002481878E3570498007EED796EB74480092061C8F3868B772D024C00D7760D3B5608049800854099EB702D024C00D7760D3B5608049800854099EB702D024C00D7764D7138E6F6563001DCDE43EC5F5E116002E4155E2EDCED083001DCDE43EC5F';
wwv_flow_imp.g_varchar2_table(57) := '5E116002E4155E2EDCED083001DCDE43EC5F5E11C82301F2EA3717CE0838820013C01118B910AF22C004F06ACFB1DF8E20C0047004462EC4AB083001BCDA73ECB7230830011C817156211CF50C024C00CF74153B9A0F049800F94095CBF40C024C00CF74';
wwv_flow_imp.g_varchar2_table(58) := '153B9A0F049800F94095CBF40C024C00CF7495371CF59A974C00AFF518FBEB28024C0047E1E4C2BC860013C06B3DC6FE3A8A0013C05138B930AF21C004F05A8FB1BF8E22E020011CF58B0B63040A820013A0203073256E458009E0D69E61BF0A820013A0';
wwv_flow_imp.g_varchar2_table(59) := '203073256E458009E0D69E61BF0A820013C00998B90CCF22C004F06CD7B1E34E20C0047002452EC3B30830013CDB75ECB8130830019C4091CBF02C024C00CF769D3B1CF7BA17BF000000FFFF1A4AC47A000000064944415403002F1057798E36757D0000';
wwv_flow_imp.g_varchar2_table(60) := '000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20751396424911680547)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D097C1CD579FFDEEC6A75CB922CDBB2240B1B631BDF27C6809334697E81362D096D925E34478F58062C489A96609B540D96A149DA6019B0';
wwv_flow_imp.g_varchar2_table(2) := '4C522024246D388203249010B0011B63636C7070C0173EC1C6BAACFBD89DE9FB469A63E59534BBDA7DF366E7DBDFBC99376FDEF17DFFEFBDFFBC63665601FA110284806F112002F0ADE9497142008008806A0121E0630488007C6C7C52DDDF08A0F64400';
wwv_flow_imp.g_varchar2_table(3) := '88023942C0A7081001F8D4F0A4362180081001200AE408019F224004E053C393DAFE46C0D09E08C040828E84800F112002F0A1D1496542C0408008C040828E84800F112002F0A1D149657F2360D79E08C08E06F909019F214004E0338393BA84801D0122';
wwv_flow_imp.g_varchar2_table(4) := '003B1AE427047C86001180CF0C4EEAFA1B81C1DA13010C4684CE09011F214004E0236393AA84C060048800062342E784808F102002F091B149557F23104B7B228058A8501821E0130488007C626852931088850011402C54288C10F0090244003E3134A9';
wwv_flow_imp.g_varchar2_table(5) := 'E96F0486D29E08602864289C10F001024400838CBCAAAE2EF3969AEF17DE50736FE9D7D73D30E9A63B7E30A5FA3BF5D356ADAF9F7573ED7DF36EACDDBCA8FACEFB1693930F03B40DDA086D853643DBA10DD1966853B4ED2073FBFED49704B0EA8ECD5379';
wwv_flow_imp.g_varchar2_table(6) := '25F98B9BD7D5FF47756DFD93DCEDADAEDD749A1F35D616EA5633B29B8319810FC2ACF784A2448E421F1C641ABCAD81F26600B43DA02AAF93930F03B40DDA086D853643DBA10DD1966853B42DDA78C0D6DCE6F54F621DC0BAF0B53BEFBBD88F6CE00B02B8';
wwv_flow_imp.g_varchar2_table(7) := 'A5F6FE05D5B59B6FAFAEADDFC65D3B53B4C3BC923CAE31F81637FA67B85B00C0CA807E3E4140B735B7397C06EB00D68588AA1CC1BAC1C9612B2784B5ABEEAA9F9F2E600CA7475A12404DCDCF43D5EBEBFFF4E6DA4DF7ADAAAD3FA182BA1740FB3607E2A3';
wwv_flow_imp.g_varchar2_table(8) := 'DCE572471B21100B015E37D8C7980677B008ECE3847094BBBBB9FB63AC53B112783D2CAD08E06B77DE7B0937D6FAA68CA6A3A0C1331AB0950C6092D78D44F2BB86C0145EF2CDDC3D8F756AD5BA4DB558C7F879DA6C9E27003EC193B7AA76D33FF086FF72';
wwv_flow_imp.g_varchar2_table(9) := '440D1CE296B98DBB72EE68230492894039636C35D6315ED75EE275EECB58F79259801B79799A00AAD76DBA2E100AEC64C0FE8783B79C3BDA080111087C84D7B9078319C1AD7C9879B58802132D63A4749E24805BEED8F4479C855F05C69EE0E3B5D92329';
wwv_flow_imp.g_varchar2_table(10) := '49D70981D420A02DE6C3CC67B12E629D4C4D19A9CDD55304805DAEEADACD3F5315F62287651977B411023220B00CEB64756DFD8FB18ECA209053193C4300D5EBEEBF92AFE7BEC967F3FFDAA972148F10108CC0F5BC8EEEC387C404979B70719E20809B6B';
wwv_flow_imp.g_varchar2_table(11) := 'EBBF084CC5BBBE2F1FD648D8BA94D00D04A682AAECD0EBAC1BA5DBCA74E2959B00348DE1D28B06F023AE4C883BDA08012F2010C23A7BF3BAFA3B6417565A02C0072F6E5EBFF9315C7A911D44928F10888580C660EDAADAFA1F615D8E755D86302909A0A6';
wwv_flow_imp.g_varchar2_table(12) := 'A626D8146C7A9CB3E85FC80012C94008248A0003F8626346F3A358A713CD2395E9A42480E650E9C3C0E0CF52A938E54D0888428081766D5346E983A2CAC3729C3AE908804F9EDCA569F0374E15A07884804710B81EEBB66CB24A4500ABD66DBE8577FB6F';
wwv_flow_imp.g_varchar2_table(13) := '950D2492871048060258B7B18E2723AF64E5210D01DCB47ED3558C69FF952CC5281F42404604781DFF5EF5BACDD23CB62E0501E02CA9A2315CEA93421E192B0EC994360804F8EAC08358E753A5513CF94AD1E09A339ABECD859ECA1D6D8440DA23C02705';
wwv_flow_imp.g_varchar2_table(14) := '2F19A8F3AEEBEA3A0154D76E9AC3C746DF701D09128010108800D6F99BBEBD79AEC0226316E53A0100B0750010E08E3642C04F08049480E6FA9382AE1240F5BAFBAFE416C76FF2F1036D8480EF10F84CB22704E345D055020016F96EBC02537C4220AD10';
wwv_flow_imp.g_varchar2_table(15) := '602AF6805D53C93502B865FDE6CF0230EC0100FD0801FF22C03E567D67FD356EE9EF1A01A89A7A8B5B4A53B984805408A8DA37DD92C71502B871DD3D170130FC4437D08F102004D8476FBAE307F805E25141914862570820C0025FE1C232EE6823040801';
wwv_flow_imp.g_varchar2_table(16) := '00A628E12F810B3FF104A069BCE12B5F7641572A9210901801F645D0DB86581115B1C501ACAADD743980C68700A24BA6F20801A91198D2DF36C4CA289C0014A6F0D97FB14A526984801710608C25BC1A90A87E4AA209134DA769205CC94465A574848058';
wwv_flow_imp.g_varchar2_table(17) := '04D29C006EFACF8D65C0609E5850A93442C033082CFDEA5D9BC7889456680F8085839FE2CAF14940BEA78D1020040623C0B222EA9F0C0E4CE5B950025040A17FF349A535296FCF23C040F92388F3379AE8CA6812C79B56036D41BC69283E21E0270444B7';
wwv_flow_imp.g_varchar2_table(18) := '1161045053538365D1F8DF4FB599744D0481B9036D2591B471A7C1461977A24412B4649461E3CF4E242DA521047C84404E4368E27451FA0A2300555369FC2FCAAA548EA7115034D5F15079B48A0A2300C69830A5460B0AA52704DC44800113D656841180';
wwv_flow_imp.g_varchar2_table(19) := '0ADA643741A5B20901AF20A0015C2A4A566104C0342815A514954308781A010D84DD2C851100302200A01F21E00401876DC5495623C511420003CB1A63471286AE130284808E40F1409BD14F52B913420027B227E5722582DCD146081002232390F13E4C';
wwv_flow_imp.g_varchar2_table(20) := 'CC1A39DAE86308218082AED6C0E845A51C0801FF2090039D2111DA0A2180606E961065440046651002221018A9CD244B06210410EE55A807902C8B513EBE4040549B114200BD5A98C6FFBEA8B6A464B21010D56684104028403D8064550CCAC71F08886A';
wwv_flow_imp.g_varchar2_table(21) := '33420820122602F047B5252D9385C0706D265965603E4208201052681210D196CC69AA0AE824138BC4E108A8012664DE4C0801406F2F5789369910E8E9EA848633A775877E996423590032227D6944006451A910E8EEEA80F3CD0DA0699AEED0DFD3DD29';
wwv_flow_imp.g_varchar2_table(22) := '958C248C18041431C55029B220808DBFB5A91140B349C4FDE79B1A00AFD942C92B2102C916890820D9884A9C5F776707E88D7F40C6DCDC1C40A79F7212C06B18473FA79D2F102002F0859901BA3ADBA1B599DFF907F4CDCDCD86E5CB2EE36E894502FC1A';
wwv_flow_imp.g_varchar2_table(23) := 'C62112E040F8642302F081A1BB3ADAA0ADB9C9D414EFFACB972D85ACCC1077993A09E4E5E1FB5AFD515A39512061F49FD13E9D1150D25939D20DA0B7BB0BDA5A9A4D28F2F273E1A357F4377E23302B1349E032B093401B270C4C6BC4A1A3FB08A4420222';
wwv_flow_imp.g_varchar2_table(24) := '8054A02A499EE1BE5EC0C93D431C6CFC1FE177FE5028C308328F993C6C391F12E417E499619836DCD7679E9327FD102002483F9BEA1A4522616869F8505FE6C3809C1C3EE6BFFC3208650CFD5A0692C0554B974056562626D1D3B6347E086A24A29FD32E';
wwv_flow_imp.g_varchar2_table(25) := 'FD102002483F9B5A0D575575ED8281005C79D922C006AE070CB3C338577212C034180D1B3F92003E3380E7E4D20B012280F4B2275FDFD778B7FF1C44FAC2BA668C3158C61B3F4EFCE9010E76F97939B074F102608CE9B1711880C301FD8476AE2090AA42';
wwv_flow_imp.g_varchar2_table(26) := '89005285AC4BF9B6B5B6F089BF6EB3F4F97367C1D8E242F3DCA9675C4931CC9B33D38C8E1382ED3C6F33803C69810011405A98B15F89DE9E6EE86A6FEB3FE1FBC9951570514519F725B64D9E540E95DC19A93BDB5A01CB30CEE9E87D048800BC6F435D03';
wwv_flow_imp.g_varchar2_table(27) := '958FF75B9B1A743FEE70496FCECC19E81D959B37EBD20B1E14A237084705A954898900A43247E2C2B43637009200E6C01406972F590881C0E8CD8B792C5D341F304FCC1B27055B5BAC878A308C5C6A114865EEA3AF21A9948EF27684003EE9D7DB6D1BF7';
wwv_flow_imp.g_varchar2_table(28) := 'CF9905797CD9CF516207910AF2F360DE6C6B3EA0A7AB935E1C72809B17A2100178C14AC3C8180987A1FD7C8B19A374C2B8518DFBCD8C0679703EA0B4748219DAC67B01F8AC8119401E4F224004E049B3594263D7DF58A30F0683B070DE1CEB62927D0BF9';
wwv_flow_imp.g_varchar2_table(29) := 'AA009681D96AAA066DCDD6CB451846CE7B08100178CF66A6C4DD5D1DD067FBDAD29C5933867DD2CF4C98A0071F219E3D73BA99BAB7A7077079D00C204FD2114875864400A9463855F96B1A74D8D6E50BC714A4A4EB3F587C5C56B4BF2FD0D66ABD683438';
wwv_flow_imp.g_varchar2_table(30) := '2E9DCB8F001180FC368A2921BEAE1B095BCFE82F4861D7DF2E00630C16CDB58619F8C4217D3FC08E90B7FC4400DEB2972E2D8EF93B5ACFEB7EDCE1033F63F2ADF7F9312C95AE704C3E544E2A338BE868E39390BC47620690C73308289E9194043511E86C';
wwv_flow_imp.g_varchar2_table(31) := '6F35D7FC31B0E57C2BECD8F58650D7DADA8E45EB0E7B22D823D14F68973404446444042002E52496810FFBE023B9F62C9100CE353482488765DA65C01E09F64CEC61E4971F012200F96D142521DEFD656C68484CF8405294B074223D024400D29B285AC0';
wwv_flow_imp.g_varchar2_table(32) := 'EE0EABEBBD70DE4CF8FCB557BBEA16CCB59E10240288B69517CE8800BC60A5011971B61DEFB478CA18832FFDE5A7E1D31FBFC255F7A5CF7DDAFC6E00CE05D07301689DD13B5139100188423A09E57476B499B92C9E3F1B0A6DDFEF332F08F614711916CE';
wwv_flow_imp.g_varchar2_table(33) := '9B65966A97D10C248FB4081001486B9A68C1FA7A7B206C7BEAEF931FB93C3A828B679F5CBED42C1D5F4A8A84FBBF46640692475A048800A4354DB460F6F175E9F8129831A5223A828B6733A756C2B892225302EA05985048EF210290DE44009AAA4277A7';
wwv_flow_imp.g_varchar2_table(34) := 'F5E79DD77C62B939EE96417CC6185CF3F1E5A628DD9DD644A519481EC708888C48042012ED04CBEAE9E93253666586E08A85B3CDF3D1783E38D704E846938791F6AAC573015F16C2734DD5A0B7C7FA3E018691931301220039ED1225957D667DC982398E';
wwv_flow_imp.g_varchar2_table(35) := '3EEF1D9581ED64EB6BFB60CD7737C197BF5E03B7ADAFD31DFAD77EAF1EB6F16BB6A87179919816CEB526037BBA2DD28A2B238A2C14012200A170275698BD31CD9B392DA14C7AFBC2B0F9A75BE0A1FF7D124EBF7F968F2B6CD96800A74E9F8107F9B5FB7F';
wwv_flow_imp.g_varchar2_table(36) := 'B60530AEEDAA63EFFCD9B6578589001CE3E66644220037D1775036CEFE6397DA883A6BDA64C31BD7F13F373D0CAFEEDE3B629A1DBBF6C27778DC1123C6883067DA1433145702D09901E4718480E8484400A2118FB33CFBDD7FEA94CA84BEF5F7D4F3DBE1';
wwv_flow_imp.g_varchar2_table(37) := 'C87B27CC92A74D9D0C9FBBF66AB8F12B7FAD3BF4639811E1308FFBF48BAF1AA78E8F05793930B9B2DC8CDF6B9BBB3003C923150244005299E34261ECE3FF85B32FBD30C20821273F38074FFCEA7933D6D24573E0531F5B06134A8A812F25E80EFD1876D9';
wwv_flow_imp.g_varchar2_table(38) := '42EB3DFFC79FFE0D9C3E6B7D661C1CFE16CCB164B49397C3E4144D3002440082018FA7387CEC17FF96CB483367C6C586D7F1F177DB7783F1F25045D904B86C01367216233D83A59C002ACAC6EBD770D8F1E28E3DBA3F9EDDDC1953CDE8F8509079421E29';
wwv_flow_imp.g_varchar2_table(39) := '11200290D22CFD4285FB7AFB3D7CCF1883CA72EBABBC3CC8D176F2FD3366BC99D3B171C66AFC46140633A75F629CC0C9F73F30FD4E3D17711919B3CA08D3DF8B3B850EDC884804E006EA0ECB0CDB08A0B2622228B686E5300B38652380E2C2312326B3C7';
wwv_flow_imp.g_varchar2_table(40) := '39C15706464C302842301080B289FDBD08BC140E5B2486E7E4E4428008402E7B444913B6DD3D2BCA4AA3AE393DB137684D53474CA6015F131C885534A660C017DFA1B2BCCC4C60D7C10C248F3408100148638A0B0509DB7A0015B6BBEA8531870EC1EF05';
wwv_flow_imp.g_varchar2_table(41) := '1A574F9C3E6B78873C9E386575FBED69874C10E3825DD6B08DC46244A5209711200270D900C3151F0EF79997CB268C33FDF1782ACBAD9EC3DEFD6F435777CF90C9BBBABBE18DB70E98D727F36187791287A7BCD4923542430047C8B9158908C02DE44728';
wwv_flow_imp.g_varchar2_table(42) := '57BF735ABD71281B5F32428AD897AFE4CB7ED9D959FAC59E9E3EF8D5EF5E8A4902D8F89FF9172DE7260000100049444154DDCBD0DBDB4F3AB9B9D970E5625C31D093C6B5B3CB1A0947CC5588B832A1C842102002100273FC85A891E877EA4B8A121B8FE3';
wwv_flow_imp.g_varchar2_table(43) := 'E7C2FFF16FAF330538C3D7F61FF8E913B075C76EF8FD3B8775F7E2F65DF0C04F7F0167F9352362D5DF7F3EA1878E30FDE00F9544E8FB00088B948E08404AB340D45D33331402C6ACA5B578455E326706FCC9273F1A95EC6DDEF8B771124077E0DD2351D7';
wwv_flow_imp.g_varchar2_table(44) := '3E73CD27606E02CF1C189984328286573F3A997CD423D24E38024400C2217756A06A9BB1CFCBCB71966898587FF5E94FC06DD5FF08858543F7248A8B0AF538D75D1D4D16C3643BE4A522DB92A3AA5AFF603464021F5F705375220037D11FAE6CDB3FEDE4';
wwv_flow_imp.g_varchar2_table(45) := 'E6640F17D3F1B5195326C1FA5B6F8455FFF4B7F0B93FBF1A962D990F572E5DA47F55B8FA9FFE8E5FBB01308EE30C8789989D9D695ED554DB6486194A1E1910200290C10A3164C0C7808DE0BCDCE4FDED574E56262C9E3D1DFEEC135740D5DF5D075FFD9B';
wwv_flow_imp.g_varchar2_table(46) := '6B01BF2CBC68F634C077FA2149BF7C9BCC34044812A829C886082005A026234BCDDE03E033F2C9C853641EB939D6B0C54E662265A0B24646800860648C5C89A1A9D6537BB9D9C919028854243727CB2CCEAE8B19481E1D01B77744006E5BC041F98C25BE';
wwv_flow_imp.g_varchar2_table(47) := '02E020FB9444510201335F7B6FC60C248F140810014861860B8560CC6AF4DDC33CBD77614A3942BABBBB4D4118B3743103C923050244005298218610B646D3696B4C31624A19D4D5652700AA66521A890B4596E120C8B829CC328DFD6E2AA3ACB164EAB0';
wwv_flow_imp.g_varchar2_table(48) := '1380423D805818C91066D53219A421194C0458C0324D57B7F7DEA9C7770B0C659480351F6084D1510E04AC5A26873C24C5000201C56A345D1EFCC4765797F5D6A162D365403D3A48820011802486182C06532CD334369F1F7C59EA735CF73FDF66FD93B1';
wwv_flow_imp.g_varchar2_table(49) := '62D3456AC17D289C55CB7CA8BCCC2A77B65B0D488DA8D0D8629DCB2C37CAD6D8D20A2833FAD175B4B5E2819C0D0159BC4400B258C29043D3E07CD339E8E9EA3442F4E3B9A616FDE885DD878DD1B2A22EA81370DDBC20BF9F64240290CCDAE79B1B79E3BF';
wwv_flow_imp.g_varchar2_table(50) := 'F07FF5CE9E6B4CBAA46F1F3A06E8929DF19918B2F6747501EA96ECB228BFD1214004303AFC929AFA7C53036FFCD69D1FBFB06B1470A6A1C9F026E5B8EBAD77E0BBF73DA4BB3DBF3F98943C8D4CCEDA64B5EBD0C37B35A8A3118F8EEE234004E0BE0D7409';
wwv_flow_imp.g_varchar2_table(51) := 'B08B8C0D443FE1BB8A8A89307BD60CEEEBDF8E9D3CDDEF49D2FEF07B27CD9CDE3D7ADCF427C3F3DE8953663673665F0AA88B11803AFA9D040C2C64381201B86D053E2E6E69C431BFD5ED2F2B2B8545736743B1EDA31A078F1C83089F0C4C96B851CFE727';
wwv_flow_imp.g_varchar2_table(52) := 'F175FDBE70188EDAC8A5B8B050D7057532644712409D694EC040C4BD2311807BD8E377BFA08577FBEDFFFF870D65C9BC39FA27C0F2F3F22038F079AD483802273EF8D04D691D957DFCF459880CBCC9180C06213F2F47D705752AB57DD9187546DD89041C';
wwv_flow_imp.g_varchar2_table(53) := 'C19AB2484ACA72A68C874700EFFC831A3F36106C286CE0D1597C1DA064EC58339FC3C7ACAEB5192899E7904DC671E34A4CE950A7A50BE703EA680412091848B87724027009FBF3CD0D800DC0287EFCF8F1B074D17CC0866284E1B1A4B8080FBA3B78F498';
wwv_flow_imp.g_varchar2_table(54) := '7E947977D0369F50525C18252AEA863A8E1F3FCE0C470C100B3320CD3DB2A94704E08245DACE37F3D97E6BCC3F9EDF292F5F3457EF2A0F16A7D8360FF0EE61B90940E5BD9A770E1D3155C0F1BF7932E0618CC1E58BE6414989D5B3E9E14B84ED1C938128';
wwv_flow_imp.g_varchar2_table(55) := '74108800118040B0B1A8AECE76E8B23DE537766CB17EE71FEA71D9A2C202C8189807686D6B071C63633E32BA63A7CE80F10E406666080AC7E4C71413755DB67801A0EE46047CF2B1BBB3C338A5A32004880004018DC5A89108B4B558EBF9B9B9B9B06CC9';
wwv_flow_imp.g_varchar2_table(56) := '42080486374345791926D7DD6BFBDED68F32EE76D964AB289B38AC88A8F3E57CC8939B9B63C6436C102333803C294760F89A97F2E2FD55407B6B0B9FF9EFD71967C8AFB86C21044768FC18BBBC74021E74B7E3F57D7CE23C89EB767AAEA3DFE1B2E22BAF';
wwv_flow_imp.g_varchar2_table(57) := 'BD6166543EB1D4F40FE5C19ECDB2CB16710CFADF7CC43C3ADABCF5E2D350BAC50A97318C0840905522E13EB077712F9D36157273B21D953E964FA66565F57F64B3A5A5150E1F4FEE43418E841821D2413EFBDFDED1FF1463566626E0D0658424FAE53C8E';
wwv_flow_imp.g_varchar2_table(58) := 'C1748E857EC277384442ACB89736010810010800198BE8EC68C783EEB2B2B360CA4515BADFE9AEA2DCEA52EFDA77C0693261F176DB64AA9C541E57B9175F34099034F444BC73D365C34A0FA35DCA1020024819B4D119F7F558DFC8BBB872122871BE236F';
wwv_flow_imp.g_varchar2_table(59) := '1F06BCB26B0FF40CFC8B6F7429EE9CA12CDB77DBBBFFD690C58944381F30D94688BDBDD6C7449CA4A738892340049038768E53E20732F4BFFB1E485152523CE0737EC019F5C231057A029C697FE5F5B774BF0CBB9777BF65CEFE8F29C88782FCBCB8C51A';
wwv_flow_imp.g_varchar2_table(60) := '677BE029DCDB0BE9F65F027103222801118000A0C37DD1DFF42BCC8FBD3C369228D3A64E31A3FCFA855700D7DDCD00973CF8D8EFAF5F78D92C1DE736CC93383C059C38ECD1FB066166BF46FEE4214004903C2C87CCC97E37CB0C85800D3CEA3B6482212E';
wwv_flow_imp.g_varchar2_table(61) := '4C1C3F0EB207FE25A8A1B119F61D3834444C71C17BDF3E048D4D7C758317894B7A13B88CDC1BF786AB2141DBC74335CDFA67A4B833A3048E112002700C55E211555B65C609C0447342E2983E75B299FCE9E7AD3BAF1928D8F3F4EF2C19A65D3C19184B5C';
wwv_flow_imp.g_varchar2_table(62) := '80ACA8BF13E3B381896745291D224004E010A85145D3ACCAAC2478F737CA9F545E06A150867E7AF4D8C9947CD147CFDCC1EECD778EC0B1E3FD2F28A14C955C3607C9868C9211ECD70B2368606186E75E7632CB4E0420B37562C88633E6974C996C5EF9C9';
wwv_flow_imp.g_varchar2_table(63) := 'E3CF004E329A01823CF86D829F3CFEB459DA257C7E027B286600793C8100118027CC142DE494C995662FE083B3E7E095D7F747471070B66DD73E38D7D0AC9784CFFD5F3CA942F7D3CE5B08100178CB5EBAB4C18002B32F9DAEFB71F77FBF7C16BA7BA257';
wwv_flow_imp.g_varchar2_table(64) := '1A303C55AEB3BB071E7DEA3933FBD933674020D8FF38AF19481E4F204004E009335D28E4A4F289909797AB5FE8E8E882C77EBD55F78BD83DFACC0BE6BA7F41411E4C2A2B1551AC27CB905D6845760149BED80830C660FE9C59E6C5E7B7ED007C1EDF0C48';
wwv_flow_imp.g_varchar2_table(65) := '91E79DA327E0C5575E33739F3F77B6E9278FF7102002F09ECD4C89F18B3BA5B63705EB1F7E2CA54301ECFA6FFAD1CFCDF2F1FB85C5034F279A81E4F11402440022CCC5EFD6A92A06870246DE4DCD2DF0B3A79E374E937EFCE996DFC0F956EBA5A68A52EA';
wwv_flow_imp.g_varchar2_table(66) := 'FA271D64C11912018800DCF61C40328BC37F0B7A7DEF9B51596EDBBE0B0E1C4EEE77FEB180FDEF1E855776EE41AFE9F6BCB91F500633803C510878E18408C00B568A21E3A1F74EC0CEDD6F80A65EF8C00C76D39B6D77EA18C9E30A6A6C69854D0F5B5D7F';
wwv_flow_imp.g_varchar2_table(67) := '23712412D16538C26531C2E8E82D048800BC652FD0786F62EFFE0370E00FEF9A922B8100148D9B004AA07F29AEADBD03EEFEE1CFA0B72F6CC649D483AFFAFEF70F1E81CECEFED7999540745998EFEFB92CFB7EFF075D363C27E71D048800BC632BE8E30D';
wwv_flow_imp.g_varchar2_table(68) := '7AC7EEBD70C2F63761818C20148F2B858C50268C29B6BEC37F9CC779E0E74FC1687E48369B1F79124EBF7FD6CC06CBC0B2B04C2CDBB870FCC42940D9C2E1881144470F20400420C248499804C46F006CDBF11A343458FF121CCACA82E29252F3CE8F0D33';
wwv_flow_imp.g_varchar2_table(69) := '377F8CA9D1CED7DF845F6DDD699EC7EB79E68557E18DB7AC8F90E6168CD18906F3510201BD6C9401CFD1A16C2FBDBACB7C4600C3FCEABCA2371180072CD5CCC7E05BB7BF0A1D03DFDC4391B37272A170EC78604AB409B191DA1BE5CFB73C0BAFEEB51A31';
wwv_flow_imp.g_varchar2_table(70) := 'A61DECF04E3F380C1F2F7EECE9DF98C198A79D5CF002968D32A02C788EAEADAD1D50D696F36D784A4E7204A26B8FE4C2FA51BCF7CF7C082FF3BB6AAFED1360790585505064FDB1C6605CC614954020183483373FFC28DC79EF8FE017CFBD04CFBCF8AAEE';
wwv_flow_imp.g_varchar2_table(71) := '8E1C3F695E47BF11FEC473DB60FD3D0FC10F1F79DCBC8E79619E66C0200FCA823219C128EB4BBCB782B21B6174941301220039EDA24B75E8C831D8FDC69B51936B05C5632127BF40BF3ED40EEFCC638AC78162EB1DBC7BF83DD8F2EC0BF0E82F9FD31DBE';
wwv_flow_imp.g_varchar2_table(72) := '4A6CA447BF11FECB675F04FC2762E31AE6513876DC053D0DE3BA7144995036E31C7B1528FB21DB5F8519D7E8280F024400226CC167EEE3290697F65EDFB71F0EBC7BC84CC614A6CFF46765E79A61C379821919503C7E221FB387868B36ECB56028A4E711';
wwv_flow_imp.g_varchar2_table(73) := 'B0BDA73F5C02940D5723505623DE81770E02AE5AA04E4658BA1FBDA41F1180086B31E6B8145CBADBBE6B0F9F793F63A6C137ED70D63D83CFF49B810E3C4A20C049A314C68C2DD17B0DA1AC6C086566EA4E0904CC1C9440400FD3AFF1387837C73458A612';
wwv_flow_imp.g_varchar2_table(74) := 'B0E281831FCA88E95066233AAE5A6CDFFD86BE8A6184D1510E04880044D8C1610FA0A3B30B5EDAB1131A9B9A4DA9F04E5E346E221FD35B5FCB312F3AF46466E5008ED1B12B5F583201D065F2866E24473F86E98E77F7312EA631AEC77BC41E43115F9D40';
wwv_flow_imp.g_varchar2_table(75) := 'D98DB48D8D4D80AB18B89A6184D1D17D04880044D8C0410FE0ECB906D8B67D279FE9B7FE3538C41B69115FE3C771B8083193598612E8EF7D84F852A5912FAE62E00AC1B9862623888E2E234004E0A201F0293B5C2EDBC3D7DA77EEDE1BD545CECECD03BC';
wwv_flow_imp.g_varchar2_table(76) := '6333E67CF8E0A22A318B668C012E13A22E46045C21D8C18738A833EA8EE7C6359C3834FC5E3D7A4D6E22001116B30D019A9BCFC3965FFD5677CF3EBF55BFEB9F3AF57E941479630A21BF30FE3F0F89CA44A213D405871576915067ECF1FC9A6360E0D1D2';
wwv_flow_imp.g_varchar2_table(77) := '72DE1E85FC021020021000322ECB392906C7CC388B9E9337FC329F93BC468CC3EFCE461CC652DFCBC08945D4CDFEF8B0517EAC2363A9972956B97E0B23021060F150280BEC4B63838BC4E5B6FCC2227DC90D67D1075F4FC5394EFC19F96666E718DE941E';
wwv_flow_imp.g_varchar2_table(78) := '51B7B1E3CB007B38A8F35085E19C4728337BA8CB149E440488009208E650592981009494564061C978D3E1DD706C69198C2FAF045C36CBCECD1F2A794AC24399595032B102C671870D3325850C9129F6705067D41D31402CECD8A05C480243249736D88B';
wwv_flow_imp.g_varchar2_table(79) := '82292284EE0B64F8FE1531C6185F6BCF321D36BA40202802FE21CBC046E67478326426A3BC801820164848861B659669913C0241219F795644A0A54434DF1380089CA98CF44120105485B4192104204A99F4313F69E277047A23694400A294F17BA521FD';
wwv_flow_imp.g_varchar2_table(80) := 'DD4320D925875870F49F73722094901E8028651CE84B5108014F20100CA5510F00FA3AADE75B3D013F094908B88B40B8A33B7D26010BA1BCD35D38A97442C05B08886A3342860035355F4036EBF19609485A42C019022988D533D06652907574964208A0';
wwv_flow_imp.g_varchar2_table(81) := 'BF4866BDE0DE1F407B428010888980B8B622900034228098C6A64042603002EAB1C121A93A1748004004902A2B52BE698580C6D2B007C000DE492B2B9132840000A402044583F4EB0168A0ED03FA110284C08808886C2BC286002A53880046343D452004';
wwv_flow_imp.g_varchar2_table(82) := '0044B6154514E025BD1F1CE465A9DCD1460810024323D039D056868E91C42BC208A0A6A6061BBFF5A1FB242A415911026E2090A232F70FB49514651F9DAD3002C0623506340C00FA11024323C080096D23420980A9B015E8470810024322A0695AFA1280';
wwv_flow_imp.g_varchar2_table(83) := '9611789A6BAE71471B2140085C8880A666F4FDF2C2E0D48508ED016CBCF59F4F81066FA54E1DCA99101083404A637CC0C3000005F1494441544AE16DE39E5B57457F233E250559990A25002C963178168FE4080142201A0137DA8678025035228068BBD3';
wwv_flow_imp.g_varchar2_table(84) := '1921A023A06AEA93BA47E04E3801748E57B603B0E3403F428010B02370626CF8C3D7ED0122FCC209E0FE152BFA00D487442847651002A9402035796A0FD6D4D408F90EA05D7EE104808547B4C883FC48AB011C04DA08018E401802CA03FC287C738500EE';
wwv_flow_imp.g_varchar2_table(85) := '5D7BD371DEFA7F235C5B2A901090138167EABEB9E2841BA2B94200A86840D5EEC2233942C0EF0828AA76B75B18B8460077DFBE72AB06F09C5B8A53B984402208243B0DB6016C0BC9CED7697EAE11802E60006ED58FB423047C8A801661FFEAA6EAAE12C0';
wwv_flow_imp.g_varchar2_table(86) := 'C66F56BDC995DFC21D6D84801F11D872CFB756EC775371570900150F28916FF0633B77B411027E42A04353D9BFB8ADB0EB04F0FDDB6E3CAC69EC76B781A0F20981911048EA750DBEB1F1F61547929A670299B94E0028F399E9451BF9F115EE682304D21E';
wwv_flow_imp.g_varchar2_table(87) := '0106B0BD6E6D55BD0C8A4A41008F7EE10B113E14F80A078486021C04DAD21A810E55655F924543290800C1C0A100D3B42F73BFCA1D6D84403A22A082A6FDBD0C5D7F035C69080005DAB076E5E3C0D81AF493230464422019B2F0B9AE7FA95BBBF217C9C8';
wwv_flow_imp.g_varchar2_table(88) := '2B5979484500A854DDEA15778106F8AE009E922304D205810D1BD7AE70ED89BFA140948E0050D0EE716C053FFE963BDA08817440E017C57D67BE2EA322521200BE32DCDDC73ECB009E9011349289108803812DBC2E5F5F53A37F163F8E6462A24A4900A8';
wwv_flow_imp.g_varchar2_table(89) := 'FAFD352B3A37AC5EF139A6C13A3C274708B885C028CABD930F69AFC3BA3C8A3C529A545A02D0B5664CDBB0B6EA76DE13C06593881E463B42407E047A354DBBBE6E4DD56A3EA9ADC92CAEDC043080DC8635550F33C6AEE2A7EF72471B21202F020CF6AB1A';
wwv_flow_imp.g_varchar2_table(90) := '5CB571EDCA47E415D292CC130480E2F2E1C06BAD7D990B00B4FFE0E77DDCD14608C88400AF93DA1DDD63D9E27BD65609FFB65FA24078860050C1876ABED25DB766654D842973F8F953DCD14608A4140107996317FFB1801299C5EBE6B77002DB411A69A2';
wwv_flow_imp.g_varchar2_table(91) := '788A000CD4EE5DFDD583756BAAAE5599B69CCF0F6C37C2E9480888444063B05553B4C5BC2E7E1E9F64155976B2CAF2240118CADFB37AE5763E3FB05CD3D42B40633FE6E13DDCD14608A412811E60F008DE7C36AEAEFAF8C6DB56EE4D6561A9CEDBD30460';
wwv_flow_imp.g_varchar2_table(92) := '80B371ED0D3BEBD6AEF862461FABE0C6C12FACB8FE9AA5211B1DD30681A3C0B45BB18ED5ADAEBA1E6F3EE9A0595A10806188FFAA59D1C08DF33DDE25BB8481760D0FBF8F0FD04EF2236D8440DC0860DDE1F568131F667E8AD7A9A975AB577E07EB58DC19';
wwv_flow_imp.g_varchar2_table(93) := '499C20AD08C08EF386352B9FE346BB71E39AAA4A2D000BF8780D3F3AF2128FD3C11D6D84402C04B06EF03AC2BEA580B210EB0EAF47376C585395B68FA5A72D01D8AD8BDF1EE4E3B5759C103EC65D5E4051A77242F84BA6C1B7793CFC26E13E004DE8BFB2';
wwv_flow_imp.g_varchar2_table(94) := 'F27269730D01DDD6DCE6B005EB00D6054D659760DDE08ED7911577DCBDE6AB78DD35094515EC0B02180CE6F76FBBE12827842736ACADFA776EF0CF72B7B06ECDCAF2BA35554CCBEFCD52FABA8AC27D9189412D54A9AA818B2103A6F34A329B813A3F026C';
wwv_flow_imp.g_varchar2_table(95) := '3128EA1272F26180B6411BA1ADD066683BB421DA126D8AB6451BD7F5DB9ADBBCEAB35807B02EC8F48EFEE0FA9ACA735F12C070806EACAEEEB9BBE66B2DF7D5DC78E6BFD7FEC3C97B6EFFE7F7EAFEADEA10AF240736ACB9E1AD7BD7AC78A3EEB61BF69093';
wwv_flow_imp.g_varchar2_table(96) := '0F03B40DDA086D853643DBA10DD1966853B4ED70B6B75FF38B9F08C02F96263D098118081001C40085820801BF204004E0174B939E84400C04880062804241FE46C04FDA1301F8C9DAA42B2130080122804180D02921E027048800FC646DD29510188400';
wwv_flow_imp.g_varchar2_table(97) := '11C02040E8D4DF08F84D7B2200BF599CF425046C081001D8C0202F21E037048800FC6671D29710B0214004600383BCFE46C08FDA1301F8D1EAA4332130800011C00010742004FC880011801FAD4E3A1302030810010C0041077F23E057ED8900FC6A79D2';
wwv_flow_imp.g_varchar2_table(98) := '9B10E00810017010682304FC8A0011805F2D4F7A13021C0122000E026DFE46C0CFDA1301F8D9FAA4BBEF112002F07D152000FC8C0011809FAD4FBAFB1E012200DF57017F03E077EDFF1F0000FFFF1612868D000000064944415403006903A7C48F454139';
wwv_flow_imp.g_varchar2_table(99) := '0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20751396710073680548)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF40000022E494441547801EC93C96E13411086FF197B3C9B1C6FC409369B212CE60017E05DE09C03270417DE8077E0C2037001894B402842118B82A244320A120A7088C2';
wwv_flow_imp.g_varchar2_table(2) := '2A886DB0C7CC660FDD9DCC288B62773B4A224563E9EFEEFAAB5CFDA9342DDFBA773F3848C938E05F0C104F209EC0AE26D075FE816A372F796880AE6BE3CAE52AD145F804645888A1005CC74675E2143455254AA17AB602CF7586621007080278B6857ABD';
wwv_flow_imp.g_varchar2_table(3) := '898F9F97991AE4EC76DAFB03E09071DF99BC81BB3737EBF6E475D0C98852084FC050154C9C2CC3F57C3C78F884899ECF104F5312A2F74318E0F48912BBA4F1B785423ECBF4A7D5862C49A81C3FCA72228B30403E33C2FA8F1572281547511E2B62948050';
wwv_flow_imp.g_varchar2_table(4) := '339749D34D48C2008EEB45175C23CFF0EAA50B51ECFB7E74E63D0801D81D0B2B5FBF45BD5B560754A1B1F2E53B684D18F3ECDC00F40B3F5F3906CFEF457D7FFC6EE02711357AE479BA5E17E7480DADA51E8FB801460C15A5F122B2D90CE61797B6F55E20';
wwv_flow_imp.g_varchar2_table(5) := '5E219F4399D4989AB22DBF93C10D60EA3AEB51221FDEA3A969F87E97C57471C9937CFCEC05C68B4768888C69B09D67E10690D6BB49B20455D3F174E6EDBA034CCDCC42D70CD0DC9A1956AF45FD56B95F726B2EE80558FCF009CDB68DE7AFE6F07AAE8697';
wwv_flow_imp.g_varchar2_table(6) := '44D36FE6516F75F09EE468CDD6FFF58BB9017EADAE6276A186A6E520A9A4A09A69D49696F18E4833D2CC6B5836ABA1B5FD2EDD98E30690541350742492C9E8FF4A4A05556824920AAB61B5A139609707E4F73C1D03C41338FC1318F48CFE030000FFFF08';
wwv_flow_imp.g_varchar2_table(7) := '8AE12E0000000649444154030093420A90606907440000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20751395785798680546)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECBD07985C5776E7775E5557E71CD1C881044144022487E44833A3BC5AC95AA5B52DCB6B7D6BC996D7D64A9FA5F5CAF6EEA7F0590E5A85D5EE';
wwv_flow_imp.g_varchar2_table(2) := 'CE4A1AD9DE515C69A2269243718633C308824804411089201291D1395657DA7B0A6CA21BE877DFEBEA0A2FFC1AA8AEAA77D339BF535DEFFF6E7A895FFABF3E51E001033E037C06F80CF019E03310AFCF4042F88100042000010840206604441000B10B39';
wwv_flow_imp.g_varchar2_table(3) := '0E4300021080000410007C0620000108400002B123A00ED303A01478400002108000046246000110B380E32E0420000108C49DC01DFF11007738F01B021080000420102B02088058851B67210001084020EE04E6FD4700CC93E019021080000420102302';
wwv_flow_imp.g_varchar2_table(4) := '088018051B57210001084020EE04EEFA8F00B8CB825710800004200081D8104000C426D4380A01084000027127B0D07F04C0421ABC86000420000108C4840002202681C64D0840000210883B81C5FE230016F3E01D0420000108402016041000B108334E';
wwv_flow_imp.g_varchar2_table(5) := '420002108040DC09DCEB3F02E05E22BC87000420000108C4800002200641C6450840000210883B81FBFD4700DCCF842310800004200081C8134000443EC4380801084000027127B094FF0880A5A8700C0210800004201071020880880718F72000010840';
wwv_flow_imp.g_varchar2_table(6) := '20EE0496F61F01B034178E42000210800004224D000110E9F0E21C0420000108C49D809BFF080037321C870004200001084498000220C2C1C5350840000210883B0177FF1100EE6C48810004200001084496000220B2A1C5310840000210883B019BFF08';
wwv_flow_imp.g_varchar2_table(7) := '001B1DD22000010840000211258000886860710B0210800004E24EC0EE3F02C0CE875408400002108040240920002219569C820004200081B813F0F21F01E045887408400002108040040920002218545C820004200081B813F0F61F01E0CD881C108000';
wwv_flow_imp.g_varchar2_table(8) := '04200081C8114000442EA4380401084000027127E0C77F04801F4AE481000420000108448C0002206201C51D0840000210883B017FFE2300FC7122170420000108402052041000910A27CE400002108040DC09F8F51F01E09714F9200001084000021122';
wwv_flow_imp.g_varchar2_table(9) := '800088503071050210800004E24EC0BFFF0800FFACC809010840000210880C010440644289231080000420107702CBF11F01B01C5AE48500042000010844840002202281C40D0840000210883B81E5F98F00581E2F724300021080000422410001108930';
wwv_flow_imp.g_varchar2_table(10) := 'E2040420000108C49DC072FD47002C9718F9210001084000021120800088401071010210800004E24E60F9FE230096CF8C1210800004200081D0134000843E84380001084000027127508AFF088052A851060210800004201072020880900710F3210001';
wwv_flow_imp.g_varchar2_table(11) := '084020EE044AF31F01501A374A41000210800004424D000110EAF0613C0420000108C49D40A9FE23004A2547390840000210804088092000421C3C4C870004200081B81328DD7F0440E9EC2809010840000210082D010440684387E11080000420107702';
wwv_flow_imp.g_varchar2_table(12) := '2BF11F01B0127A94850004200001088494000220A481C36C0840000210883B8195F98F0058193F4A430002108000044249000110CAB061340420000108C49DC04AFD4700AC9420E521000108400002212480000861D030190210800004E24E60E5FE2300';
wwv_flow_imp.g_varchar2_table(13) := '56CE901A20000108400002A1238000085DC830180210800004E24EA01CFE2300CA41913A20000108400002212380000859C030170210800004E24EA03CFE2300CAC3915A20000108400002A12280000855B830160210800004E24EA05CFE2300CA45927A';
wwv_flow_imp.g_varchar2_table(14) := '20000108400002212280000851B030150210800004E24EA07CFE2300CAC7929A20000108400002A1218000084DA830140210800004E24EA09CFE2300CA4993BA20000108400002212180000849A030130210800004E24EA0BCFE2300CACB93DA20000108';
wwv_flow_imp.g_varchar2_table(15) := '400002A120800008459830120210800004E24EA0DCFE2300CA4D94FA200001084000022120800008419030110210800004E24EA0FCFE2300CACF941A2100010840000281278000087C8830100210800004E24EA012FE23002A41953A2100010840000201';
wwv_flow_imp.g_varchar2_table(16) := '278000087880300F0210800004E24EA032FE23002AC3955A2100010840000281268000087478300E0210800004E24EA052FE23002A45967A2100010840000201268000087070300D0210800004E24EA072FE23002AC7969A210001084000028125800008';
wwv_flow_imp.g_varchar2_table(17) := '6C68300C0210800004E24EA092FE23002A4997BA2100010840000201258000086860300B0210800004E24EA0B2FE23002ACB97DA2100010840000281248000086458300A0210800004E24EA0D2FE23002A4D98FA21000108400002012480000860503009';
wwv_flow_imp.g_varchar2_table(18) := '0210800004E24EA0F2FE23002ACF98162000010840000281238000085C4830080210800004E24EA01AFE2300AA419936200001084000020123800008584030070210800004E24EA03AFE2300AAC399562000010840000281228000085438300602108000';
wwv_flow_imp.g_varchar2_table(19) := '04E24EA05AFE2300AA459A76200001084000020122800008503030050210800004E24EA07AFE2300AAC79A962000010840000281218000084C2830040210800004E24EA09AFE2300AA499BB6200001084000020121800008482030030210800004E24EA0';
wwv_flow_imp.g_varchar2_table(20) := 'BAFE2300AACB9BD6200001084000028120800008441830020210800004E24EA0DAFE2300AA4D9CF6200001084000020120800008401030010210800004E24EA0FAFE2300AACF9C162100010840000235278000A8790830000210800004E24EA016FE2300';
wwv_flow_imp.g_varchar2_table(21) := '6A419D362100010840000235268000A87100681E0210800004E24EA036FE23006AC39D562100010840000235258000A8297E1A870004200081B813A895FF08805A91A75D084000021080400D0920006A089FA6210001084020EE046AE73F02A076EC6919';
wwv_flow_imp.g_varchar2_table(22) := '02108000042050330208809AA1A7610840000210883B815AFA8F00A8257DDA86000420000108D4880002A046E069160210800004E24EA0B6FE23006ACB9FD62100010840000235218000A809761A85404008140A0131043320103F02B5F6180150EB08D0';
wwv_flow_imp.g_varchar2_table(23) := '3E04AA4CA0604EFA531363327AFB868C98C7F4E4B8E473B92A5B4173108040AD0920006A1D01DA87401509643373327CF3AA4C8D8FC95C3A2D99B939991C1B3542E0BA685A154DA12908C49C40EDDD4700D43E06580081AA1048CF4CCBD8F02DC965EFBF';
wwv_flow_imp.g_varchar2_table(24) := 'DAD763A3B76F8AE6A98A3134020108D49C0002A0E621C00008549EC05C7A56C64787963CF9CFB79ECFE765626C44D2B3D3F387788600042A442008D522008210056C80400509CC4C4FCAD8D02D29E4BD27FCE95C80B1E1DB323B3D55418BA81A02100802';
wwv_flow_imp.g_varchar2_table(25) := '01044010A2800D10A8108199A90933C63F223AF1CF771346274C8C0ECBF4C4B8EF226484000496432018791100C188035640A0BC040A05D1D9FD13A3E6E4EFE3CAFFDEC655304C8E8F8AAE16B8378DF710804034082000A21147BC80C0220213E6E4ADB3';
wwv_flow_imp.g_varchar2_table(26) := 'FB171D2CE18DAE169830BD012514A5080420E04220288711004189047640A00C048A57EE63233233395186DAEE543133352988803B2CF80D812811400044299AF8127B0253E6CA7FDAE7C9BFA9B141927575BE98A9089834C2C25766324100021602C149';
wwv_flow_imp.g_varchar2_table(27) := '4200042716580281D20998317FBD4AF77BF2EFEDED91EF7CF231F98E271F97D5ABFA7DB5AB7523027CA122130442410001108A30612404DC0914BBFD27C644AFD2DD73DD4DE9EBE992471FD929CDCDCDD2D5DE2ABBB66F93FEBE9EBB192CAF8A22C0F432';
wwv_flow_imp.g_varchar2_table(28) := '58B2900401085808042929112463B005021058260173E5AF57E57E97EC0D0CF4C9138FEF93C6FAFA0F1A6A3443014FEC7B445699B40F0E5A5E685B53E363961C2441000261208000084394B011024B10D02BFFF1D161DF57FEAB560DC8637B76493271FF';
wwv_flow_imp.g_varchar2_table(29) := '9F7D22999047766E97B56B069768E9FE43BA3C707C64E8FE048E4000021602C14ABAFF9B2058F6610D0420B0140173E53F65BAE2FDEED83768C6F91FDFB353EAEA924BD5563CD6D0502FBB1E7E480607078AEFBD7E69DBDAFBE0958F7408402098041000';
wwv_flow_imp.g_varchar2_table(30) := 'C18C0B5641C04A4037E9D1F1786BA6F713D7AC5E258F3DB24BF42AFFFD43AE4FF5F5A9622FC1EAC155AE791626A80DDA1BB0F018AF210081A50904ED68226806610F04206027A07BFB4F4FF95BE7BFDA9CFCF7EEDA2E8925BAFDDD5A49241C331CB04D36';
wwv_flow_imp.g_varchar2_table(31) := 'AC5BED9665D1719D13A05B0E2F3AC81B084020F0041000810F110642E02E01BDAB9F2EF793C2DD636EAF569BAEFCC74CB77F32E9DEEDEF5636954AC98E6D0F890E1DB8E5993FAE7311F42E826ADBFC319E2100817B0904EF3D02207831C122082C49606E';
wwv_flow_imp.g_varchar2_table(32) := '76468A13EF7C9CFCD7AF5F2B8F9A93BFE3384BD6E5E7602A55278FEFDD2DEBD6AEF1CE6E6C1A1FBE2D88006F54E4804050082000821209EC808085402E9B9189B161D1DBF55AB215937412DF9EED0F2DABDBBF5870895F8EE3C82E53D7FA75DE22209FCF';
wwv_flow_imp.g_varchar2_table(33) := '8BCE4D505B97A88A4310883581203A8F00086254B009020B08E47259191DBA29B96C6EC1D1A55FEA863E8FEFD9559693FF7C0BA9BAA4EC34C3017D3E360BCACECDC998E909281831305F9E6708402098041000C18C0B5641A048404FA4132343BE4EFEED';
wwv_flow_imp.g_varchar2_table(34) := 'ED6D77BAFD13A577FB171B5DE2572A9594C776EF9496D6962552171FCA6632A2FB13E8DC80C529BC83405C0904D36F044030E38255102812D06EFFB974BAF8DAF6ABA13E551CAFAF5FB0C39F2D7F2969F50DF5B26FD70E696A6AF22C9E9E999672DE91D0';
wwv_flow_imp.g_varchar2_table(35) := 'B34132400002CB2680005836320A40A03A047469DDECF4B467633A59EFD147764B6B4BB367DE9566E8EEEA90DD3B1E163F2B0B743E802E595C699B948740D80904D57E04405023835DB126909E9D2E4EA8F382E0388EECD9B95DFA7ABBBDB2962D7D557F';
wwv_flow_imp.g_varchar2_table(36) := '8FECDEF9B0388EF750C3C4E8B0643373656B9B8A200081F2114000948F253541A02C0474A6FFE4D8A814F205CFFAF69893FF9AC101CF7CE5CEB07ECDA03CB4F501EF6A8D0B3A1F407DF2CE4C0E08449140707D420004373658164302857C5EC6866F492E';
wwv_flow_imp.g_varchar2_table(37) := '9BF5F47ECBE68DB27EADBFDDFA3C2B2B21C343A6FD4D1BD77B96D495012A02A460D480676E32400002D5228000A81669DA818017017382D47DF53373DE5DE6AB570DC80E7305EEA317DEABD5D2D3CD08C0AE6D5B65F5AA7ECF3A7413A3A9C971CF7C6480';
wwv_flow_imp.g_varchar2_table(38) := '40D40804D99F44908DC33608C489804E98D39BEB78F9DCD3DD29BB776C13A702CBFDBCDABE375D6DD8B76797747777DD9B74DFFBA9F1315121705F02072000819A104000D4043B8D426031816C26E36BD25F734BB3ECDBBD4BF4D6BD8B6BA8DDBB643221';
wwv_flow_imp.g_varchar2_table(39) := '8F3EB24BDADB5A3D8D98181B11F5D533231920100902C176020110ECF8605D0C08E804B9F1D12129784CFAABABAB9327F6EE96E6E6C6C051696E6C28AE46A86F48596DD3B90D9363C3D63C24420002D5218000A80E675A81802B011DF7D78972AE194C82';
wwv_flow_imp.g_varchar2_table(40) := 'E338B277F70ED1DDFECCDB40FED73D02F6EEDAE1699B6E6CA43E7B66240304424E20E8E62300821E21EC8B34011DF79F9D9EF2F4F1C12D1B6570A0CF335FAD330CF4F5CA86F5EB3CCD5001303BE3EDB76745648000044A26800028191D0521B03202DA1D';
wwv_flow_imp.g_varchar2_table(41) := '3EA5EBFD0BF6E5711D1DEDB275F3265F1BEFACCCA29597761C47766E7B50DABCE60318977552A0DEE868E5AD520304824820F8362100821F232C8C2081423E2F1366DC3F6F9E6DEEA5CCB8FFA37B764AB22E69CB16A8B43A63AB0E57D4A5EAAC76A9009A';
wwv_flow_imp.g_varchar2_table(42) := '1C1BB1E621110210A81C010440E5D85233045C09E89A781D0B77CD60121CC79187B76D9536D82D777700001000494441541F77E033D903F5BFCBF45AECD9BECDD3A6F4CC8CCC3214E0C9890CE12310068B110061881236468AC05C7A56A67D6C8AB37EDD';
wwv_flow_imp.g_varchar2_table(43) := '1AD9B47E4D687D5FB37A95ACF6B14DF1E4284B03431B640C0F35010440A8C387F16123A063DEE3234322660CDC667BAB1943DF61C6D26D79829EE6388E3CB273BBB4B7DBF707D061105D0619747FB00F02FE0984232702201C71C2CA8810989E9C105DF7';
wwv_flow_imp.g_varchar2_table(44) := '6F73A74EC7D0773E2C3AFE6FCB1786B454AA4EB69B618CFA947D7F005D06393335110697B0110291218000884C287124E804F416BF7E4E720F6ED92CDD5D9D4177C7B77D03BD3DB2F5C1CDE2F573679740EFFB2078D5433A046A4D202CED2300C21229EC';
wwv_flow_imp.g_varchar2_table(45) := '0C358142A1209363A39E5DFF8366CCFC814D1B42EDEB52C66FDEB04E06FA7B974ABA7BCC0C8B4C8E8F89AE90B87B9057108040A50820002A45967A21304FA078F21FF1BCC56F6353836C7FF0014904E0263FF3A697EBD971EECC07686D69B656A9370BD2';
wwv_flow_imp.g_varchar2_table(46) := '61126B261221106802E1310E01109E5861694809CCCE4ECBCCD4A4D57AC779FF04D96A3F415A2B0978626363833CFCD083924CD8BF76A626C78C58CA04DC1BCC8340F809D8FF12C3EF1F1E40A0A60474C29F9F2BDA0DEBD6C840AF4717794D3D294FE383';
wwv_flow_imp.g_varchar2_table(47) := 'FD7DB26EED1A7B65662840E70388E939B167241502C12310268B1000618A16B6868E806EF8A333DC6D866BB7F8D607368B3812F91FC70C6F6CDDB2C97367C3B9D959999B4B479E070E42A096041000B5A44FDB912690CD644CD7BFF7D2369DF5DF64BAC7';
wwv_flow_imp.g_varchar2_table(48) := '230D6381734D4D0DB2C30C052C38B4E44BDD2658F7085832918310082481701985000857BCB036240474D6FFD484F7ACFF3ED325BE76F54048BC2A9F991BD7AF939E9E1E6B852AA05404583391080108944C000150323A0A42C09D80CE664FCFCCB86730';
wwv_flow_imp.g_varchar2_table(49) := '298964A278E7BC84C7A438933572FF1D33DCB1EDC1CD9E9B1DE9AD92B319F60688DC0720A20E85CD2D0440D82286BD812750BCFAF7B1D7BF4E866B0FE18D7ECA1580DEEE4ED9E463CF8369C352990A3F10804059092000CA8A93CA2020323531269E13FF';
wwv_flow_imp.g_varchar2_table(50) := 'DA5AE5A12D9B628FEB818DEBA5A1A1C1CA61767A5A7417456B261221507302E133000110BE9861718009E4B25999999CF0B470C7B6AD12A7897F6E40F45E01CAC22D7DFEF8D4F8A8D00B304F83670894870002A03C1CA9050262CE50323D35619E0A561A';
wwv_flow_imp.g_varchar2_table(51) := '0303FDD2DFD365CD13A7C4B58303D2D7D767753997CD890E0558339108811A120863D3088030460D9B034940D7ADCF7AECF8A76BFDB76F7B50E238F1CF2D684EC291877D4C089C9E18F714576E6D701C0210B89F0002E07E261C81404904A6CDD8BF5737';
wwv_flow_imp.g_varchar2_table(52) := 'F5E68D1BA5DD633FFC921A0F79A1AE8E76D9E2312742D9AA0808B9AB981F4902E1740A0110CEB86175C00864E6D29E3BD775B4B7C9E60D6B03667970CC596786029A9B1AAD06CD4C4F0ACB02AD884884806F020800DFA8C808017702C50D6BEC43FFD2DF';
wwv_flow_imp.g_varchar2_table(53) := 'D7234D0DF5A2BBDBF1C82FE650C84B437D4AD60CAE12C7715C41EBBD1566A6A75CD34980402D0884B54D0440582387DD8121909E9996CC9CF7663567CF5D9067BEF1827CF3A557CD63BF79E8330FE5F1FC0BAFC8D79E7F51CEBE7BC1739C7FD6F402A810';
wwv_flow_imp.g_varchar2_table(54) := '08CC07004320105202088090060EB3834140C7A567A6BC97FDCD5B9BCBE5646A6AC63CA6CD439F79288FE999595136F39C6CCF857CA1B8D782510AB66CA441A04A04C2DB0C0220BCB1C3F20010D0ABFFB939EE5A57ED50CC985E806C365BED66690F0291';
wwv_flow_imp.g_varchar2_table(55) := '22800088543871A6DA04A626C7443CC6FEAB6D532CDA33CC6796D1F3120B2638591302616E140110E6E8617B4D09E8F6B4B90C57A1B50AC2ECCC94CCA5676BD53CED4220F4041000A10F210ED48240219F17D6A4D782FCDD360BF982CC786DBC74373BAF';
wwv_flow_imp.g_varchar2_table(56) := '20500102E1AE120110EEF8617D8D08A467677CCDFCAF9179B16976CEC4811501B109378E96990002A0CC40A92E06040A05D13DFFBD3C6D696996BEDE6E1E2532E835E55A0D43B1FC1457614C4F5A72900481CA11087BCD0880B04710FBAB4E4067FDE732';
wwv_flow_imp.g_varchar2_table(57) := '196BBBDFFB9127E4E3BFF5CFE577FFE52FF12891C1EF99727FF09BBF22DFFD1D8F5B59EBBE003956045819910881A508200096A2C2310858084C4F4E885E79BA65D1ED6C9FDCB75B12961DEDDCCA727C3181545D9D7CEF777E489A2C5B04E7B239D10981';
wwv_flow_imp.g_varchar2_table(58) := '8B4BF20E02952610FEFA1100E18F211E5491402E9B111D77B635B979E33AD9B876C09685B46510E8EFE9921D0F3D602DA1BD003651662D4C2204624A000110D3C0E3766904663CF6A1D72BD68F3DF9A8E873692D50EA5E02F5A93AF9CE0F3D72EFE145EF';
wwv_flow_imp.g_varchar2_table(59) := '8BBD00CC0558C4843795251085DA11005188223E548540D68CFBCF7A2C3BEBEDE994AD9BD757C59E3835F2C086B5B26ECDA0D5E5E2C4CC42C19A87440840E02E0104C05D16BC828095C05C7AA678073BB74C8EE3C8777C689F74B436BB65E17889049A1B';
wwv_flow_imp.g_varchar2_table(60) := '1BE4A9C7F6584BEBA64C998CF74D99AC959008015F04A2910901108D38E2451508E8DA7F5B333DDD1DB277C7565B16D24A24904838F2E14777497B5BABB506AF18590B93088198114000C42CE0B85B1A81ACB9B2CC7ADCF277FB430FCA9A81DED21AA094';
wwv_flow_imp.g_varchar2_table(61) := '2781B6E626D9B77BBB359F4ED0CCB124D0CA88C49513884A0D0880A844123F2A4A40B79CB5CD324F2693F2C4233B2B6A43DC2B4F2613F2D127F65A3164B319C97077462B231221304F0001304F826708B810D0AD66BDD6996FDEB896A57F2EFCCA797875';
wwv_flow_imp.g_varchar2_table(62) := '7F8F6C7D6093B8FE14446667A65D934980C0CA0944A70604407462892715223037372B7AE3195BF51F7BF23169696AB46521AD0C041AEA53F27D1F79C25A53263D2B2ADAAC99488400040401C08700021E04D23333D61C6B060764DB960DD63C24968780';
wwv_flow_imp.g_varchar2_table(63) := 'E338B2FD810DD2D1DEEA5AA10ED5CCCE4CB9A69300819510885259044094A2892F6527A0E3C9FAB055FCE89E1DD2DBD56ECB425A1909E856CB1F7DEA716B8DB3D353A6D7266FCD432204E24E000110F74F00FE5B09CC7974277776B4C93E96FE5919963B';
wwv_flow_imp.g_varchar2_table(64) := '31617A013EFAA14724954AB9569DCD642497CBBAA6930081D20844AB1402205AF1C49B3213F05A57BEF3E1ADB271EDAA32B74A755E047A3ADB65F78E87ACD9BC62672D4C220462400001108320E36269047422593663DF596EAFC749A8B4962B5F2A97CF';
wwv_flow_imp.g_varchar2_table(65) := 'CB5C262B996C4EF2F942E51B2C730BBA3190D79240EDBD29183FCBDC34D5C59840D45C4700442DA2F8533602E9F48C88E5DC3838D02BEB56F797ADBD4A553436392DA7DEBD2C9F7BF605F9F77FF179F983FFF029F9DD4FFC95FCCE1FFF99FCF61FFEA9FC';
wwv_flow_imp.g_varchar2_table(66) := 'CE9FFCA5FC9B4F7E5AFEE8AFBE204F7FEB353979EE928C4D4C55CA9CB2D5BB79DDA03436D4BBD69733C3006C0DEC8A870408B00A80CF00049622A033C9D3D3F693E0A6F56BA5BFBB73A9E2353F962F14E4FAED11F9D2D75F968FFFE9A7E5DFFE7F7F255F';
wwv_flow_imp.g_varchar2_table(67) := 'FDBB6FC9A1A3C7E5D85BA7E4D4D977E59DF3EFC9B90BEFC9A933EFCA1BC74FCAEB878FC967BFFCACFC8E11051FFFB3CFC857BFF5AA5CBB355C735FDC0C686E6C945DDBDD8701F2E6EA9F6100377A1C5F3E81E895A007207A31C5A33210D0EEFF8CC7D6BF';
wwv_flow_imp.g_varchar2_table(68) := '0F6DD9588696CA5FC5ADE131F9CAF3AFC8FFF3EFFE837CE1996FC83BEF5E9499D9B4EF8654FC6899CF7DF939F9D79FF84BF9EA375F95E1B109DFE5AB95517706DCFDF083D6E6F4064ED60C244220C6041000310E3EAEBB13D013879E08DD72D4D52565A3';
wwv_flow_imp.g_varchar2_table(69) := 'E982764BAFC5F1BC19CB7FCB5CCDFFFE9FFC857CE1E96F986EFCC9159B716B78443EF795E7E4F7FEF82FE4C01B6FAFB8BE7257A0FB2F388EE35AADDE17401FAE194880804F0251CC8600886254F169C504E6D2696B1D0F6FDD223D9D1DD63CD54C4CCF65';
wwv_flow_imp.g_varchar2_table(70) := 'E4B9970EC8BFFE93BF92EB3787CADEF4D51BB7E4937FF30579F685D7249BCB95BDFE522BECEE6893FEDE6EF7E205111573EE194881407C092000E21B7B3C7721A0EBC7BD66FF3FFCC026696D0EC6D6BFD33369F9DC33CFCBA7BEF8ACE4CDB8B78B5B2B3E';
wwv_flow_imp.g_varchar2_table(71) := 'AC2243DBF8F457BE2EFA7AC51596A1025D0DF0A1BDBBAC35A998B3F5E6580B930881228168FE42004433AE78B502021973F5AF73006C556CDDBCDE965CB5343D117FF1B96FCBD7CD9579B51AD5B6FEF66BDFAA5673D6761CC7913DDB1F1427E13E0CA03D';
wwv_flow_imp.g_varchar2_table(72) := '00793605B27224319E041000F18C3B5E5B08E8CC71DB15E3C6F5ABA5CB743D5BAAA84A92CEF47FF9D09BF2DCB7F757A5BD858D3CF7C27E79F6C5030B0FD5ECF5DA557DD2D2D2ECDA7E215F10BD4DB06B061220E04120AAC90880A84616BF4A2690CDD8C7';
wwv_flow_imp.g_varchar2_table(73) := 'FFB76C582F3AF65C7203652A78F6FC65F9EBBF7DC6776D3DDD1DF2E4638FC84FFEC80FC8CFFEF48FCB2FFCEC4F151FFA5A8F3DF9D81EE9E9F237AF4105924E347CEBEC79DFED572A637D7D4AB63FB8C55ABD0E03583390088118124000C430E8B8EC4E20';
wwv_flow_imp.g_varchar2_table(74) := '9FCB49CE3CDC73886CDDB2411CC7BDCBD956B65C69A3E393F21FBFF08CA7ADDA5E4F77A7FCF0F77F547EEAC7FEBE3CBAFB6159D5D7234D8D3A7F417D708AAFF5D8A3BBB7CB4FFDF8DF971F3279BBBB3AB5A8F5A1C30F9FF9D2DF2D6B89A1B5C212131326';
wwv_flow_imp.g_varchar2_table(75) := '16FB766DB396F69AD3612D4C62CC0944D77D044074638B672510C8E8D57FC1BD6067679B6C5853FBBDFF8F9E382D97AFDC7037F4FD14BD57C14FFDD80FCAC6756BCC113DE19B27EB7F473699BCFF9529B3D3638DBD5673E9CA7579E9E09BFAB2A68F6D9B';
wwv_flow_imp.g_varchar2_table(76) := 'D74B329170B5419702E6B219D7741220104702EE7F3171A481CFB12730373B6B65B079FDDA9A77FF0F8D8ECBDF7DFB55D16E789BB11FDAB75B3EF6D4A3268B9F13BFC9B6F0BFB9AAFED8538FC9E3A68E8587977AFDCCF32FCA688DB70EEE686B91B51661';
wwv_flow_imp.g_varchar2_table(77) := '96CFE7646ECE3EB4B3946F1C834094092000A21C5D7C5B1601BD4ACC789C2474F7BFFA54DDB2EA2D77E6E3A7CE79AEF5DFBD639B3CFEC88E1537FD215387D75DF746C726E4E543C756DCD64A2A701C47F6EE7AD8BD0AD3ABE325EEDC0B93028168124000';
wwv_flow_imp.g_varchar2_table(78) := '4433AE785502815C2E2B2A02DC8AEA52B31D5B37BB2557E5F8D4CCACBC76C4DEE5DED7DB2D1F79626FD9ECF9C813FBA4A7A7CB5ADFC1A36F59D3AB91F8C8F6AD9248BA7FA5152777168C12A88631B4111102D176C3FDAF25DA7EE31D04EE23A063C4B66E';
wwv_flow_imp.g_varchar2_table(79) := '75EDFE6F6D6EBAAF5C350FDC1C1A956BD76F599B7CE2D1DDD6F452129F7A748FB5D88D9BB7E57A8D6F1CB47EB04F5A9BDD9703E6B2B98A6E9464054422040248000110C0A060526D086433F649629B36AC95A6A686DA18F77EABE72F5DB1EEF1DF6BAED4';
wwv_flow_imp.g_varchar2_table(80) := '37AC197C3F77F99E36AC1D94DE6EF79501994C568E9F7EB77C0D965093E338B2DED8692BAABD3CB674D220B09040D45F2300A21E61FCF34D407B006C99077ABAA52195B265A978DA85F7AE59DB7860F3466BFA4A126D75E7F279B9F0DED59554BFE2B28E';
wwv_flow_imp.g_varchar2_table(81) := 'E3C8C6B5ABAD4B34D91068C598A92042041000110A26AE944E40BBFE731EEBFF07FABA4B6FA04C25D369FB4CF6B583FD656AE9FE6AD678D47D7B78E4FE42553EA2FEEB6D82DD9ACD79F4F2B895E3781C0944DF670440F4638C873E08643373523057B1B6';
wwv_flow_imp.g_varchar2_table(82) := 'ACDD01B8FBDFAC8700E8686FB5B9B0A2B4CEF6366BF989C9296B7A3512379A2100EB44C06C4674B3A76AD8421B10083A010440D023847D5521A002205FC8BBB6D5D0502F8DE6E19AA10A09B95C5EA667ECFB1434D6D757CC92C606FBF0C7ECECACA88D15';
wwv_flow_imp.g_varchar2_table(83) := '33C047C57A8F8664C27D99A60EF3E472591F359125EE04E2E07F220E4EE22304BC0814D7FF5B56886DD9B8561A4C2E891E0000100049444154EAED2740AF36569AEE388EE8B6B762FDB138612DB7F2443DF92712256C3AB4F2A63FA841F768B0DDCF4057';
wwv_flow_imp.g_varchar2_table(84) := '02E4B208800F80F122D6041000B10E3FCE2B011DFFCF7A8C0D6F58BBA6E602404FAE8D8DF6550833E93975A9228F99597BDD7A473EC7A9AD00701C47560DF459FD470058F1905824108F5F088078C4192F6D040A05D3756DBF2A1CE8EB11BDBAB455538D';
wwv_flow_imp.g_varchar2_table(85) := 'B4C6E24D7CDC5B1A1B9F704F5C618AEEF867ABA2ADB5C5965CB5B4F5AB5759DB622580150F89312280008851B0717569023AF65FC8BB779D3B8E2383FD3D4B17AEF2D1068F31FE2BD76F57CCA2AB376E5AEBEE686BB3A6572B71CDAA3E4959B66BCE3307';
wwv_flow_imp.g_varchar2_table(86) := 'A05AA1086D3B71311C01109748E3A72B81BCC7F23F31BDDA9D159C5DEF6AD8120983FDBD4B1CBD7BE8DCF98B77DF94F9D5B90BF6BAD75B6EC6536653ACD5AD5FDD2F09C7FDAB2DAFAB3D4CAF8FB5121221100302EE7F2531701E1721A004BC04404F57A7';
wwv_flow_imp.g_varchar2_table(87) := '785D796B3DD5786C5ABF461209F73FDB5BB787E5D2D5EB6537E5C2956B72EBF6A86BBD7AC55DEBFB24CC1BD7D9DE26A97AF795003AE7238F0098C7C5F37D04E273C0FD9B243E0CF034E604BC9685AD3363CAA9BA642028E950C4E68D6BADB6EC3FF88649';
wwv_flow_imp.g_varchar2_table(88) := '771FD23089CBFC5F9003878E5ACBF4F7F5C8C63503D63CD54AD458755BF66C2814F2EC0550AD60D04EA0092000021D1E8CAB06819CC710C0EA55FDD2D2D4580D533CDBE8686D96C7766FB7E6BB3D34222F1D501160CDE63BF185FD47E4F6D0986B7EC771';
wwv_flow_imp.g_varchar2_table(89) := 'E4F13D3BC571CC58896BAEEA260C0EF4B93768B491EE07E09E819438138893EF088038451B5F972490F79814B6DA63DC7DC94A2B7870EFCE87AC37E6D1A6DF3C714A0EBE71425FAEE8F1BAA9E3AD9367AC75B41951F23D1F7ED49AA7DA89DA6B232E7AA4';
wwv_flow_imp.g_varchar2_table(90) := '2005612960B523427B41248000086254B0A96A04B29939F1EA01181CB04FBCAB9AB1EF3734D0D325DFF39127DE7FE7FEF4FA9137E585FD874D0673C96B7E2FEBBF19237F61FF213968EAB095731C47BEEB3B9E907623026CF9AA9DB67EF580B8EE8A6870';
wwv_flow_imp.g_varchar2_table(91) := '1497021A1FAB6D17ED059D40BCEC4300C42BDE787B0F019D115EC8E7EE397AF7ADEE2BDFD9168CF5ED77AD12796ADF2E59BDCAD2CDFD7E66BD7AFFF4979E5DD6C4409DF0F7E92F7F4DDE3A79F6FD5ADC9F06FABAE587BFFB29F70C354A5963D8D459EEDC';
wwv_flow_imp.g_varchar2_table(92) := '9833BD3E0504408DA243B341218000084A24B0A32604F2E6E49FB3CC01686B6D9564325913DB6C8D76B5B7CA0F7EF7476C593E48BB3D342A5F79F65BF2B9AF7E5D8EBE755AAEDF1A929959BDA780B9143627417D7DEDE690493B259F7BFAEBF2F4DF7DDB';
wwv_flow_imp.g_varchar2_table(93) := '3AE63F5F71BD39C1FEE80F7EAFD47A8BE4797B163E77B6B57AEC05901304C04262BC5602717B2000E21671FC5D44A0505C13BEE8D0A237ADAD2DE2382E83C98B7256FFCD87F7ED901FFEBE8FFA6EF8C6CDDBF2EAEB47E4F35F794E3EF9D75F903FFCE4A7';
wwv_flow_imp.g_varchar2_table(94) := 'E40FFFF453C5D77FFBD5E74CDA51B971E3B6AFFA1CC791EFFDE853F2E4230FFBCA5FED4CC9644254A0B8B59B37C24FE702B8A5731C0271208000884394F1D195403EE77E07402DD4DCD8185801505797941FFD818F9A13F1136A6A551F8FEED92EFFF087';
wwv_flow_imp.g_varchar2_table(95) := 'BE2BB06CC4FCD80440F1EADFF47E986CFC87C0FB04E2F78400885FCCF1780101BD125CF0F6BE976D01EE015063EB5375F2533FF2FDF29D4FECD5B7157F388E238FECDC263FFFD33F2EC944B0BF3E1A6C374E2A8E7E985F1527460310082E8160FF050797';
wwv_flow_imp.g_varchar2_table(96) := '1B96458440F14AD0E24B4F57BBB9CAB564084052AAAE4E7EE6277F58FEC10F7E77454FCA8D0DF5F2A3A68D5FFA6FFF0BD3BDEEBED35E0090144D705D05504C15E600BCCF81A73B04E2F81B0110C7A8E3F307040A05FB10407D2A257AE2FBA040405FD49B';
wwv_flow_imp.g_varchar2_table(97) := '9E809FF87B1F939FFBAF7F42DADB5BCA6AA5E338D2DBD329FFF8BFFC51F93133E49008F895FFBCF3CD1E9B371518029847C5734C092000621A78DCBE4320AF9300EFBC5CF2779339892413E1F933F9F0BE9DF22F7FF1BF93EFFBE853525F9F5AD2A7E51C';
wwv_flow_imp.g_varchar2_table(98) := '6C6D6992EFFFAE0FCB6FFCF2CFCB937B772CA768CDF336DA86008C75058FD89B2CFC8F0D81783A1A9E6FB678C607AF2B4CC0EB24D0E47112A9B07925553FD0DB25FFE8C7FF9EFCFAAFFC0FF23D1F79D2F408B4157B319209EF3FF76422515CD637D0DF2B';
wwv_flow_imp.g_varchar2_table(99) := 'DFF7B10FCBAFFEC2CFCA4FFF83EF97B696E6926CA96521ED15B1B59FCFBBEFFF602B471A04A242C0FB1B212A9EE207049620E0D50D1C460130EFE6DA815EF9999FF841F9B7BFF92BF2BFFDE2CFC98FFFF0F7C9637B76C8C35B37CBC675ABA5A7AB4356F5';
wwv_flow_imp.g_varchar2_table(100) := 'F588DE6170FB435BE4F1BD3BE5277FE4FBE537FED93F917FF5BFFF53F9473FF603B27ED07BB32109E88FAEE0B09956C83309D0C6274E6971F5150110D7C8E3F71D02CE9D27B7DF4D0DF56E49A139EE388EE89DFAFEB3EFF9B0FCD37FFC9FCBFFFA3FFE8C';
wwv_flow_imp.g_varchar2_table(101) := 'FCE6AFFCBCFCFEAFFFB2FCF6BFF845D3BDFFDFCBAFFE93FF467EE167FEA1FCD0773D25ABFB7B42E39BCD501DBEB1A57B893F5B59D22010050208802844111F2A46A02E19FCD9EE15733EE4153735D68B6D2260C1630268C8DDC77CDF04E29B110110DFD8';
wwv_flow_imp.g_varchar2_table(102) := 'E3B98F59E061580140209726D0E4B18953C147FC97AE99A310880601044034E28817A512F018066E6C48955A33E56A4CA0BFA7531CC7638CA7C636D27CED09C4D90204409CA38FEF9E04EAEBC33F07C0D3C98866D00D926CE7FF024300118D3C6EF92580';
wwv_flow_imp.g_varchar2_table(103) := '00F04B8A7CB123E0388ED4D72563E777541CD6E11BC771EF01283004109550AFC08F78174DC4DB7DBC87800701CB09C4A324C93526D0509F9284E3FE15C7F9BFC601A2F99A1370FFEBA8B969180081DA12A83357FF5C25D636062B693D5557271A43F73A';
wwv_flow_imp.g_varchar2_table(104) := '3C2680B81724252204E2EE060220EE9F00FC7725A0277FAE125DF1043E41E3E7692401F6444486E81240004437B678E68780FB10B1E47279D3856CC9E0A77EF2D48C40269B95ACD776BF0CF1D42C3EB56F180B10007C06E24BC0E3CB5FAF200B52882F9F';
wwv_flow_imp.g_varchar2_table(105) := '907B9E9ECB483E6BBBDB23E22EE421C6FC15124000AC1020C5A34D2093C946DBC1087BA7B1B309380FFD176132B8A60478882000F814C49A80238ED57FBD8AB4662031B004462726C53EC46F8F7D601DC3300894890002A04C20A9269A0466D373D1742C';
wwv_flow_imp.g_varchar2_table(106) := '065E8D4F4C1901E03E84E3380880187C0C5C5CE4B012400028051EF125E07112400084F7A331339B96A9E91957071C0701E00A878458104000C422CC38E946C0EB14309B4EBB15E578C0094C1B0110701331AF460468F60E0104C01D0EFC8E2901C7B14B';
wwv_flow_imp.g_varchar2_table(107) := '00E60084F783313D3B1B5EE3B11C0255208000A802649A083001CB56B16A753A93D1271E21243037678F5D22C17D1E4218D632984C15F3041000F324788E258144C2DE03A0E3C8B1041301A7D31E13381D8FD84700012E40C04A000160C54362D409388E';
wwv_flow_imp.g_varchar2_table(108) := 'FD4F607A866EE4B07E06BC62E724ECB10FABDFD86D2740EA5D02FC05DC65C1AB18124824EDDDC033336999420484F293E1D57B9340008432AE185D3E020880F2B1A4A610124824ED0260646C5CEC9BC984D0E998983C3DE3BE045011249803A01862F6C0';
wwv_flow_imp.g_varchar2_table(109) := 'DD850410000B69F03A7604121E4300D76EDE161440F83E167A1F07DB1E00EA91E3D8E77F681E1E10883201044094A38B6F9E04BCC681C72727259BCB79D6438660119849CFC98C6D0F0773EE771CF32B5866634D850950FD62020880C53C781733020933';
wwv_flow_imp.g_varchar2_table(110) := '0EEC38EE2782CC5C46D80B207C1F8AA19171C959EE04E83826E6FA089F6B580C81B2114000940D25158591C0DCECACE9E177DF2F3E97CDCAADE1D130BA166B9BAFDCB82DF9BCFB9D1C0BF982A467A663CD287ECEE3F1BD041000F712E17D6C0864E6D232';
wwv_flow_imp.g_varchar2_table(111) := '333DE1E9EFED11048027A48065D0B91BE9B47D23A099A909994BB3CC3360A1C39C2A1240005411364D0587807EF18FDEBE69BA89BDC7F78746C6841D0183133B3F96DCB83564EDD9D13A72D99C8C0DDF4204288C183C70F17E020880FB997024E204D2B3';
wwv_flow_imp.g_varchar2_table(112) := 'D33231EA7D8298C770CD742767CDC962FE3DCFC127706B68C497913A14303E7C5BE666ED4B067D55462608848C0002206401C3DC9511D06EFF8991615F57FEF32D9DBB78591000F33482FF9CCFE7E5E6ED21DF866AFEF1D161D15E21DF85C818320298BB';
wwv_flow_imp.g_varchar2_table(113) := '140104C05254381649027A953736744BF40B7F390E4E4DCF4836975F4E11F2D69080EEDC98CDDAC7FFEF352F9FCB897E361001F792E17D94092000A21C5D7CFB80807EB14F8C0D2FFBE4AF15E8D57F36EB3EA35CF384F1912F144AE211745FC727A7255F';
wwv_flow_imp.g_varchar2_table(114) := '8260D3CD8326CCD0900AC5A0FB887DCB2340EEA509200096E6C2D10811D06E7F1DE7D5495FA5B85528E4E586CF31E552EAAF769933E7DF938FFFF9E7E59FFF9FFF4E7EF5FFFEB87CFCCF3E27EF5EBE566D332AD6DEA56B3745C54D290DE867647C6448F4';
wwv_flow_imp.g_varchar2_table(115) := '33534A79CA40204C041000618A16B62E9B805ECD8D8FDC96E576FB2F6AA820323236B9E85058DF9C3E7F59FED51FFEA91C7EE3B80C0D8FC86D236C0E1F7B4B7EEF137F2EEF5CBC1A56B716D97DEDE650493D00F395E8676574E8267302E68184FE1907DC';
wwv_flow_imp.g_varchar2_table(116) := '082000DCC8703CF404F42A4EBBFDF5AA6E25CE14A420378786250A5B023FFDFC2B9233E3DDF7F2989E9E95175F3F2AB97CF8E73A5CBB797BC57EE8EA008603EEFD94F03E6A041000518B28FE1409E8C95FAFE2FC9CFC753BE0645D5DB1DC92BF4C0FC0D5';
wwv_flow_imp.g_varchar2_table(117) := 'EBB764D663639925CB06E8A05ED99EBF7CC5D5A26BD76FCAE8F8946B7A58126EDEB62F016C6A6A1071C4F3473F3B63A6F7483F4B9E99C910580218E64E0001E0CE86949012B8D3ED3F247A15E7E5425353933CF6C84ED9B279A33809F7B3C2C9B3E7243D';
wwv_flow_imp.g_varchar2_table(118) := '37E7555DA0D3F5EABE60B9C2BF6A0440D87DD41500C323EE3B376A8CB76ED92C7B76EE94969666CF7815F20556077852224358092000C21A39EC5E92805EADDDE9F6F79EB5DFD8D0207B77EF90550303B27EF5A0B4594E08E9D9B45CBB35BC649B613958';
wwv_flow_imp.g_varchar2_table(119) := '303D19B6BB1F66B3B995CD950800887397AE9AB1FBB4AB25CDCDCD3238D0271BD6AE923D3BB64943A3E90D70CD7D27417B4E2646879918780747C87E63AE8D0002C04687B45011D0A57EBA965BBB6EBD0C6F3027FF0F3DB657FA7ABAC43117FE4DE644D0';
wwv_flow_imp.g_varchar2_table(120) := 'DEDEE65AAC60CE9E57AEDF764D27211804DE3E7B41E62C3D35ED6D6D525F5F6F62EE485F6F8F3C653E03A954CAD3F85C365BEC09C8CCB98B0BCF4AC8008180114000042C2098531A013DF94F98AB34BD5AF3AAA1B9B9499E7CEC11E9EAB87BC24F98EEFF';
wwv_flow_imp.g_varchar2_table(121) := 'EECE2E6BD10BEF5D15ED62B66622B1A6044E9FBB282AD6DC8CE8EAEC289EFCE7D33B8CE8FBD0BE3DD2623E13F3C7DC9EF5B3353E32647A18B881901BA3A01DC71E3B0104809D0FA92120A0576577D6F97B77FB373535CA637B774B6747FB7D9E7576DE7F';
wwv_flow_imp.g_varchar2_table(122) := '6C61A6B7CFBE2B33E970CF0358E84FD45ECF9AD8DCB865EFA5E93427FC7BFDEE35BD407B76EF141D12BA37EDDEF7DA13A0AB03B2193E07F7B2E17DF8082000C217332C5E40E0CE84BFDBBEC6AE9B9A1B45AFF6BA9638F96B95AD4D4D62EB0E9E9E9A9691';
wwv_flow_imp.g_varchar2_table(123) := '31EFDB076B5D3CAA4FE0D2B55B929E75BF3A6F3557F9ADCD4B4FFCEBEBEE94271FDF2B3A34E465792E9B13BD93A40A4FAFBCA4D792006D7B1140007811223DB004F40B78626C44F40BD9CBC8A6C6467972DF234B5EF9CF97D5A580B6790039330E7CE9CA';
wwv_flow_imp.g_varchar2_table(124) := '8DF9EC3C07888076FB9F39FF9EE4F23957AB34B6F5F5EEE3FD3A1CF0E4A38F485BEBD2226161C5C5E100DD3638ED2E3816E6E73504403AC06700001000494441548248000110C4A8609327013DF9DF59E7EFDDEDDFAC57FEE68B5D4F00B68A751E405757';
wwv_flow_imp.g_varchar2_table(125) := 'A76B16FDD2BFF8DE3599B54C32732D4C424509144CEDA7CE5D10D117E6F552FF3B3B3B2499B47FE5759A61A047CC70800E152D55C7C263B94C5674E8299B59DE8D8716D6C1EBCA11A0666F02F6BF06EFF2E48040D509DCE9F6F7B7CE5FD77A7F68DF5E73';
wwv_flow_imp.g_varchar2_table(126) := 'E57F77C29FCDE0BEEE2E49EAB200974C27CEBE2B53D3CC0477C153B3C3197332BEF49EFB56C68EE3485767A72FFBBA8D5078EAF17DD2D858EF995F45A10A519D84EA99990C100818010440C002823976027AE53F31366CBAFDBDAFFCF52A4E67FB77B4B7';
wwv_flow_imp.g_varchar2_table(127) := 'DA2B5D90AAF303EAEADD77051C1D1D95B1C9F0EF96B7C0E548BCBC393C2AD3D3EE71A94BA5ACFB3CDC0BA1ADB5453E64868C5ACDF3BD69F7BED75B09EB0A14FD6CDE9BC6FB5A11A05D3F0410007E2891271004F40BD6EF3A7FFDE27EF2B1BDD2DAD2B22C';
wwv_flow_imp.g_varchar2_table(128) := 'DB53A93A69769928A615E93EFAD76E0EE94B1E0121303FFE9F35BD006E26B59A71FD9411016EE94B1DD72583BA51544B73D352C98B8EE9FC10ED096038601116DE049C000220E001C2BC3B0472D98C4C8C8DF89AEDDFDAD6525CEAD7DEE6FFCAFF4E2B77';
wwv_flow_imp.g_varchar2_table(129) := '7E2FB544F04E8AF96DC6982FBC179D5BE71A8F42FFBF60627252C7FF2D9EF476772F5AFF6FC9BA284987031EDFB7477405C9A28425DEE8B6C1E3A343A6778A39014BE0A9EA211AF3470001E08F13B96A49C07CC38F8F0E4BD6C7E4BBE6A62679F2B17DD2';
wwv_flow_imp.g_varchar2_table(130) := '51E2C95FDDECECE81071C4F5E7C2E5AB2C0774A553FD844C362BEF5E78CFB561C771A4C78CEB9B27D73CB6848EF63679C20C07B4F9F84CE96774727CD4BA1991AD2DD220504D0208806AD2A6ADE51378FFE49F497B4FBCD32FE8A71EDF2B2D4D8DCB6F67';
wwv_flow_imp.g_varchar2_table(131) := '41091DFFB575175FB8FC9EDC1C1E5B508297B524F0DEF5DB323EE1BE3F43AAAE4E746EC74A6C5411B06FF70ED1CF98573DE9991999303D014605786525BD2204A8D42F0104805F52E4AB0981A9897199B54CEE9A37AA4DBBFDF7EC92561F93B6E6CBB83D';
wwv_flow_imp.g_varchar2_table(132) := 'B734375B4F1899F49CBCFDCE45B7E21CAF22011DFF3F74FC94E42C4BF19ACD187EAADE7DFDBF5F733B3BDAE5515D2268EAF32A333B3D2D33D3935ED94887404D09246ADA3A8D43C0426076664AA626BCAFB47592D6773EF1B8B42F63B6BFA559D12BC6EE';
wwv_flow_imp.g_varchar2_table(133) := 'CE4E5B16397DEEBC8C8EF3056F855485C439D3FD7FF0D8DBE662BBE0DA5A5F6FAF388E654CC7B5E4FD091D1D6DC51B08B5347BF732E99C95F4CCF4FD9570A4A204A8DC3F0104807F56E4AC2281E2A4BF9161CF165B5A74CC7FAFD87678F3ACE49E0C7AAE';
wwv_flow_imp.g_varchar2_table(134) := '5835D077CFD1C56FCF5FBC2C378646171FE45DD5095CBE7A4B8687DD3F27C9BAA4F4F7F596D52E1D22DAF7C86EEF1B08194D32393E22BA4CB0AC06501904CA4400015026905453460266DC7F7A72C27A55A7ADD5992FF75D0F3F5C966E7FAD6FE1A3BDB5';
wwv_flow_imp.g_varchar2_table(135) := 'D55AEFDCDC9C9C387B6161115E579940DE7C4E8E9C386B3DC1EA157B97B96A2FB769DD9D1DB26BFB439248D8BF4273D99C684F80F93097DB04EA5B9200079743C0FEE95D4E4DE485409908CCA5677D8DFBEFD9B54306FA7BCAD4EAE26A9C84236B06572D';
wwv_flow_imp.g_varchar2_table(136) := '3EB8E09D2EF93A7DEE828C300CB0804A755FEAECFFA3274E591B1DECEBF7DCFED75A812571A0BF4FF6EC7CD892E34E920E0364B87BE01D18FC0E148144A0ACC1180818029366DC5F27779997AEFF1F7A708BAC5935E09A5E8E84358303D693C7051D06B8';
wwv_flow_imp.g_varchar2_table(137) := 'CD304039589752C7A5AB37E5D6ED21D7A27A75DEDF57198138DFE8BA35AB65D3C6F5F36F5D9FA727C74D2780191370CD4142390850C7F208200096C78BDC1526303B33E5B9DE7F60A05FB66ED9243A565F4973DA5A5BA4C53CDCDA48A7D3AC06708353E1';
wwv_flow_imp.g_varchar2_table(138) := 'E3F97C418EBC75D6FA59D11B3BB5B63457D412FD0CEE78E841F19A33929E999159F3D9AEA831540E81651240002C1318D92B47A090CFCBD4B8FD8ABAA9A941766EDB2A09D3455F394BEED6BC7A95FB3080E63AFBEE45191E735F83AE7978949F8076FFBF';
wwv_flow_imp.g_varchar2_table(139) := '79F28CB5E275AB5799CF49E5BFE2F40E83BB776C93BA64D26ACFD4F818BD0056422B4DA4FC720954FEAF63B916913FB60474DDB44E9AB201D8B26183B4B678EFCD6EAB6339697DBDDDD250EF7E57B84B57AEC8D59BEEB3D097D31679FD13B874ED96DCB8';
wwv_flow_imp.g_varchar2_table(140) := '79CBB5804E101D28F3EC7FD7C64C425363A33CB065B379E5FE5F5703CCB237803B2052AA4E00015075E434B81401BD89CAF4A4FD4ABAB9B959D6AD5DBD54F18A1DEB6C6B93AEEE2ED7FAA7A7A6E5D8A9775CD349283F01EDFE7FE3C419C965DDEF08D9D9';
wwv_flow_imp.g_varchar2_table(141) := 'D9218D0D0DE56FDC52E3968DEBA4A1C15D2C6AD1A98971C9E5DCEDD63C3C4A2340A9E51340002C9F19252A4040C747F50AC956F58E6D0F9475BDBFADADF9341D6A18E8775F47AE93152F5EBECAA640F3C0AAF03C97C9C891B74E59BBD30707FA45CAB3F7';
wwv_flow_imp.g_varchar2_table(142) := '8FF8FDD15E87877CF5024CF9AD927C10A82801044045F152B95F02E959FB8E697A4557FC52F75B6119F30DF4D8EF24F7DED56BF2DE8DDB656C91AA6C048ADDFF376EBA66D179227D7D7DAEE9954C58B36650BA2D3D46DA76263DAB4F3CCA4A80CA4A2180';
wwv_flow_imp.g_varchar2_table(143) := '0028851A65CA4A40AFFC7319F76E51C771E481CD1BC571AA7C49F7BE978D8D0DD26344C0FB6FEF7B9A9E9E96D78F9D945C3E7F5F5A900E246AC4AF9C0CB2B95C9175DEC2BAB7A747DA7C6CD55B4EBBE6EBAA4FD5C9A6F56BE7DF2EF99C333ED8862F962C';
wwv_flow_imp.g_varchar2_table(144) := 'C4410854800002A00250A97279043219FB9DFEDA5B5BA4CF72025E5E6BCBCFED388EAC375776AE250B22A7CEBC23D7023E195077CE73F5212409A3E353F2F2EB47ADD60E5478EDBFB5719338D0DB230D96F9072A783373F6CFBCA986FFCB2040D6D20820';
wwv_flow_imp.g_varchar2_table(145) := '004AE346A972112814642E6DFF32EC315DAA7A6555AE264BA967557FAFF952779FE075F3D6901C7D9BC980A5B05D4E99D7DF3C695D4F5F6F4EBC5D9DEE933697D356A979EB4C2F405F7F9F6B719D3732979E714D270102D5228000A81669DA5992402E9F';
wwv_flow_imp.g_varchar2_table(146) := '13AFABA1EEAECE25CB56F3602A95121522B6368F1C3F2913537CB1DB18AD246D7A362DFB0F1D13313D2E6EF5E83C91A64677A1E656AE9CC71DC7914123181DC771ADB6F89937E2D7350309CB2040D6520920004A2547B9B210D0EED0AC659F74BD9AEAE8';
wwv_flow_imp.g_varchar2_table(147) := '682F4B5B2BAD64EDEA41EBC63257AE5D93C327EC9BD3ACD48638973F7EFA825CB97ADD8A60C3DAC19ACD155968588F11ADBA41D0C2630B5FEB3C80280CC92CF489D7E1238000085FCC2265714ED7445BAEE8BACCC9DF369E5A4D18BD6628A2A7DBBD3762';
wwv_flow_imp.g_varchar2_table(148) := '2E3D27AF1F7D5B32D95C35CD8A455B33E6EAFFA58347C536F9AFABAB5DBA3A3A02C1A3A13E252DB66D88CD673EAF9F7DE167A504285F3A010440E9EC28590602BAFDAFAD9A9EAE2EA94B06E3639A3263BB1B3C66789FBF78494E9EBB647389B412089CB9';
wwv_flow_imp.g_varchar2_table(149) := '70454E9E3EEB5AD2711CD9B86E9D887BAFBB54FBA7ADA5D5DAA44DCC580B920881321108C6376B999CA19AF011C8E7DC97CE398E23ED6DADE238C1F9565FD5D72BB6AD81676666E4D5C3C7AD9BD4842F4AB5B5383D979103C7DE969CA567A5ABAB436CB7';
wwv_flow_imp.g_varchar2_table(150) := '6FAE85075E3722F212BFB5B0397C6D62F14A0824565298B2105829817CDEDE5D9EAAAB5B6913652D9F4C26E581073659EB3C79F69CBC73E99A350F89FE095CB93124078F1EB716D8B8768D2403D253346F68B2CE7E7320AFCFFE7C3D3C43A05204100095';
wwv_flow_imp.g_varchar2_table(151) := '224BBDBE08D8BA411DC791BA54D2573DD5CCB461ED6AD1FB12B8B539363A26BA5CCD2D9DE3CB2370E4C469EB6D7F75ACBDDFF4CC2CAFD6CAE7F612AFB99C5DFC56DEC2F0B780072B23800058193F4AAF9080AE89B65551970C560F80DAAA5FEC6B57AFD2';
wwv_flow_imp.g_varchar2_table(152) := '97AE8FE327CFCAF5DB23AEE924F823706368540EBEF196754865F37AEF9BF0F86BADBCB9EA53296B85790480950F8995278000A83C635AB01028142C73004C399D78679E02F75F054053A3FBDDE66EDEBC2587DF6249E04A0377ECD4BB72E386FB6D7FF5';
wwv_flow_imp.g_varchar2_table(153) := 'F3B16EDD9A95365391F22923001A1B1B5DEBD6210044802B1E1F096459290104C04A0952BE7402BA118A3E5C6A30230012D4FDEBDB5A5B64D386752E968BE817FB6B478E8B4E6073CD448295C0EDD17179EDC89BD63C6B570F4ACA63ACDD5A41051313C9';
wwv_flow_imp.g_varchar2_table(154) := 'A43436D4BBB650309F7DDB10986B41122050260208803281A49AE51328781449249222AA0224983F1BCC95A7E3B8AF50B872F5AA7CFBC0B1601A1F02AB8E9E7847CE5FB8E86A696343836CF45896E95AB80A097575759248BA7FC516F27933B4E1DE0356';
wwv_flow_imp.g_varchar2_table(155) := '051343DD04C6AF9C80FBA773E575530304224DA0BEBE5ED6AE59EDEAA32E717CE1C011B93532E69A8784A509E8FC896FBDFABA14F2EE3271D5AABEE232D1A56BA8FDD12673F5EF2E0F45726C0454FB20C5DC020440CC3F00B8BF32020F6C5C278984FB9F';
wwv_flow_imp.g_varchar2_table(156) := 'D1B5ABD7E45BAFBDB1B24662587AFFD1B7E5DAB51B56CFD70E0E5AD36B9DA89F0BC77197003A04A08F5ADB19CEF6B1BA1C04DCBFB9CA513B754020E204DADBDAA4BBBBDBD54BFD827FE5C061B97CFDB66B1E121613B870E586BC74E09028BBC52977DFAD';
wwv_flow_imp.g_varchar2_table(157) := '5EBD4ABA3ADBEF1EE0150420B06C0208806523A3000416103017789B4C2FC08223F7BD1C1B1F97AFBF7CF0BEE31CB89FC05C262B2FBE7E4C8687EC4B28376F586FED79B9BF668E448900BE94870002A03C1CA925C604067ABA65A0BFD79D8019C67EEDD0';
wwv_flow_imp.g_varchar2_table(158) := '1B72F6E255F73CA414099CBB74555E7DFD48F1B5DBAFEEEE2EE9EEEC704BE6380420E0930002C02728B241C08D403299902D9B368AE398EE00974C73E9B43CFDAD575D5239AC0466D273F2CD570FCBECECACBE5DF2A19B303DBCF501C37AC9640EC68200';
wwv_flow_imp.g_varchar2_table(159) := '4E968B0002A05C24A927D6047ABB3B65DD9A412B8313A7CEC81B27CF59F3C43951EFA278F4F8DB5604BAE94F6F57A7350F891080803F0208007F9CC805012B01C77164DB835BA4A1C17DE3978CB9C27DFAF957245F306302D6DAE2973831352D4F7FE365';
wwv_flow_imp.g_varchar2_table(160) := 'C96632AECE371AB69B74DDBF7B478B6B5912A243004FCA470001503E96D41473024D4D8DB269D3062B8577DE3D2FAF1EB15FE55A2B8868E29BA7CFCBBB17DD37FD51B71F3202ABB5A5595FF2800004CA40000150068854018179029BD7AD95F6F6B6F9B7';
wwv_flow_imp.g_varchar2_table(161) := 'F73DEBD2B6AF7CFD05999D9BBB2F2DAE0774CBDF67BEF5AAD836FDE9EC6C970D866D5C19E1F73C019ECB490001504E9AD4157B02A9549D6CDFF6A08823AE3F376EDC946FEE678BE07940AFE9A63F57AFCDBFBDEF59B7D3DDB6F54131A32CF7A571000210';
wwv_flow_imp.g_varchar2_table(162) := '289D0002A074769484C09204FA7B7A64DDDA354BA6CD1F7CFAF917E4D6305B04EBA63FCF7DFB15B1DD1467F5E0A0E852CB79763CC797009E97970002A0BC3CA90D02C52BD587B66C12BD7275C3313531297FF6F96724CE13026766D3F2D9A7BF29E3E313';
wwv_flow_imp.g_varchar2_table(163) := '6E98447B5494A5587A545C0B9300010858092000AC7848844069045A9A9B64D3C68DD6C2274E9E8EF57D029EDF7F54DE3E7DC6CA68EB035BA4B5A5C99A87C4B810C0CF72134000949B28F541E07D020F6E5C276D6DADEFBF5BE2A920F2F9679E972B37E2';
wwv_flow_imp.g_varchar2_table(164) := '779F00DD15F1EB2FD827FE35B7B6C886B5EE775B5C822887200081651040002C03165921B01C02BA27C0836628C0D67D3D3D39297FF395E72593CD2DA7EA50E74DCF65E4335FFD868C8D8DBBFAE1388E6C7FF081E210806B261262450067CB4F0001507E';
wwv_flow_imp.g_varchar2_table(165) := 'A6D408810F080CF6F7C9E0AA551FBC5FEAC58993A7E49BAF1D5D2A2992C7BEF6E2EBF2CEB9F356DF060757C9E0409F350F891080C0CA08200056C68FD2107F0DFF000010004944415410B012A8AB4BCA406F8F358FAE7FFFCC979E95F3EF5DB7E68B42E2';
wwv_flow_imp.g_varchar2_table(166) := 'E9F397E5F917F78BEE8760F347B7564E2498F9676314AF34BCAD0401044025A8522704161048FA3891E5B259F9F4579F17BD21CE82A2917AA99B1F7DEACB5F978989494FBF1CDBB8896769324000027E082000FC50220F044A20A057B927CF9C93236F9E';
wwv_flow_imp.g_varchar2_table(167) := 'F055FAF49977E48503C73CAF8E7D5516C04C5F797EBF5CBCF49E2FCBDE3C71524E1A1EDA3BE2AB0099224D00E72A4300015019AED41A7302B95C4E8E9D382567CD58B70A013F3834DFE79FFEBABC1BC1A1803317AE98AEFF57C5B6E1CF4246CAE2ECB90B';
wwv_flow_imp.g_varchar2_table(168) := 'F2D6A9D392C9641726F11A021028130104409940520D04E609E809EBF523C78A57BB7A229B3FEEE7393337279F7FFA9B323533EB277B28F2CCA6E7E44F3FF315999D4D2FCB5E65F7EE85CB72F8D87199335C965598CC1122802B95228000A81459EA8D25';
wwv_flow_imp.g_varchar2_table(169) := '81B1B1097969FF01B9796BA864FFDF3E7D56BEF1F22189C22E81EAC3E79F7D41AE5D2B7D82E38D9BB7E5D5D70FCBF8B8F7DC8192A1531002312480008861D071B932044646C7E4C091376462727AC50D7CF1D9E7E5D0F1D32BAEA7D615BC74F0B87CEBE5';
wwv_flow_imp.g_varchar2_table(170) := 'D7566CC69839F9BF76F888DC1A1A59715D54102E02585B39020880CAB1A5E61811B872F59ABCF2DA21992953D7BD4E7EFBCBCF7E454E9FF737692E88A8DFBD7C5D3EF5A567245BA64D8E6666D272E0D011B97AFD4610DDC52608848E0002207421C3E020';
wwv_flow_imp.g_varchar2_table(171) := '11D0716A9DAC76E4CDB72597CFFB32ADA9A5555ADA3BA4A1A9C99A7F62724AFEFA0BCFC88D105EF58E9B5E903FFECBCFCBCCB47D2E43229128B2686C6EB6B2984FCCE5F272F0E89B72E6DC79C9E70BF387798E2C011CAB2401044025E95277A409E895ED';
wwv_flow_imp.g_varchar2_table(172) := '5B27CF1497ABE5FD9CFC1D91E6B67669EBEC9696B60E69EDE8123D01DA205DBC7C55BE60C6D0273D4EA4B63AAA9DA6EBFD3FF11FBF20B76EDDB2369D4826A5B377A0C8A2ADB3A7F86C2D309F68CEFB274FBF233A574263307F986708406079041000CBE3';
wwv_flow_imp.g_varchar2_table(173) := '456E081409E88CF6236FBE25EF5EB8E46BDDBEE338D2DED523ADED9DC5F2FA2B99AC2B8A01C731CA400FB83C5E3BFC863CF7E2EB92CD05FF7E01DA0BF2B7CFBE286F9F3AEBE2CDDDC36D9D5D52974A150F388E53EC09E8E8EE15C7B1F3281630BFCE9DBF';
wwv_flow_imp.g_varchar2_table(174) := '28878FBDC93241C322AAFFF1ABB2041295AD9EDA21103D025353D3B2FFF051B976FDA62FE7927549E9E8E993C6A696FBF23734354B536BDB7DC7171D3057BC5F7EEE9B72F8AD338B0E07ED8D0E87EC3F7A42BEFEC22B9EA6351B9F1B1A9BEFCBA73C9623';
wwv_flow_imp.g_varchar2_table(175) := '02AEDFB82DAF1E3CCC0A81FB48720002DE041000DE8CC801810F08DC1E1E9117F61F90F1B1890F8ED95E245375D2D9D32FF50D8DAED95ACD70407DA37B7AB1A011017FF5F9A7E5F4BB978B6F83F8EB9D4B57E52F3EFB65D1098C36FBEAEAEB17F584C83D';
wwv_flow_imp.g_varchar2_table(176) := '3FF58D4DD2DDBF4A927575E2E76774745C0E1E3DC60A013FB0429507632B4D00015069C2D41F190257AFDD90FD078F4866CEDFCE74F5E6A4DEDDAB27B23BDDDCAE204C9777BB1903F73AE1E91EFA7FF1B9AFCAF55BC15B0A373631257FF4E79F91B974C6';
wwv_flow_imp.g_varchar2_table(177) := 'D54D4DD0390F6D1D5D62FAF9C5F693AC4B49676FBFE744C9F93A264DAFCCC1C36FC8B51BFE7A65E6CBF10C8138134000C439FAF8EE8B40C15C7D9F3977410EBD715CF2397F33FD75867F67779F38097F7F628964B23806EE38F6F1EF2B46847CE6E96FC8';
wwv_flow_imp.g_varchar2_table(178) := 'C4D48C2FDBAB916966362D7FF2D75F94919131CFE6741264AABEC1339F66D03912ED4618F95D2190C966E5E09137E5DC854B5A9C47C809607EE509F8FB76AABC1DB400814012D059E66F9F3C25274F9F151DE3F663A44EF4EB30277FAFABDC7BEBD23902';
wwv_flow_imp.g_varchar2_table(179) := '2D6638E0DEE3F7BE3F72EC843CF3ADFD3217803DF2D5862F3EF792AF497FBAFCB1B9B5FD5E77ACEF5540B577F54A6B47A7885D1B89FE688C4E9C3C237A33215F2B33B4100F08C494000220A681C76D6F02737319397AFC84BC73C1DFB87BB17BBBB3ABB8';
wwv_flow_imp.g_varchar2_table(180) := 'D4CFBBF6A573E884401D3A583AF5EED1AF7DF34579E6DBFB256D6CBC7BD4FECA71CC1954BB33ACD94C1E6BFADD44DDE3FF6BDF7E4D9EF331E92FD5D020C5AEFFBBC597F54A8543871102CAD8ABA08A80F317DF33B17B5B3219FB9084575DA4D78A00ED56';
wwv_flow_imp.g_varchar2_table(181) := '830002A01A9469237404744CF9E5038744C7FDFD18AF27265DE6D7D4D2E627BB6B1EC77144AF7813C9A46B9E62821996F8E233CFCB273FF355B931342ABAE77EF1B8E597A95AB447C3358B539064D2FB2B219F2FC8A819F3FFFF3FFD15F9C233DF10AF49';
wwv_flow_imp.g_varchar2_table(182) := '7FC9BA3A69EFEC165103A4F41F5D21D0DEDD2B5A9F9F5ADEBB724D5E79FD884C4D0767B8C48FDDE48140B50878FFB557CB12DA81404008E88D7C74CB599D74E7C724BDBAEDEA5B25F58D4D7EB27BE6492412A262C2711CCFBC070E1F93DFFA37FFAF7CC9';
wwv_flow_imp.g_varchar2_table(183) := '74C3EBBD032E5FBB29E39353E6043DB9E8A193F4B4B69959F793613E5790ACB9629E9E995D547674625286CCF8FE852BD7E5F56327E5B34678FCFAEFFC911C3A7ADCD33E318DB699937FB22EE59DD7470E5D4DD1DD3F28A9FA7A1FB945C6C6C6E5D5D70F';
wwv_flow_imp.g_varchar2_table(184) := 'C9F0C8A8AFFC640A0601ACA80E0104407538D34A180898ABEAEB376ECAD137DF92499F93EC74829A9EAC93E62AB79C2EEA89AED50C27F8A97372725ABEF4EC37E5DF7FF26FE4D7CC89F9977EED77E5977FE3F7173DFEE7DFF83DF9B9FFE5B7448C8F6E75';
wwv_flow_imp.g_varchar2_table(185) := 'EA24BA5FFBDD3F96FFE95FFCF6A2B25AD73FFB3FFE407EF3F73E217FF4679F96AF3DFF725164B8D5B3F0786B5BA77509E4C2BC7E5F3B8E23BAB452275AFA29333D3D2BAF1D3C7A678580C57F3F7591070251228000885234F1A57402E6C4F0CEF90BA257';
wwv_flow_imp.g_varchar2_table(186) := 'D43AB6EDA7A2A6965669EFEC31DDE6757EB22F3B4F5373ABEF6570F756AEE3E0F73EEECD637BBF92B2F3F56A97BDCEFA9F7F5FCE679D1CA8132D35067EEA5571A32B04DED1150226D67ECA90A7560468B75A041000D5224D3B812590CFE5E4E85B6FCB09';
wwv_flow_imp.g_varchar2_table(187) := '1FDBD7169D30DDDAEDDD3DC56D7CC55C8D168F55E8579B11187EAF742B644249D5D63736AE68D29FDF46DBCCF0424B7B87AFEC2A6ADE3E7546DE3CF1B6EFE59CBE2A261304424A000110D2C061767908E898F7E1636FC9A5CB577C55E8388EE86C745DB2';
wwv_flow_imp.g_varchar2_table(188) := 'E7ABC00A33E97C80D6F62ED113EA0AABAA5AF1547D7D511C259249A9C68F2E9DD4879FB654049CBF7445DE30826F2EC30A013FCCAA9D87F6AA470001503DD6B4143002BAA7FF8BAF1D92AB3EF7F47712CEFBBBD33557D5139D5FA0DDDD61E809D039113A';
wwv_flow_imp.g_varchar2_table(189) := '3E9F4CD6559591F60274F50D88DE77C14FC397AF5C93570F1C969999B49FECE48140240920002219569CF222707B68B8B8ADAFDF99FEBAA77F57EF80A4EA1BBCAAAE48BAE338A2CB0375431C15221569640595DEE9A9E83457FE3DA2E3F32BA8AAE4A21A';
wwv_flow_imp.g_varchar2_table(190) := '9B8EEE7EDFBD2563E313F2E2FE033232EABD8361C94651709904C85E4D0208806AD2A6AD4010B871E3961C7AE34DDFEBC3EB1B9B44F7F4AF4BD54B2D7F1CC791E28638DD7DA237D4A9A52D0BDB4E3534487B77AFE8843FC771A4963F75A994B477F6F816';
wwv_flow_imp.g_varchar2_table(191) := '01B3B36979EDD051B97EEB762DCDA66D08D48440A226ADD228046A4440F7893F70E498A43D6E5A336F9E9ED43ACCC9AD5657B5F3762C7CD62582DD7DAB44D7C3B775758BCE84D793B05E854B25CFBFA6EE4432593CB96A9BDA76CFC0A068CF88DA2401F9';
wwv_flow_imp.g_varchar2_table(192) := '492493A2F761D0D8F93149777C3C70F0A89CBF78593C374AF45321794A2640C1EA124000549737ADD588402E979737DF3E2DBA4FBC4E04F332C3719CE2CD795ADB3AC471CC99CFAB400DD2F56A57970AB67674152726769A210A3D1977F6F449474FEF07';
wwv_flow_imp.g_varchar2_table(193) := '8FCEDE7ED1637AD2160F57348F0A0B2DB3A80E53A78EEDEB43AFB0B54D6D3B59A60D7ECA8ECFC44C63D7A67B2978F83CDFF69B274EC9C933EF4836EBEF6E8FF3E578864058092000C21A39ECF64D203D372747DE3C2EE72F5C325778DE8BC0758CBD4D97';
wwv_flow_imp.g_varchar2_table(194) := '979993BF981389EF866A94D1711C492493A28240C7C175C8A2A1B159E61F7A755E6F8631F48A3869D9B0C8711CD1D9F45A8F966958588729AFC7342D914C1A2C8E04FEC7F8D3D4D226BA5193E3F8B3F7ECB9F372FCE469C904E0464B81E75B7603A9B0DA';
wwv_flow_imp.g_varchar2_table(195) := '041000D5264E7B5525303D3D2DAF1F7A43AE5EBBE9AB5D3D41EA557463738BAFFC61CA947012A20F9BCDF97CDE961CCA345DB2B99C1502972E5F95D70E1F91D9D9D950FA8BD110F04B0001E09714F9C245C05CE80F0D8FCA8BFB0FC9B0CF59DEF50D0DA2';
wwv_flow_imp.g_varchar2_table(196) := '5DDCB59EEC5731D07A15AC0F4B038542F40480BAAB31BD13DB94BEF57C0C0F8F156F2474F3F690675E32948700B5549F0002A0FACC69B1C204F42AF6E2E5F7E4C0A1A3924EFB5BE75D6FBAB83BCD18BAF60054D83CAAAF1181645DAA38613155EF6F35C7';
wwv_flow_imp.g_varchar2_table(197) := 'E4E4941C3E7A5CDE397F919D036B14339AAD2C01044065F952FB4A08140AE2987F7EAB2898FC2323A3F2CA8143F2C65B2745F77FF753B6B9B5CD5CF9F7F9C94A9E9013701209E9E8E917157C7E5CD1DD0275E2E8AB878E887EB6F433E6A79CE62998DE94';
wwv_flow_imp.g_varchar2_table(198) := '82F94CEA6B1E5E0448AF050104402DA8D3A62F02599FE3D1FA253B36362EBAA5EF8BFB0FCAF088FF8D5D5A3B3AA5B5A3CB973D648A06015D2EA9AB2274F740C7717C39353434521C123866846571F3A88277B1B94C5674F589774E7240A036041000B5E1';
wwv_flow_imp.g_varchar2_table(199) := '4EAB3E08E4CD15D40D33063B393D2B53E63139932E3E8F4D4C8A8ECD5EB87459DE3E795A0E1E79A3B8ABDF95ABD77DD47A274B22992C5EF5EBC63A778EF03B6E045ADA3AE4CE1E0FFE44402E97938B97AF143F6BAF1D3A2C274F9D29DE43E2C6AD21199B';
wwv_flow_imp.g_varchar2_table(200) := '9892E9F73F9FBABDB0AE22B87AE3A6F9BCCEC40D6B49FE52A836041000B5E14EAB7E0898ABACC3C78ECBCBFB5F97970F1C94575E7B5D5E7CEDA0BC64DEBF76F0A81C7BEB949C3D7F49AEDDB82DE939FF3776D15DF4F48BDF6F37B01F53C9134E02FA1958';
wwv_flow_imp.g_varchar2_table(201) := 'CEE440F57266362D376E0DCB99772FCAD1E36F17E79ABCB4FF80BC681EFA397DD17C4EBFF1D2AB469C9E910C371C52643C024A000110D0C060D61D02857CA138916F766656F431373B2BB96CCED77AFE3B352CFE9DAAAF2F5EF5A5EA1B1627F02EB604F4';
wwv_flow_imp.g_varchar2_table(202) := 'B3A082508561291074084A3F9369230CF433AA8F39F35A8F97525FFCCAE071AD0820006A459E76AB4AC0719CE2CE7EC599FEC9BAAAB64D63C12730BF4240374B721C27F806632104CA40000150068854511A01FD9A35BDFCA5155E4629BD935F474F5F71';
wwv_flow_imp.g_varchar2_table(203) := '973BC7D1569751384259BD3C771C471CC78990C7CB73C5711C696DEF2CEE1C98B4EC98B8BC5ADD73EBA64C8E135FDEF36478AE1D010440EDD8D372A50998EF56BDA2EBEE1B14DDC6B6D2CD05BE7E8F934D2299340280AF8486A666E9EA5B254DAD6D22E6';
wwv_flow_imp.g_varchar2_table(204) := '332415FA49A6529248242B543BD542C09B40C23B0B3920502102E6845457812BAD443259ECEEEF5BB5B67845E73815FC16AF109A4A559B48B8FFC9EB6E7949C3AE526D87A95EE5D4D6D1253D03AB8B775BD4F7E5B63F6986A212C9B80B807253A5BEE510';
wwv_flow_imp.g_varchar2_table(205) := '70FF36584E2DE485408904F46ACB71CA7082365524537532BFA94F4B5B87E8A62F259A15D962CA7B29E71CC729B213F3BC547A5C8FE949BAADB35B7408A9A9A555124973C276CA4343EF37E13865AAAC3C26514BCC0820006216F0A0B9DBD0D82CEDDD3D';
wwv_flow_imp.g_varchar2_table(206) := 'D2D8DC2CC57157FD3EF4783809C7E44D9A6EFD86E2D5595B57B7F4F40F9AC76AD14D7DF44A56F8599280DE184767BC3736B748AABEDE70AC1315057A8283DB92C88A0753F54119BAEB00000867494441540DA242A0D7F408E867ADADB3ABF8D94B353418';
wwv_flow_imp.g_varchar2_table(207) := '8649A39B1C11F3DFF6701CC7E4BDC35B372262584A44F8A9290104404DF1D3B812288A80AE5ED1EED6FED5EBC5EBD137B8CEE45D233AA35FBF949B9A5BCD176B4AABE2E183809EF0DBBB7A8AE3DCCA5C050127231FE0344BF1249E3227FFB6A220D03B47';
wwv_flow_imp.g_varchar2_table(208) := 'F60CAC91BED5EBBC3FB7264F8F111045DE8D4D5A1B0F08D4940002A0A6F8691C021080405C09E077AD0920006A1D01DA87000420000108D4800002A006D0691202108040DC09E07FED0920006A1F032C80000420000108549D0002A0EAC8691002108040';
wwv_flow_imp.g_varchar2_table(209) := 'DC09E07F100820008210056C8000042000010854990002A0CAC0690E02108040DC09E07F30082000821107AC8000042000010854950002A0AAB8690C02108040DC09E07F50082000821209EC8000042000010854910002A08AB0690A02108040DC09E07F';
wwv_flow_imp.g_varchar2_table(210) := '7008200082130B2C81000420000108548D0002A06AA8690802108040DC09E07F9008200082140D6C8100042000010854890002A04AA0690602108040DC09E07FB008200082150FAC8100042000010854850002A02A98690402108040DC09E07FD0082000';
wwv_flow_imp.g_varchar2_table(211) := '821611EC8100042000010854810002A00A90690202108040DC09E07FF00820008217132C82000420000108549C0002A0E288690002108040DC09E07F100920008218156C8200042000010854980002A0C280A91E02108040DC09E07F30092000821917AC';
wwv_flow_imp.g_varchar2_table(212) := '8200042000010854940002A0A278A91C02108040DC09E07F50092000821A19EC8200042000010854900002A08270A91A02108040DC09E07F70092000821B1B2C83000420000108548C0002A06268A91802108040DC09E07F90092000821C1D6C83000420';
wwv_flow_imp.g_varchar2_table(213) := '00010854880002A04260A91602108040DC09E07FB0092000821D1FAC8300042000010854840002A02258A91402108040DC09E07FD0092000821E21EC8300042000010854800002A00250A91202108040DC09E07FF0092000821F232C8400042000010894';
wwv_flow_imp.g_varchar2_table(214) := '9D0002A0EC48A91002108040DC09E07F18082000C210256C8400042000010894990002A0CC40A90E02108040DC09E07F38082000C21127AC8400042000010894950002A0AC38A90C02108040DC09E07F58082000C21229EC8400042000010894910002A0';
wwv_flow_imp.g_varchar2_table(215) := '8C30A90A02108040DC09E07F78082000C2132B2C85000420000108948D0002A06C28A90802108040DC09E07F98082000C2142D6C8500042000010894890002A04C20A90602108040DC09E07FB8082000C2152FAC8500042000010894850002A02C18A904';
wwv_flow_imp.g_varchar2_table(216) := '02108040DC09E07FD8082000C21631EC8500042000010894810002A00C10A90202108040DC09E07FF8082000C217332C86000420000108AC98000260C508A90002108040DC09E07F18092000C218356C86000420000108AC900002608500290E01084020';
wwv_flow_imp.g_varchar2_table(217) := 'EE04F03F9C041000E18C1B564300021080000456440001B0227C1486000420107702F81F56020880B0460EBB210001084000022B20800058013C8A42000210883B01FC0F2F010440786387E510800004200081920920004A46474108400002712780FF61';
wwv_flow_imp.g_varchar2_table(218) := '2680000873F4B01D021080000420502201044089E0280601084020EE04F03FDC041000E18E1FD6430002108000044A22800028091B8520000108C49D00FE879D000220EC11C47E08400002108040090410002540A30804200081B813C0FFF0134000843F';
wwv_flow_imp.g_varchar2_table(219) := '86780001084000021058360104C0B291510002108040DC09E07F14082000A210457C800004200001082C9300026099C0C80E01084020EE04F03F1A041000D188235E4000021080000496450001B02C5C6486000420107702F81F15020880A844123F2000';
wwv_flow_imp.g_varchar2_table(220) := '0108400002CB20800058062CB242000210883B01FC8F0E0104407462892710800004200001DF041000BE51911102108040DC09E07F94082000A2144D7C81000420000108F8248000F0098A6C10800004E24E00FFA345000110AD78E20D042000010840C0';
wwv_flow_imp.g_varchar2_table(221) := '170104802F4C6482000420107702F81F35020880A845147F200001084000023E0820007C40220B04200081B813C0FFE8114000442FA67804010840000210F0248000F044440608400002712780FF51248000886254F109021080000420E0410001E00188';
wwv_flow_imp.g_varchar2_table(222) := '6408400002712780FFD124800088665CF10A02108000042060258000B0E2211102108040DC09E07F54092000A21A59FC82000420000108580820002C704882000420107702F81F5D020880E8C616CF20000108400002AE041000AE684880000420107702';
wwv_flow_imp.g_varchar2_table(223) := 'F81F65020880284717DF200001084000022E0410002E60380C01084020EE04F03FDA041000D18E2FDE410002108000049624800058120B0721000108C49D00FE479D000220EA11C63F084000021080C0120410004B40E11004200081B813C0FFE8134000';
wwv_flow_imp.g_varchar2_table(224) := '443FC67808010840000210B88F0002E03E241C80000420107702F81F070208803844191F21000108400002F7104000DC0384B710800004E24E00FFE3410001108F38E32504200001084060110104C0221CBC81000420107702F81F17020880B8441A3F21';
wwv_flow_imp.g_varchar2_table(225) := '0001084000020B08200016C0E02504200081B813C0FFF8104000C427D6780A010840000210F8800002E00314BC80000420107702F81F2702088038451B5F21000108400002EF134000BC0F822708400002712780FFF12280008857BCF116021080000420';
wwv_flow_imp.g_varchar2_table(226) := '502480002862E01704200081B813C0FFB8114000C42DE2F80B010840000210300410000602FF21000108C49D00FEC78F0002207E31C763084000021080802000F81040000210883D0100C4910002208E51C7670840000210883D010440EC3F0200800004';
wwv_flow_imp.g_varchar2_table(227) := 'E24E00FFE349000110CFB8E3350420000108C49C000220E61F00DC870004E24E00FFE34A000110D7C8E3370420000108C49A000220D6E1C779084020EE04F03FBE041000F18D3D9E4300021080408C092000621C7C5C870004E24E00FFE34C000110E7E8';
wwv_flow_imp.g_varchar2_table(228) := 'E33B0420000108C496000220B6A1C771084020EE04F03FDE04FE13000000FFFF0B5A2BF80000000649444154030067A31FA5A04B1E140000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(20751397070875680548)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/files/logo_art_one_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000032000000127080600000051EA27F9000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400002C4249444154785EEDDD799494D581';
wwv_flow_imp.g_varchar2_table(2) := 'FEF1A7B6AEAEEEAA5ED84156014194CD082A28204B4405D1282E89334926EB24132789991327C1184D9C64F28B264E329393D5CC24C6B8C51550141489A0826CA228A02008C8DA4B755777D7F6FEFE6848E095865EAAEEFBBE55DFCF397DBA73E9E3E9D4';
wwv_flow_imp.g_varchar2_table(3) := '5B75EF7DEEEA936409000000000CF0DB0B00000000205F0820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C218000000000308600020000';
wwv_flow_imp.g_varchar2_table(4) := '00C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C01802080000000063082000';
wwv_flow_imp.g_varchar2_table(5) := '0000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C218000000000308600';
wwv_flow_imp.g_varchar2_table(6) := '02000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C01802080000000063';
wwv_flow_imp.g_varchar2_table(7) := '0820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C0189F24CB5E0800F97676554091A0CF5E9C77BB1359';
wwv_flow_imp.g_varchar2_table(8) := 'ED4964EDC50000C010020800476CBEB24A232B03F6E2BCBB6D7D42776C68B21703000043588205000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000';
wwv_flow_imp.g_varchar2_table(9) := 'C018020800000000630820001CD13DECB31701008022400001605CC82FF528A5FA0100A018D10300605C9F885FCC7F0000509C0820008C3BAD8CAA07008062452F008071D3FB84EC450000A04810400018376F6089BD0800001409020800A3FA95F935A1';
wwv_flow_imp.g_varchar2_table(10) := '47D05E0C00008A0401048051D70F2E61033A0000458C0002C09858C8A75B4647ECC50000A08810400018F38DB322EAC9FD1F000014357A02008CE857E6D7D7CF2AB517030080224300019077E1804F8F4C8B291A64F7070000C58E000220EF7E7541B9CE';
wwv_flow_imp.g_varchar2_table(11) := 'EFC9C957000080000220CFBE3D26A27F1C1AB617030080224500019017217FEBCCC7F7C797D9FF09000014310208809CEB1EF669C9AC0A7DEE0C369D030080E3114000E44CC82FDD7466A9DEBAAA5AD3FA84ECFF0C0000400001D075A5019F6E1812D6E6';
wwv_flow_imp.g_varchar2_table(12) := '2BAB74CFC472F50873DA15000038310208800EF349EA1BF1EBC6D3C37A785A4C07AEAFD69FA644353416B0FF2A0000C0717C922C7B21F2EB0F1745D5234CF6B34B5B963E68B2B42791D59E44566FD565F4D2FE94D22E7E8786FCD294DE210DAF08A85FC4';
wwv_flow_imp.g_varchar2_table(13) := 'AF7E657EF58EF814F4796306E09ECD4D7A7A77CA5E7C42436301FD694A54FDCAFCEA13F1CBAB577A6CADCFE89D78D65E9C77DFDF98D04BFBD3F662E4804F52FF72BFCEA8086840B95F15219FA2419FA2B6EFB150EBCF6501299995E229ABF52B7DE47BCA';
wwv_flow_imp.g_varchar2_table(14) := '52C331FFFB83A6ACB6D667B5A321A38C8BEBA1AEF8E28852CD1B50725C596D32ABBD4D96F63665F57E63562F7C90D2DEA6CE7D666E1D1BD1A49E85B91C33956D7D8DF624B2DAD36469736D5AAB0EA40BF6BD625238D0DAC0B4F062162C02880376CFAF56';
wwv_flow_imp.g_varchar2_table(15) := 'BF3202487BD4242D2D7C3FA9477726F5E4AEA4529D6B03732A1CF0E9CA01215D39B044979E56A2CA128FF6C4257D7E55A37EBDA5D95E7C42E3BB05B5766EA5BD18ED74CD0B713DF25ED25E8C0EE81BF16B784540C32B5AC346EBCF010D8DF91539D261C9';
wwv_flow_imp.g_varchar2_table(16) := '876456DA1ECF684BFDD1AFECDF7EDE937041A5D405F74C2CD74D679EFAB088D507D37A6257527FDE9ED4B678C6FECF6DFACBC5315D35F0F88053C80EB6587A6A57528FED4C6AD16E77B4596E501AF06948D4AF21B1808644FD3AFDC8F7BE11BFCA833E95';
wwv_flow_imp.g_varchar2_table(17) := '07A5F2A04F6547BE8E7E9C3396D4986E1D1868485B7FFBB92E65E9DD78565BEB33DA7AE4B3F85E6356597AB49E4100710001A473DE8967F4ADB5093DB8C3994E9C4FD28D43C3FAFEF8320D2C2F8CE74700318700D27167550534BD6F4817F709696AEF90';
wwv_flow_imp.g_varchar2_table(18) := 'BAB9706F514DD2D28A7D292DDB9BD2F31FA4F47A4DC6538D6A7B03C851194BFADDD666DDB1A149EFB7237C155B0039D696FA8C6E792DA1C776263DF59EE82ABF4F3ABB2AA0C9BD42BAB05750937A853428EA57BE3FBDC9ACF46E3CA3376A337AE1839496';
wwv_flow_imp.g_varchar2_table(19) := 'EE4D69735DFBC332CC2280388000D235AF1C4CEB9F57356ADD6173CB59CEEF19D4FF9C5FAEF1DD0AEB366F028839049053F3499AD627A44F0E0B6B76BF907A47BC574F1E68CEEA993D29FDEFB6162DDD9B727D03DBD100725473C6D28FDF68D6EDEB1327';
wwv_flow_imp.g_varchar2_table(20) := '5D265BCC01E4A85507D2FAD2CB8D5A6FB0CD32AD7F995FD70D096B66DF902EE81974CDCA803D89AC961D09234BF7A6B4ABF1D4A1196610401C4000E9BAA68CA54FFDB5C1C86CC8A78685F5CB0BA22A29C0474600318700D2B681E57E7D6A58589F1A56AA';
wwv_flow_imp.g_varchar2_table(21) := '21D1C2F9A0ED68C8EAF7DB9A75EFB616ED7469C7A7B301E4A8A57B53BA7E795C075B4EDC952080B44AA42D7DF2AF0D7AB880EA80EA129FE60F0EEB13A797E8A2DEA1BCCF70E4C28BFB52FAE596163DF25E92FD250E2B9C9A1E452512F0E981A931DD3EAE';
wwv_flow_imp.g_varchar2_table(22) := '2C6F959EDF27FDF8DC32DD3BB930C307E0B49195013D3835A6ED5757EBF6716505153E246970D4AFEF8E2BD3F6ABABF5D0B498465616DE297133FA86B4664E95C65417DEFFB75C2A0BFAF4D0B498BE3BAE4CFE7C355A865CDC27A4C7A7C7F4C175DDF4CB';
wwv_flow_imp.g_varchar2_table(23) := '0BCA35C523E1436A3D34E6BE8BA2DA3DBF5A774D28D78802FC4C7A4561D5F6283ADF191BD11DE3CBECC539F19309E5BAF9AC88BD1840170D8AFA75EFE4A836CDABD2FCC1259EEF909D8ADF275D33A8449BE655E9DEC9510D2AB0A03528EAD733B32A0A66';
wwv_flow_imp.g_varchar2_table(24) := '6F5C3EDD3636A2DBC7E5A7CDCAB7CBFA97E8A54B2BB5EC920A5D31A0C4D30373DDC33E7D7D54A9DEBAB24ACF7DB442137A14D6F26A2FF0F0DB0768B5604C44F307E7768AFF9F8687BBB42C01C08795077DFAC984726DB9AA5A9F1A16FEDB4937C522E06B';
wwv_flow_imp.g_varchar2_table(25) := '5DD2B9E5AA6AFD6442B9CABD7A96F509F489F8B57066852A4285F3FF295F168C89E8BA1CB759F9E29374F5A012AD9D5BA98533629AD4ABF03AEA33FA86F4CAE595BAEFA22821DA205E691484DF4F8E6A5C8E36885FD033A85F9C1FB51703E8820B7B05B5';
wwv_flow_imp.g_varchar2_table(26) := 'E18A4A7D7554A9A7474E73A1C42F7D7554A9365C51A90B0BA843777655EB5D41449053FBFD85517DA4BBBB9FFDA8AA805EBCB4520F4F8B15DC012C763E491F3F3DACB7AFAAD20FCE2923481B50E4CD000A4559D0A75F5D506E2FEEB0804FFACD24F67C00';
wwv_flow_imp.g_varchar2_table(27) := 'B9120EF8F4FFCE2DD3F2D9951A1A63BDF5B186C6025A3EBB523F3EB7EC6F17AF79DDE5FD4B348F4DE7A7541AF0E9D793CA5DB9FCB034E0D39DE79469FDDCAA820AC8ED511AF0E996D1116DFD58D5872EE8446ED1CD42C198D023D8E5A5589F1A16D6A82A';
wwv_flow_imp.g_varchar2_table(28) := '3A49402E0C89FAB5664EA5BE7156C4951D2D37F0FBA49BCF8A68ED9C4A9D5E2001AD9002553E8DEF16D4F543C2F66247CDEC1BD2A67995FAD6E8884245DC43EC55EAD763D363BA676239039279C2CB8A8272E7F8327576597524E0D3773DBA3910709BF1';
wwv_flow_imp.g_varchar2_table(29) := 'DD825A7959A5CE26D0B7CBA8AA80565E5A51104B5D86C602FACA48F6D0B5C79DE3DD11D67C92EE1857A6251FAD60A6F218379D59AA5597556A18AF49CE1140505086570474D5A0CECD827CFCF412F5E77E16A0CB66F50B69F9EC0AF5F1E045824EEA1DF1';
wwv_flow_imp.g_varchar2_table(30) := '6BF9EC0ACDEC1BB2FF93E77C614498BD20ED3038EAD7FC4EB659B95259E2D3133362BA756C84677602E7746FBD03CB6DB3555E47EB8082736527D76D5EC9BA65A0CB6E3C3DAC85332A14631367A7C4423E2D9A59A11B3CDED919160B68BCCB3759BB8593';
wwv_flow_imp.g_varchar2_table(31) := '6DCFA8AA80565F5EA939FD9DFB1BBC2016F2E9FE2951FD2BA763E60C010405E7B2FE251D5E86551EF415C4A823E0A4B9034AF4BF17468B7AED782E84FCD21F2E8AEA328F770ABD72D4ACD3669F1652A903CBB0A6F66E3D7E767805CB8BDAEBA713CBF5EF';
wwv_flow_imp.g_varchar2_table(32) := 'A3B91F2C1768265070AA4A7C9ADAA7636162563F671A00A0508CED16D49FA644D96C9E23019F74FF94A8CEF2F01E1AAF072853CA833ECD303C0036A577480B67C614EDE8681DF41FE794E97B79BA00B99810405090465777ACD11ED3C1DF07F077BD237E';
wwv_flow_imp.g_varchar2_table(33) := '3D319DCE4CAE55847C7A7246857A967AB3A91E1AF3B3A7A09D4C1ED67061AFA016CE8C15D44598A62D1813D18FCF25847485376B35E014FA7570F36BDF0EFE3E8056A5019F1E9F1EE306E13C1912F5EB2F17C73C79146824E0536FEAD676E96BE80094C9';
wwv_flow_imp.g_varchar2_table(34) := 'BD825A3CAB82C1821CB8F9AC88BE368A3D219D65E61D0F18D6D1CABC5F077F1F40ABBB2794E9BC1E6C36CEA70B7B05F5A373BB7ED1AA1386C6A85BDBA3A383669D312C16D0C219848F5CFAD1B9E5BAB8834BBED12AFFEF78C0011D9DD1E0B850A0E32EEC';
wwv_flow_imp.g_varchar2_table(35) := '15D41747300268C25746967A32E8F5F2E8F231D3F23D08561EF4E9D1E9315596103E7229E8931E9CC60C7067F08AA120453AB8A19C0DE840C784033EFD6A529435FE86F87DD2AF2771C258A10AE7790BC86F27478DEE3329263DC23E3D7A718C7E440751';
wwv_flow_imp.g_varchar2_table(36) := '9501003AEC5BA3233AB3920E8D49A3AB03FAE6D91C018A8EF9FAA8528E44CEB373BA07F5F3F3BCB94CD22904100040879C5515D02D9C85EF880563221A41F0433B4DE811D47F7A74FF90D77C667858D3D80FD26E0410004087FC6442B9274F652A04E180';
wwv_flow_imp.g_varchar2_table(37) := '4F7773FC27DA21E0937E754179872FE645E7FDE27CEAC6F6E2650200B4DBF93D839AD58F513E275DD6BF441FE9EEBD0DE930EBABA3221AD78DF78949232B03FA379649B60B010400D06EB78EA1717583053C079CC4A0A85FB78FE33DE2846F8F89684894';
wwv_flow_imp.g_varchar2_table(38) := 'EEF5A9F00A0100DAE523DD83BAAC3F9B59DD60DEC0128DAE662F084EECE7E79573D3B94322019F7E3A917D37A742000100B40BA3EEEEE193B4600C7B41F061537B8734878102475D31A0446359FE7652041000C0298DAE0E68DE403A356E72CDA0128DE4';
wwv_flow_imp.g_varchar2_table(39) := '442CD8DC3A96810237B8E56C2E693D19020800E0943E33BC944B075DC6EF93FE6958D85E8C2236A9575033FA7248841BCC1F1CD6D01803046DF149B2EC85C8AFDDF3ABD5AF8CEC974F2BF7A73579719DBDB84D1BAEA8D21807D6531F6EB174B0256B2F36';
wwv_flow_imp.g_varchar2_table(40) := '66C1BA841EDA91B4179FD09995013D363D662FEEB4C1D18023C7151E6AB174C881D7FC2BAF346AC99E94BDD813FC3E69D73585536FA5B22A981BC577366635F8E19A4E37E4F74C2CD74D679A1FA9B524BD5E93B1173B6E68CCEFC8DE893587D29AF054FB';
wwv_flow_imp.g_varchar2_table(41) := 'DBACB62C9E59A1D9A7792F8034A62D1D6AB174B039AB8347BE3765A4EE619F7A96FAD5B3D4A75EA57E5595987F365DF1CB2DCDFAE2AA467B310820CEA808F9E4F7D667A8D37E704E99BE38C27CE3E6950072E7C6262D5897B0171785CD575639B27CE4B6';
wwv_flow_imp.g_varchar2_table(42) := 'F509DDB1A1C95E8C9398D627A4E72FA9B0177B5243DAD2E5CFC5B578664C650E7434F3E1C2C5757A697FDA5EDC2E4E0590C6B4A5E87D87EDC58E5B32ABC29163A6731140CEED1ED4EA3995F662D7D9D190D5A2DD492D7A3FA50D87D33AD862A939D3BEAE';
wwv_flow_imp.g_varchar2_table(43) := '68C82FF508B70692893D829A3F38ACE97D43AEBDEBA4256369C823B5DADB647ED0CBED0A640CC85BEA53966A93C5F1E5C04033801CBB7E48E1ECFDB86D5D422FEE4B155408BD7E08CBB0207D79A4F920D95ECF7F90D237D62434EAB15A0D79A4465F7EB9';
wwv_flow_imp.g_varchar2_table(44) := '510BDF4FEAFD44B6DDE14347662FF73665B5B126A3DF6C6DD125CFD6ABCF0387F5D9950D7A664F4AE9F6FFA78C08077CFA24CB244F880002006853D0275D3DA8301AD0F587D3BA6773B324E9EE379BB4A9D67D4B803A63FEA012055C3A020C33CA833E5D';
wwv_flow_imp.g_varchar2_table(45) := '33D87D03057FDD9FD6F90BEB34FD997ADDF5469336D7E5FE3377A8C5D26FB7B668F6B3F5EAFF508D1E6CE7B262536E6080E0840820008036CDE81B528FB0F77BB7594BFAFCAA461D1D6C4D65A52FAC6A288835C8BD237E4DEB637ED910DCE3EA41258ABA';
wwv_flow_imp.g_varchar2_table(46) := '681DD296FA8C3EF67C5C172DAED32B073BB73CB033F6356575DDF2B8AE7921AEFDCDEE588231A63AA05155E6971BBB1D010400D0A63903DC37AADA19BF78BB59AB6D1DA195FBD3FACD96D61911AFE3DE87E2F6C9A1EE1865B78EECB33BEBB15A3DBAD3B9';
wwv_flow_imp.g_varchar2_table(47) := '998847DE4BEAACC76ADB7DC84ABE7D9C59900F21800000DA745E0FEF5FA6B5B729AB6FAD3DF1610FDF7C2DE19A91D2AE38AFA7F79F133A6760B95F17BBE0E8DDE68CA51B96C775C7862657ECC538D862E9DAE571FD666B8BFD9F8C2BA47D74B942000100';
wwv_flow_imp.g_varchar2_table(48) := '9C5038E02B88DB7CBFFA6AA3EA5327EE11D5242DDDBCFAC4E1C44BC6770B14CCD1C2E898AB0696387E47CF81E6ACA63F53AF075C32E370AC2FAC6A707C2664682CA089053098934B54570080131ADFCD99BB5A7269F1EED42937A5FEF1DD163DB7D79B77';
wwv_flow_imp.g_varchar2_table(49) := 'B41C551AF0696C351D9C6234B997B3B31F35494B9317D76BD501737B3D3A226B4937AE883B7E0FD3251EBC9F259F3CDEB40000F2C5EB237675494B9F5FD9602F3EA1CFAD6C50831BD68D7401CBB08AD3A45ECE3EF74FFFB5415BEB737FBA552E25B3D20D';
wwv_flow_imp.g_varchar2_table(50) := '2FC6559374EE333EA53701E4585C4458E02A423E8DA90EA877C4AF8A904F15219F2A4B8E7EFF70592420F97CB99BCCED1E6EFDEF9AC64584EEC74584EE77DF45517DFC74EF6E9EFCCCCA06FDAE03EBBFBF38A254BF38BFDC5EEC19FFF74E8B3EF9D7F605';
wwv_flow_imp.g_varchar2_table(51) := 'AEA3B888F0785EBB887050D4AF1D5757DB8B8DB9FBCD66DDBCDA3B377D7F7554A97E32C199CF7863DA52D59F0EBB627F8C1B10400AC8A0A85FE3AA831ADB2DA071DD821AD72DA8C151BFE36B439D4000713F0288FB6DFD589586C5CC3FA35C58BC3BA5CB';
wwv_flow_imp.g_varchar2_table(52) := '9EABB7179F92531DD05C78BB2EA3918FD5DA8B4F8A00723CA79E7F6703C8C74F0FEBBE8BA2F66223D61D4EEBBC85754A79E80C87905FDA34AF4A67543853AF9DBFD0ECB1C46EC6122C8FF2FBA48BFB8474D784723D7F49850EDFD04D3BAEAED663D363BA';
wwv_flow_imp.g_varchar2_table(53) := '7D5C99AE1A58A221451A3E00745D6589CFB3E1A32E69E973ED5C7A65F7D9950D6D6E5877BB332A038A3930E30CE74C7270D9DD9D1B9B3C153E74E4FE1F2707FDA6705FCFDF10403C66428FA0EE9E50AE5DD7546BD92515FAFAA8524DEB135275098D0E80';
wwv_flow_imp.g_varchar2_table(54) := 'DC191CF566F890A4AFAD6ED4EE44E77A463B1BB3FAC61AE73A285DE19334A89C66BD9838B5FFE3DD78C6D17B3EBAE2C95D29353AB40E6A4A6F679E971B515379C0C8CA80EE1857A6AD1FABD2AB9757EA6BA34AD5AF8C4707207F0678B48E59F47E52F76E';
wwv_flow_imp.g_varchar2_table(55) := '6BFFBE8F13F9F596663DE3F089399D3580005234A2419FC63874F2D93D9B9B9575A60FDF65CD194B4FEF76E6F33DAE008E35CF156A2A97F2FBA4CF0C0F6BDDDC4A6DBEB24AB78E8D7876390400EFF16247B63E65E9F3AB72B321F6732B1B14F7E052AC01';
wwv_flow_imp.g_varchar2_table(56) := 'E5B413C5E2BC9E41051C58FC90B55A8FAEF632A7666FFA45FC0A3BF1D05CC87B2D4C11F868BF90D6CFADD26F264549CB001CE1C50072CB6B894E2FBDB2DBD5D8F6EDE96EE6C5E786CE716AF9D5DAC3691D6EF15E383FD63287EEFDF1FB58267914A760B9';
wwv_flow_imp.g_varchar2_table(57) := 'C8A8AA80EE3AB75CB3B9ACA6CB3805CBFD3805CBDDFE705154377AE808DEBFEE4F6BCAE2BA9C36687E9FB46276A5631DBDCEE8E851BC9C82753C2F9D82F5F4AC0A5DE2C0DFFA765D462BF67BFF24A74F0F0B3B328374E973F58E2D01731302880BF42AF5';
wwv_flow_imp.g_varchar2_table(58) := 'EB8EF1117D7678A9231F86424400713F0288BBBD30BB42533D7271564BC6D2B827EBF4565DEE2F431B5515D0BAB9559EB911FEF90F529AFE4CFB8F1F26801CCF4B01E4C0F5DDD4234CA7C16BBEF472A37EF176B3BDB8E878A44A2D5C5F1B55AA6D1FABD2';
wwv_flow_imp.g_varchar2_table(59) := '17CE207C00700F2F6D42BFF3F5A6BC840F497AB336A31FBEEE9DC0CA12ACE210F0B55EF40BEF1912E5332A0288732A423EFDE5E298EE9E50CEB9ED005CA7BF4736336F321010EEDC98D0E63C059C5CF3527044E75597F8B8E7CBA34EE740218900E28C51';
wwv_flow_imp.g_varchar2_table(60) := '5501BD7A79A5AE1A5862FF2700705C24E0F3C49223EBC86955F9BE0C2D996DBDA0D00BEB95C3011FA7EC14816E610F7C4071427D223C3B1140CCBBB057502F5F56A9110EAC7D0780F628F548F5F4E7ED2D7AF98099CDB02BF7A7F5D00E678EEEEC28AF3C';
wwv_flow_imp.g_varchar2_table(61) := '3F745E37965F79164FAE1501C4A00B7B05B57856054BAE00B85A24E8FE3A2A959516ACCBEFD22BBB05EB1272E802E50E89300352F0980181D7F10E3664F291F011F540C30EA0B879A103FBCB2DCD7A376E765FC6D6FA8C7EB3C5FDA7D74498012978DD4A';
wwv_flow_imp.g_varchar2_table(62) := 'DCFF19054E860062C0B058400B67103E007883DB3BB00D694BDF73E828E5DB3734A9D1E5D320A51E0890E81A9660C1EB0820791609F8F4F0B4A82A19AD00E0116E5F8275D71BCDDADF9CE79DE76DF8A029AB9FBEE9EE5910B73F3F741D4BB0BCAB39E3EE';
wwv_flow_imp.g_varchar2_table(63) := '010C537807E7D97F9F5FAEB1DDBC738B2E00B87904FD40735677BDE1CCECC7513FDAD4A4432DEEED44B87D060B5DC7122CEFDADBE4CCE089DB1040F2E8DAC125FAF4B0B0BD18005CCDCD1DD89FBDD5AC78CAD9CE7F7DCAD2CFDF72EF2C8817F6F0A06B58';
wwv_flow_imp.g_varchar2_table(64) := '82E55D7B1204101140F2A72CE8D35D13CAEDC500E07A6EEDC0662DE9DEAD2DF66247DCBBADD9B5F782B879060BB9C1122CEFDAC30C884400C99F5BCE8EA83F37D202F020B776AC97EC49E97D978C1EBED790D5B2BD297BB12BB8F5F92177AA5882E5599B';
wwv_flow_imp.g_varchar2_table(65) := '6ACC9EDEE756F490F36060B95FDF38BBD45E0C009ED0E4D24D92BFDBE6AE654FBF75C96C8C1D9B5C0B1FF1C39B6A939696EF73E7C0856904903CF8D75111D72E610080536976E100DDC1164B8FEF74D74DE48FEE4CAA26E9BECEBE5B0324722748EFCD93';
wwv_flow_imp.g_varchar2_table(66) := '16BD9F54CA1D93B88EE32D9C6391808F8DE7003CADC985F75CFCF19D16255DD67037672CDDBFDD7DB3204D697B090037786C97BB06519C4400C9B11B4E2F51356B330178981B47D09F7069C3EDB65919B1040B70A52DF5193DFA9EFBEA0BA7104072EC0B';
wwv_flow_imp.g_varchar2_table(67) := '67B0F70380B735B97009D65B752EFCA35CFA77B9314002C5EEDFD726E4C2C965C7F8383023777A47FCDA7B6DB5673687D5252DAD3994D6FAC3691D6AB15497B4549FB254976AFDB931079F949BCF2AD50D43CC2F495BB93FADC98BEBECC56DDA704595C6';
wwv_flow_imp.g_varchar2_table(68) := '549BBFFCE0CE8D4D5AB02E612F2E0A9BAFACD2C84AF3AFF96DEB13BA6383B317D9B95DDF885F7BAEADB6173BA62E69A9EAFEC3F66257F0498A7FA29BCA5D74FB789F076BB4AF9D477DDE33B15C379D697EE0AC316D297A9FFB9EE99259159AD52F642FCE';
wwv_flow_imp.g_varchar2_table(69) := 'BB3587D29AF054FBDBACD5732A756E772E39F68A5507D29AB4A8FDCFB7183003924397F40BB93A7CD4262DFD7A4BB3FE614583463C5AABEAFB0F6BE6927A7D634D423F78BD49FFF376B3FEF86E8B9EDC95D48BFB527AED50BACB5FFB9BBB1E620098E5B6';
wwv_flow_imp.g_varchar2_table(70) := '253C6FD7BB6F96E128EBC8D20A3771E31E1EA05835A42D7D615583BDB8E8114072E81207464D4E2563494FEF4EE9FAE571F579B0469F5FD5A83FBEDBA22DF519A6BE009C90DB96606D76E132A763B96D1996DB022450AC2C4937BED8A0D7B9FBE3430820';
wwv_flow_imp.g_varchar2_table(71) := '3934D36501E4993D298D7EBC56973E57AF077624D542A304A01D9A3396AB3AB1EFC4DDDD78BF136FDF7227131269CB75A78501C56AC1DA841E77E9011A4E2380E44845C8A75EA5EE78397736663577695CB39FAD77FDC821007772CB8DE3925455E28EBA';
wwv_flow_imp.g_varchar2_table(72) := 'B52D6EBA957A57A37B9E1B50ACB256EBA6F3FF789DFD866D7177ADEE21FDCADCF152AE3F9CD6F90BEBF4D4FB246E009DB7B3C13D1DD9012EA95FDB32B0DC3D7FDF2E170547A018C55396AE7C3EAE1F123E4ECA3DB5A6C7F58D38FF526EAACD68EAD3F5DA';
wwv_flow_imp.g_varchar2_table(73) := 'DBCED34F4C70F9C0258036B8A9233BC0451DFC1371D3DFC70C08E09C17F7A574C1A23A3DC9B2AB53724FADE9714ECF80A4B2D23FAE68507DCA3DEBB6256958CCFC31AB00BACE4D1DD9C15167EBD7531954EE9E7ACE4DCF0D28166FD4663477695C539FAE';
wwv_flow_imp.g_varchar2_table(74) := 'D71BB52C7D6F0F77D7EA1EE274007960478BD61D4EDB8B1D37BCC23D0D3380F6735347B64FC4AF735C7AE7C1A45E41750BBB670FC8CE463A3F8009FB9BB3FAEDD616CD5D1AD7D8276A59FADE415C4498233F9950AEAF8E327F99D3519F59D9A0DF6D6DB1';
wwv_flow_imp.g_varchar2_table(75) := '173B2A1CF029F1896EF23BD0367311A1FB7111A1BB5D7A5A488B6656D88B1DF3E3379AF46F6BDCF759F9F979E5FAF248E7EA7EBB4B9EADD7923D297B719BB888F0785C447872875A2CAD3EE8BEC1CE7C6BC95AFAA029AB3D89D6AF376A337AE5605A597A';
wwv_flow_imp.g_varchar2_table(76) := 'D09D4600C99107A6C674EDE0127BB13143FF52AB775D7654E5E8EA80365E51652F368200E27E0410773BBB2AA0D7E739F3F93D915D8D590D7AB8C6550D56D027EDBEB6DA3527204AD2A8C76A3B74FA2101E4780490935BB637A5194BEAEDC54087B9A7D6';
wwv_flow_imp.g_varchar2_table(77) := 'F4B8BE110786F98FD8D598755DF890A42F8D30DFA801C88D1D0D595775F60794FB75C969E63B862733774089ABC247D692DE73D1D23900688B7B6A4E8FEBEDE029582917CE010E8B05F4D9330820805735A42DD7DDF07DF78472859CAB6A8F531AF0E9C7';
wwv_flow_imp.g_varchar2_table(78) := 'E796D98B1DF5665D4689B4FBDA0300B0734955EE7D8D0E56FA83A30195069C9B8139913BC6471474D79F04A0835E75D95AEF332B03FADAA888BDD811FF3E3AA2D35D76CADF2B07DCF5BC00A02D04901CD9DFEC5C00F1FBA4110EACA56FCBB43E215D3F24';
wwv_flow_imp.g_varchar2_table(79) := '6C2F06E0316EECD0DE3A36E2F8BD1BC32B02FAE6D9EE9BE17DC565811100DAE26C2D5E40F63B7CF9DFF43EE637A39DC8A45E413D392326263F00EF736387361AF4E9A91915AA2C71A696E911F6E9A91931855D36EB2C17CE5801405B082039B2BFD9D900';
wwv_flow_imp.g_varchar2_table(80) := 'F2DD71658EDF4532B147508B675628CADA2BA0206C3C9C5673C6B9D9DDB68CA90EE8D18B632A315CE595077D5A38B34267B8F07EA3C6B4A54D35041000DE60B8FA2E5C4E2EC192A48A904F3F9B586E2F3666628FA09E9955A18A10E1032814694B5A7BC8';
wwv_flow_imp.g_varchar2_table(81) := '5D1BD18FBAB84F487FBC28666C537A24E0D3C3D3629AD8C31DB3CD76AF1D4ACB855911004EC850D55DF89C9E0191A48F0D2AD1CFCE337B4A4C69C0A71F9C53A6972EAB5495434B2200E4CFCB2E5ED6337F70895E9C5DA9FE799EFD1D160B68D565159AED';
wwv_flow_imp.g_varchar2_table(82) := 'B263808FE5C6FD3A00D096FCD6DA45C4E91990A3FE6564A9967EB4C2C8B1C033FA86F4FABC4ADD329A13AF8042F5C4CEA4BDC855CEEF19D4DAB9959AD1373FE160DE8012AD9953A9B1DDDC39F371D4E3BBDCFD9C00E058F9EFA51609A737A11FEBA2DE21';
wwv_flow_imp.g_varchar2_table(83) := 'BD36A752D70F09E73C1884FCAD0DF263D3637AEEA3151AE6B2632801E4D68AFD29ED4EB8A77E3B919EA57E2D9955A1FFBB30AA21D1DC346B232B037A685A4C8F4E8F39B6E1BDBD763666B5723F332000BC23373535F44E3C2337DD07785A995FF74F896A';
wwv_flow_imp.g_varchar2_table(84) := 'C735D55A3026A29E5DBCAD77428FA07E765EB9F65CDB4D8F4D8F69DE8012FBAF002840594B7A6887FB47D7FD3EE91F8686F5D655D5FAEFF3CB35B09347F50E8B05F4BBC9516D9A57A56B069578E244BF0777B4B8EAD67A003895CED5D0F8909AA4A5D587';
wwv_flow_imp.g_varchar2_table(85) := 'DC3702755A995FDF1B5FA6F7E7576BF59C4AFD765254379D59AAA9BD43EA55EA57F7B04F3D4BFDEA1DF1AB4FC4AFD3CAFC9AD23BA47F1E51AAFF3EBF5CCB6757E8E0F5DDF4EAE595FA9791A5EA11F642730C20971ED8D1622F72AD12BFF4A511A57AEF9A';
wwv_flow_imp.g_varchar2_table(86) := '6AAD9953A90563221A5D1D505BA7E6067CD2F86E41DD3EAE4C1BAEA8D2D68F55E9D3C3C26DFEBE1BDDBFDDFD0111008EE5931838C995EF8E2BD36D63DD714B6FB15BB93FADC98BEBECC56DDA704595C6549B5F4E76E7C6262D5897B0171785CD575669A4';
wwv_flow_imp.g_varchar2_table(87) := '0317686E8B67F46EDCFC92A23B3624F4928797C96CBFBA5A8373B4BCC909194BFAA029ABDD89AC0E3467D5ABB475C0A577C4EFA9B061B7A53EA3118FD6DA8BDBED9E89E5BAE94CF3972A36A62D45EF3B6C2F76DC9259159AD52F3FFB894E66CDA1B4263C';
wwv_flow_imp.g_varchar2_table(88) := 'D5FE366BF59C4A9DDBDDFCBEA478CAD2D67A779E8CE7A415FBD3FAEAAB8DF6629C04012487CEEB11D4CB9757DA8BE1000288FB3915409C72CD0B713DF29E7747AA7FF891327DF36C0658DCE67B1B9AF49DF59DAF430820C72380A03316BE9FD49CA5717B';
wwv_flow_imp.g_varchar2_table(89) := '314EC2BBC3592EB4FA505A875AC873000ACF6FB6B470CF84CBA42DE977DB9AEDC500E07A04901CCA5AD2923DDE1DE10480B66C8B67F4E7EDDED90B520CFEF04E8B7634985F4E08005D4500C9B1A777A7EC45005010EEDCD8E4AAD3FE8A59C6927EF07A93';
wwv_flow_imp.g_varchar2_table(90) := 'BD18003C81009263CFEC49B1A9064041DA5C97F1F43E9642F2C0F616360303F02C02488EED6BCAEA296EA40550A0BEBF31C1208BC32C497732FB01C0C308207970EBFA261A68000569634D468FED6490C5490FEF48EACD5A663F00781701240F361C4EEB';
wwv_flow_imp.g_varchar2_table(91) := '410FDC1C0C009D71F3EA4625D20CB338A1216DE91B6BB86F0080B71140F2E4D67509D13E032844DB1BB2FACE7A96003961C1DA84763672F215006F2380E4C9D6FA8CFE771B475602284C3F7DB3496B0F79F766772F5A7D30AD9FBDC5BD1F00BC8F009247';
wwv_flow_imp.g_varchar2_table(92) := '776C48A8859BBB80134A3288EB69194BFADCAA462E2734246D499F5DD9C031C8902435B305081E4700C9A39D8D59FD720BB320C089EC6B228178DDDA4369DDF5064BB14CF8D1A6266DACA1D789561F507FC2E3082079F6DDF509BD13A7D100ECF6D08016';
wwv_flow_imp.g_varchar2_table(93) := '846FAF4D68D95E2E60CDA767F7A4F49D75097B318AD8DE04F527BC8D00926735494B572C8B2B9E62DE1C38160D6861485BD2FCE5716D63A0252FDEAECBE8DAE57196BAE1380CE0C0EB082006BC599BD1C75F64ED2E70ACB7EAE8B0168AC32D96E62E8DAB';
wwv_flow_imp.g_varchar2_table(94) := '2E4925974B35494B7397C555CBEB0A9BD7598E078F238018F2D4FB497D9B2974E06F16ED4E11CA0BC85B75195DC7487DCEA42D69FE0B716DADA7A3890F5BBA37A546CEFA878711400CFAE1EB4DFAD3BB6C4A0724E94073562B0F708C6B2179664F4AD72F';
wwv_flow_imp.g_varchar2_table(95) := '8F73C25917B5642C5DB73CAEA5ECAD411B9A33969ED9CDFB03DE450031EC332B1BB586B3F30149D2E33B93F62278DCC3EF2575E973F5EC7BEBA4BAA4A54B9E8DEB2FEFF1D9C0C93D4AFD090F238018D69CB1346F595CEB0F1342807BB735B36FA0002DDB';
wwv_flow_imp.g_varchar2_table(96) := '9BD2B467EAB5BF99A9908ED8DB94D594A7EBB47C1F23DB38B50777B46847039F31781301C4017B12594D5A54AFFB588E852277A8C5D28F36718F44215A7B28ADC98BEA396CA09DDEA8CD68F2A23AEEFA40BB25B3D202F696C2A308200E69CA58BA714583';
wwv_flow_imp.g_varchar2_table(97) := 'FEF5D546B18F0CC5ECA79B9BB58723790BD2B67846E73C59A79F6D6E16D5DC8959927EF266B3CE7DAA4EDB19CD4607FDE9DD16AD6345053C8800E2B0FFDADCACE9CFD4732B348A56226DE92BAF36D2412D504D194B37BDDAA84B9EADD76E82E671763566';
wwv_flow_imp.g_varchar2_table(98) := '357349BDBEBEBA51CD1C1F864EB0247D6E65A39A78FFC06308202EB0625F4AE73C55A7970BF84420D6F9E364FEF25E52DFDFC052AC42F6EC9E94CE7EBC56F76E6B29FAE397B396F4DBAD2D1AFD442DB7C8A3CB5E3B94D6675E6AB41703AE460071893D89';
wwv_flow_imp.g_varchar2_table(99) := 'ACA63E5DA71FBCDEA486025A935593B474F3EA465DBEB4DEFE4FC0716E5B9FE0549702579BB4F44F2F3568EC13B57A6257713EEB27762535E6895A7D7665030333C899FBB7B7E83F5E671007DE410071916456FAD6DA84063E54A3DBD62774A8C5BB8D53';
wwv_flow_imp.g_varchar2_table(100) := '322BDDFD66B3863E52A3BBDF6CE65E009C9225E9C6150D849022B0A936A379CBE29AB4A84E2F16C9894F2BF6A53479719DE62D8BEB8D5A369A23F716AC4DE87BCC24C32308202E5493B474C786260D7AB84637AF6EF4D4065D4BD29FB7B768E4A3AD7F7B';
wwv_flow_imp.g_varchar2_table(101) := '0D237CE88044DAD2D5CFC775E7461AD162B0EA405A539FAED7B94FD5E9176F17DE91CCF5294BBFDCD2AC890BEB34E5E97AADDC5FB8CB6CE13C4BD277D62774DDF2387B42E07A0410176B4C5BBAFBCD660D79A4465F58D5A877E2EE1D35FBA029AB1FBFD1';
wwv_flow_imp.g_varchar2_table(102) := 'A4D18FD7EA86171B38CD059D66A9F568C9EB96C7F50187331485D70EA5F5A5971BD5F7C11ADDB8A2414BF7A694F2E8A34F5BD28BFB52FAF44B0DEAFB608DBEB8AA51AB0F123C60CE833B929ABCA85EAFF0BE838B11403C2099957EB5A559231EADD5D4A7';
wwv_flow_imp.g_varchar2_table(103) := 'EBF59DF5092DDB9B727C84239EB2F4C08EA42E7BAE5EFD1FAAD1BFAD49B0B40039F3E08EA486FDA556DF5D9F28A87D51685B53C6D27DEFB668E6927A55DF7F58B39FADD77F6E6AD2AB07D372B8BA6B932569FDE1B4EE7EB3597396C6D5EDFEC39AFA74BD';
wwv_flow_imp.g_varchar2_table(104) := '7EBFAD4509DEB770C8BAC3699DBFB04EF35F886B6B3DED32DCC777A4FE840795F8A5893D829AD627A4A97D429AD433A8B2A0CFFE6B39B3BF39AB15FBD25AB12FA515FBD3DA70B8FD9D82093D827AF5F24A7B71DEACDC9FD6E4C575F6E2366DB8A24A63AA';
wwv_flow_imp.g_varchar2_table(105) := '03F6E2BCBB7363131749B543EF885F9F1A1AD655834A34B14750F97B97E7CF352FC4F5C87BEC6FE9AC58C8A79195010DAF08E88C8A80CEA8F0FFEDE78A50FEDF118D694BDBEA33DA529FD596FA8CB6D667B4A53EA3CD7519D57A78E9D83D13CB75D399A5';
wwv_flow_imp.g_varchar2_table(106) := 'F6E2BC6B4C5B8ADE77D85EECB825B32A34AB5FC85E9C776B0EA535E1A9F6B7591D11F449570C2CD1BC01259AD3BF44DDC2F9FFBC149B85EF27356769DC5E8C932080149090BFB5A33F3C1650F7B04FDD4BFDEA1EF6A95B49EBF763CB2281BF5740CD194B';
wwv_flow_imp.g_varchar2_table(107) := '89746B8390485B3AD462697B4346EFC6B37AB721A3ED47BEEF6AECFC9A88B3AB027A685ACC5E9C376B0FA5F589150DF6E2363D7A714C232BCD07905FBCDDACFFDADC6C2FC649F48DF87579FF90865504D42FE257BF32BF7A47FCCA63F6CE899B5E6DD4B3';
wwv_flow_imp.g_varchar2_table(108) := '7B8A63C3B569BD237E0D8FF975466540FDCBFC8A857CAD5FC1D6EF51DBFF8E047D6A4A5B8AA72C351CF97EECCF0DE9D619DEBD89D6B0B1A53E53B077987C6944A9AE1A54622FCEBBE68CA5B92EECB0FDF02365FA48F7A0BD38EFB6D467F4E597F37F946E';
wwv_flow_imp.g_varchar2_table(109) := 'C0274DEE15D2A8AABFD79F7D223E858FE913A0E35E3E90D6AD0C26760801A44845023E057C52226315FD99FC00000030870002000000C01836A10300000030860002000000C018020800000000630820000000008C21800000000030860002000000C018';
wwv_flow_imp.g_varchar2_table(110) := '020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C01802080000000063082000000000';
wwv_flow_imp.g_varchar2_table(111) := '8C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C218000000000308600020000';
wwv_flow_imp.g_varchar2_table(112) := '00C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C01802080000000063082000';
wwv_flow_imp.g_varchar2_table(113) := '0000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C218000000000308600';
wwv_flow_imp.g_varchar2_table(114) := '02000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C018020800000000630820000000008C21800000000030860002000000C01802080000000063';
wwv_flow_imp.g_varchar2_table(115) := '0820000000008C21800000000030E6FF032C4A29A7306670510000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22455359964049230442)
,p_file_name=>'logo-art-one.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260731203602Z')
,p_updated_on=>wwv_flow_imp.dz('20260731203701Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/security/authorizations/acesso_alertas
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14672366903091079)
,p_name=>'ACESSO_ALERTAS '
,p_static_id=>'acesso-alertas'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '  v_count NUMBER;',
    'BEGIN',
    '  SELECT COUNT(*) INTO v_count',
    '  FROM USUARIO_MODULO_ACESSO uma',
    '  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
    '  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
    '    AND uma.MODULO = ''ALERTAS''',
    '    AND uma.ATIVO = ''S'';',
    '  RETURN v_count > 0;',
    'END;    ')))).to_clob
,p_error_message=>unistr('Voc\00EA n\00E3o tem permiss\00E3o para acessar este m\00F3dulo.')
,p_version_scn=>'SH256:HLbYjrV2zjHMHkIWTzFYlvJmx037bdK4jPbhpURWLVw'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260814105044Z')
,p_updated_on=>wwv_flow_imp.dz('20260814105044Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/acesso_cadastro_usuarios
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14671648558086155)
,p_name=>'ACESSO_CADASTRO_USUARIOS'
,p_static_id=>'acesso-cadastro-usuarios'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '  v_count NUMBER;',
    'BEGIN',
    '  SELECT COUNT(*) INTO v_count',
    '  FROM USUARIO_MODULO_ACESSO uma',
    '  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
    '  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
    '    AND uma.MODULO = ''CADASTRO_USUARIOS''',
    '    AND uma.ATIVO = ''S'';',
    '  RETURN v_count > 0;',
    'END;')))).to_clob
,p_error_message=>unistr('Voc\00EA n\00E3o tem permiss\00E3o para acessar este m\00F3dulo.')
,p_version_scn=>'SH256:yLz0eX2zf1OJOocjjYmLQKj0mxc3wPeGJfIvtUUbx0M'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260814104955Z')
,p_updated_on=>wwv_flow_imp.dz('20260814104955Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/acesso_dashboard
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14670854207080996)
,p_name=>'ACESSO_DASHBOARD'
,p_static_id=>'acesso-dashboard'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '  v_count NUMBER;',
    'BEGIN',
    '  SELECT COUNT(*) INTO v_count',
    '  FROM USUARIO_MODULO_ACESSO uma',
    '  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
    '  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
    '    AND uma.MODULO = ''DASHBOARD''',
    '    AND uma.ATIVO = ''S'';',
    '  RETURN v_count > 0;',
    'END;')))).to_clob
,p_error_message=>unistr('Voc\00EA n\00E3o tem permiss\00E3o para acessar este m\00F3dulo.')
,p_version_scn=>'SH256:7vBDP2omw9wXvOmKTyA4iNV7H_y0pDYO2k0yc96_LxI'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260814104903Z')
,p_updated_on=>wwv_flow_imp.dz('20260814104903Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/acesso_gerenciador_acessos
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14672743324101987)
,p_name=>'ACESSO_GERENCIADOR_ACESSOS'
,p_static_id=>'acesso-gerenciador-acessos'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'DECLARE',
    '  v_count NUMBER;',
    'BEGIN',
    '  SELECT COUNT(*) INTO v_count',
    '  FROM USUARIO_MODULO_ACESSO uma',
    '  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
    '  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
    '    AND uma.MODULO = ''GERENCIADOR_ACESSOS''',
    '    AND uma.ATIVO = ''S'';',
    '  RETURN v_count > 0;',
    'END;')))).to_clob
,p_error_message=>unistr('Voc\00EA n\00E3o tem permiss\00E3o para acessar este m\00F3dulo.')
,p_version_scn=>'SH256:qoYnR2xUEi5JaLPwTDwpdOUl3FQCbxqakIB6_2-V97k'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260814105233Z')
,p_updated_on=>wwv_flow_imp.dz('20260814105233Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/admin_logistica
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14497283274723218)
,p_name=>'ADMIN_LOGISTICA'
,p_static_id=>'admin-logistica'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', unistr('RETURN FN_VERIFICA_PERFIL(''Administrador'') OR FN_VERIFICA_PERFIL(''Log\00EDstica'');'))).to_clob
,p_error_message=>unistr('Acesso restrito a Administradores e Log\00EDstica.')
,p_version_scn=>'SH256:VsszAzHEsilLeDWUR2w0ASm43KcVXlCl0rlksms585E'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260813113558Z')
,p_updated_on=>wwv_flow_imp.dz('20260813113558Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(20751398373545680550)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/security/authorizations/somente_admin
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14496966746720962)
,p_name=>'SOMENTE_ADMIN'
,p_static_id=>'somente-admin'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'RETURN FN_VERIFICA_PERFIL(''Administrador''); ')).to_clob
,p_error_message=>'Acesso restrito a Administradores.'
,p_version_scn=>'SH256:_AVfED0WvSW1Ao5eojfc4V-X9m1K2Dri-Ttjay4Cglo'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260813113535Z')
,p_updated_on=>wwv_flow_imp.dz('20260813113536Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authorizations/todos_exceto_faturamento
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14497653097725854)
,p_name=>'TODOS_EXCETO_FATURAMENTO'
,p_static_id=>'todos-exceto-faturamento'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'RETURN FN_VERIFICA_PERFIL(''Administrador'') ',
    unistr('    OR FN_VERIFICA_PERFIL(''Log\00EDstica'')'),
    '    OR FN_VERIFICA_PERFIL(''Operador'')',
    '    OR FN_VERIFICA_PERFIL(''Supply'');    ')))).to_clob
,p_error_message=>unistr('Voc\00EA n\00E3o tem permiss\00E3o para acessar esta p\00E1gina.')
,p_version_scn=>'SH256:zWz8ilYChez1y9G-M-nOxtl-RYSs237sBNhSeE7bZtE'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260813113624Z')
,p_updated_on=>wwv_flow_imp.dz('20260813113624Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/sp_enviar_email_alerta
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(15253206782839778)
,p_process_sequence=>2
,p_process_point=>'ON_DEMAND'
,p_process_name=>'SP_ENVIAR_EMAIL_ALERTA'
,p_static_id=>'sp-enviar-email-alerta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_ENVIAR_EMAIL_ALERTA(:APP_AJAX_X01);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>'SH256:lo6dr5YtGGr5Toqy6bL9gGq_32GHVqV6YnVqENuAPug'
,p_created_on=>wwv_flow_imp.dz('20260818083602Z')
,p_updated_on=>wwv_flow_imp.dz('20260818083602Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_processes/sp_enviar_whatsapp_alerta
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(15071049004537187)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_name=>'SP_ENVIAR_WHATSAPP_ALERTA'
,p_static_id=>'sp-enviar-whatsapp-alerta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_numero VARCHAR2(50);',
'  v_descricao VARCHAR2(500);',
'BEGIN',
'  SELECT NVL(WHATSAPP_NUMERO, ''554499620498''), DESCRICAO',
'  INTO v_numero, v_descricao',
'  FROM DAB_SISPETRO_ALERTAS_CONFIG',
'  WHERE ID = :P3_ID;',
'  ',
'  DBMS_OUTPUT.PUT_LINE(''=== TESTE WHATSAPP ==='');',
unistr('  DBMS_OUTPUT.PUT_LINE(''N\00FAmero: '' || v_numero);'),
'  DBMS_OUTPUT.PUT_LINE(''Mensagem: '' || v_descricao);',
'  DBMS_OUTPUT.PUT_LINE(''Status: Pronto para envio'');',
'  ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    DBMS_OUTPUT.PUT_LINE(''ERRO: '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>'SH256:sf19TJXXq0px4xDQY8fr2PE2k7xxipqiGHTtRmqBW8g'
,p_created_on=>wwv_flow_imp.dz('20260817150528Z')
,p_updated_on=>wwv_flow_imp.dz('20260817150528Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_filial
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14528344836570156)
,p_name=>'APP_FILIAL'
,p_protection_level=>'I'
,p_version_scn=>'SH256:Sx721gv50Jp_wOKSzAYrTKNUYWa46gqwLW56c1wraTo'
,p_created_on=>wwv_flow_imp.dz('20260813164347Z')
,p_updated_on=>wwv_flow_imp.dz('20260813164347Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_acessos
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14686350508528269)
,p_name=>'APP_MOD_ACESSOS'
,p_protection_level=>'N'
,p_version_scn=>'SH256:8ooti7spjOXnjged3fa-XbT4A2Q97C0kXFdBwvQRyXw'
,p_created_on=>wwv_flow_imp.dz('20260814120336Z')
,p_updated_on=>wwv_flow_imp.dz('20260814120336Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_acessos_display
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14694657435226506)
,p_name=>'APP_MOD_ACESSOS_DISPLAY'
,p_protection_level=>'N'
,p_version_scn=>'SH256:JuMZc2ZLjIw22gmLlWaDQwa5Scsgm2xfce4CwCYhQN8'
,p_created_on=>wwv_flow_imp.dz('20260814135958Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135958Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_alertas
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14685984069526988)
,p_name=>'APP_MOD_ALERTAS'
,p_protection_level=>'N'
,p_version_scn=>'SH256:O_c0wAUbtamIlmXF6pqpWJwLTWhhyeq7LoFSn9NEY9k'
,p_created_on=>wwv_flow_imp.dz('20260814120323Z')
,p_updated_on=>wwv_flow_imp.dz('20260814120323Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_alertas_display
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14694237184223438)
,p_name=>'APP_MOD_ALERTAS_DISPLAY'
,p_protection_level=>'N'
,p_version_scn=>'SH256:0oDsX8F0GtEfeck-Um3q3Bnk9LrNogIRNX7xpIWAByg'
,p_created_on=>wwv_flow_imp.dz('20260814135928Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135928Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_cadastro
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14686119132527641)
,p_name=>'APP_MOD_CADASTRO'
,p_protection_level=>'N'
,p_version_scn=>'SH256:fslq6FzsP45vMG7jlrNB28nNsug9dFw7cnwK-rHp780'
,p_created_on=>wwv_flow_imp.dz('20260814120330Z')
,p_updated_on=>wwv_flow_imp.dz('20260814120330Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_cadastro_display
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14694449529224308)
,p_name=>'APP_MOD_CADASTRO_DISPLAY'
,p_protection_level=>'N'
,p_version_scn=>'SH256:TeV_MpFsRy99tKwOxUaEmQSdKFY0FAa0ANXT02Nv3Ko'
,p_created_on=>wwv_flow_imp.dz('20260814135936Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135936Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_dashboard
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14685752484526116)
,p_name=>'APP_MOD_DASHBOARD'
,p_protection_level=>'N'
,p_version_scn=>'SH256:kn8dA1hm5epudtBj5M0a_k-ojRmTT5Cc9d8hHpfbde8'
,p_created_on=>wwv_flow_imp.dz('20260814120315Z')
,p_updated_on=>wwv_flow_imp.dz('20260814120315Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_dashboard_display
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14694063190220899)
,p_name=>'APP_MOD_DASHBOARD_DISPLAY'
,p_protection_level=>'N'
,p_version_scn=>'SH256:sf6OjDuDdqXUTSlHQvdfTlrI82ZpR_V-NVhWhOa9zHM'
,p_created_on=>wwv_flow_imp.dz('20260814135902Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135902Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_mod_sem_acesso_display
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14694850637227229)
,p_name=>'APP_MOD_SEM_ACESSO_DISPLAY'
,p_protection_level=>'N'
,p_version_scn=>'SH256:pJ13UE6n2BuZfUDE-Qyy8LNcvrbw1HCkLQUzX28qugI'
,p_created_on=>wwv_flow_imp.dz('20260814140006Z')
,p_updated_on=>wwv_flow_imp.dz('20260814140006Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_items/app_nome_usuario
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(14695533880263723)
,p_name=>'APP_NOME_USUARIO'
,p_protection_level=>'N'
,p_version_scn=>'SH256:-BGJQhbJDchfC6RfL7morWvq83C05y8ZplhIbckEi4M'
,p_created_on=>wwv_flow_imp.dz('20260814140611Z')
,p_updated_on=>wwv_flow_imp.dz('20260814140611Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20751406737000680573)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(20751406737000680573)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(20751407398859680575)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(20751407083332680574)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipo_alerta
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(21657291059160152745)
,p_lov_name=>'TIPO_ALERTA'
,p_static_id=>'lov-alerta-condicao'
,p_lov_query=>'.'||wwv_flow_imp.id(21657291059160152745)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:oQXALMWSU4sa8wBffPZzFg69l_CyXuIY7QntwL0pbU0'
,p_created_on=>wwv_flow_imp.dz('20260728200945Z')
,p_updated_on=>wwv_flow_imp.dz('20260729115107Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21658443936550563979)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Aguardando Coleta Excedido'
,p_lov_return_value=>'AGUARDANDO_COLETA_EXCEDIDO'
,p_static_id=>'aguardando-coleta-excedido'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657291271435152748)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'OC Atrasada'
,p_lov_return_value=>'ATRASO'
,p_static_id=>'atraso'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657291654346152749)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'OC Cancelada'
,p_lov_return_value=>'CANCELAMENTO'
,p_static_id=>'cancelamento'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21658443666695563977)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('OC Sem Ve\00EDculo')
,p_lov_return_value=>'SEM_VEICULO'
,p_static_id=>'sem-veiculo'
);
end;
/
prompt --application/shared_components/user_interface/lovs/tipo_pedido_filtro
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(21657609319516505858)
,p_lov_name=>'TIPO_PEDIDO_FILTRO'
,p_static_id=>'lov-tipo-pedido'
,p_lov_query=>'.'||wwv_flow_imp.id(21657609319516505858)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:TZh6anqmOqHM4RnQZ9LPQrMiw4ZJlDoNPegS56e9-zg'
,p_created_on=>wwv_flow_imp.dz('20260728201049Z')
,p_updated_on=>wwv_flow_imp.dz('20260731192858Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657610380751505864)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Compra (CP)'
,p_lov_return_value=>'CP'
,p_static_id=>'cp'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657610762442505864)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('Transfer\00EAncia')
,p_lov_return_value=>'TR'
,p_static_id=>'oe'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657611099913505864)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Todos'
,p_lov_return_value=>'TODOS'
,p_static_id=>'todos'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(21657609487424505862)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Venda (VD)'
,p_lov_return_value=>'VD'
,p_static_id=>'vd'
);
end;
/
prompt --application/shared_components/user_interface/lovs/usuarios_cod_usuario
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(14310944263971803)
,p_lov_name=>'USUARIOS.COD_USUARIO'
,p_static_id=>'usuarios-cod-usuario'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIOS'
,p_return_column_name=>'SEQ_USUARIO'
,p_display_column_name=>'COD_USUARIO'
,p_default_sort_column_name=>'COD_USUARIO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:xqc5ACCUOnX-s_v74OdXSG6aBP-4QRbr_zA1ZVikYms'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111716Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(20751398559742680551)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(20751393405888680535)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260813164441Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14302644972829028)
,p_short_name=>unistr('Cadastro de Usu\00E1rios')
,p_static_id=>unistr('cadastro-de-usu\00E1rios')
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21657646548305514416)
,p_parent_id=>wwv_flow_imp.id(21358890068669955311)
,p_short_name=>unistr('Configura\00E7\00E3o de Alertas')
,p_static_id=>unistr('configura\00E7\00E3o-de-alertas')
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20260728201215Z')
,p_updated_on=>wwv_flow_imp.dz('20260728201215Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21358890068669955311)
,p_short_name=>unistr('Dashboard - Log\00EDstica')
,p_static_id=>unistr('dashboard-log\00EDstica')
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260727145224Z')
,p_updated_on=>wwv_flow_imp.dz('20260727145224Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21841087001404432176)
,p_short_name=>'Editar Alerta'
,p_static_id=>'editar-alerta'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260729123832Z')
,p_updated_on=>wwv_flow_imp.dz('20260729123832Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14326659172971965)
,p_short_name=>'Gerenciador de Acessos'
,p_static_id=>'gerenciador-de-acessos'
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20751393634926680535)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14529737808575477)
,p_short_name=>unistr('Sele\00E7\00E3o de FIlial')
,p_static_id=>unistr('sele\00E7\00E3o-de-filial')
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
,p_created_on=>wwv_flow_imp.dz('20260813164441Z')
,p_updated_on=>wwv_flow_imp.dz('20260813164441Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(20751394301350680537)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:uQ4JZ2SNi6_ApHjT-kqrEfO43wbND5yijbsMF-bW90c'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260814113542Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(20751392725300680533)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/custom_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(14518446760120794)
,p_name=>'Custom Authentication'
,p_static_id=>'custom-auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'FN_AUTENTICAR_USUARIO',
  'enable_legacy_attributes', 'N')).to_clob
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:ZB2LaFPWMxKUDe2IGqQphEfb6xRWa3L0CHA8jS2-3iY'
,p_created_on=>wwv_flow_imp.dz('20260813152854Z')
,p_updated_on=>wwv_flow_imp.dz('20260813153141Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(20751393054038680534)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260724145103Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260724145103Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Esconde t\00EDtulo da region R_HOME */'),
'.t-Region-header {',
'  display: none !important;',
'}',
'',
unistr('/* Fundo da p\00E1gina */'),
'.t-Body-main {',
'  background-color: #F5F5F5 !important;',
'}',
'',
'/* Cards hover */',
'#card-dashboard, #card-alertas, #card-cadastro, #card-acessos {',
'  transition: all 0.2s ease !important;',
'}',
'',
'.t-BreadcrumbRegion-body .t-Icon,',
'.t-BreadcrumbRegion-body .t-Header-logo,',
'.t-BreadcrumbRegion .t-Icon {',
'  display: none !important;',
'}',
'',
'.t-BreadcrumbRegion-body h1 {',
'  padding-left: 0 !important;',
'}',
'',
'.t-HeroRegion-icon {',
'  display: none !important;',
'}',
'',
'.t-HeroRegion-title {',
'  display: none !important;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260814142350Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20751406099387680570)
,p_plug_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_title=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814141755Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14534795965708778)
,p_plug_name=>'R_HOME'
,p_static_id=>'r-home'
,p_title=>'Home'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="padding: 20px;">',
'  <div style="background: linear-gradient(135deg, #E25F21 0%, #C04A1A 100%); border-radius: 8px; padding: 24px 28px; margin-bottom: 24px; display: flex; align-items: center; justify-content: space-between;">',
'    <div>',
'      <h2 style="color: #fff; font-size: 22px; font-weight: 700; margin: 0;">',
unistr('        Ol\00E1, &APP_NOME_USUARIO.! \D83D\DC4B'),
'      </h2>',
'      <p style="color: rgba(255,255,255,0.8); margin-top: 6px; font-size: 13px;">',
unistr('        Selecione um m\00F3dulo para come\00E7ar.'),
'      </p>',
'    </div>',
unistr('    <div style="font-size: 48px; opacity: 0.3;">\D83C\DFED</div>'),
'  </div>',
'  <div style="display: flex; flex-wrap: wrap; gap: 20px;">',
'',
'    <div id="card-dashboard" style="display:&APP_MOD_DASHBOARD_DISPLAY.; width: 220px; background: #fff; border: 1px solid #E8E8E8; border-radius: 8px; padding: 24px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); cursor: pointer;"',
'      onmouseover="this.style.borderColor=''#E25F21''; this.style.boxShadow=''0 4px 16px rgba(226,95,33,0.15)'';"',
'      onmouseout="this.style.borderColor=''#E8E8E8''; this.style.boxShadow=''0 2px 8px rgba(0,0,0,0.08)'';"',
'      onclick="window.location.href=''http://10.130.57.55:8080/ords/r/artone/dashboard/dashboard-logistica?session=&SESSION.'';">',
'      <div style="width:48px;height:48px;background:#FFF3EE;border-radius:10px;display:flex;align-items:center;justify-content:center;margin-bottom:12px;">',
'        <svg width="24" height="24" fill="none" stroke="#E25F21" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/><rect x="14" y="14" width='
||'"7" height="7"/></svg>',
'      </div>',
unistr('      <div style="font-weight: 700; font-size: 15px; color: #000; margin-bottom: 6px;">Dashboard Log\00EDstica</div>'),
unistr('      <div style="font-size: 12px; color: #7F7F7F;">Vis\00E3o geral das ordens de carga e entregas.</div>'),
'    </div>',
'',
'    <div id="card-alertas" style="display:&APP_MOD_ALERTAS_DISPLAY.; width: 220px; background: #fff; border: 1px solid #E8E8E8; border-radius: 8px; padding: 24px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); cursor: pointer;"',
'      onmouseover="this.style.borderColor=''#E25F21''; this.style.boxShadow=''0 4px 16px rgba(226,95,33,0.15)'';"',
'      onmouseout="this.style.borderColor=''#E8E8E8''; this.style.boxShadow=''0 2px 8px rgba(0,0,0,0.08)'';"',
'      onclick="window.location.href=''http://10.130.57.55:8080/ords/r/artone/dashboard/configura%C3%A7%C3%A3o-de-alertas?session=&SESSION.'';">',
'      <div style="width:48px;height:48px;background:#FFF3EE;border-radius:10px;display:flex;align-items:center;justify-content:center;margin-bottom:12px;">',
'        <svg width="24" height="24" fill="none" stroke="#E25F21" stroke-width="2" viewBox="0 0 24 24"><path d="M18 8A6 6 0 006 8c0 7-3 9-3 9h18s-3-2-3-9M13.73 21a2 2 0 01-3.46 0"/></svg>',
'      </div>',
unistr('      <div style="font-weight: 700; font-size: 15px; color: #000; margin-bottom: 6px;">Configura\00E7\00E3o de Alertas</div>'),
unistr('      <div style="font-size: 12px; color: #7F7F7F;">Gerencie alertas e notifica\00E7\00F5es do sistema.</div>'),
'    </div>',
'',
'    <div id="card-cadastro" style="display:&APP_MOD_CADASTRO_DISPLAY.; width: 220px; background: #fff; border: 1px solid #E8E8E8; border-radius: 8px; padding: 24px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); cursor: pointer;"',
'      onmouseover="this.style.borderColor=''#E25F21''; this.style.boxShadow=''0 4px 16px rgba(226,95,33,0.15)'';"',
'      onmouseout="this.style.borderColor=''#E8E8E8''; this.style.boxShadow=''0 2px 8px rgba(0,0,0,0.08)'';"',
'      onclick="window.location.href=''http://10.130.57.55:8080/ords/r/artone/dashboard/cadastro-de-usu%C3%A1rios?session=&SESSION.'';">',
'      <div style="width:48px;height:48px;background:#FFF3EE;border-radius:10px;display:flex;align-items:center;justify-content:center;margin-bottom:12px;">',
'        <svg width="24" height="24" fill="none" stroke="#E25F21" stroke-width="2" viewBox="0 0 24 24"><path d="M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 00-3-3.87M16 3.13a4 4 0 010 7.75"/></svg>',
'      </div>',
unistr('      <div style="font-weight: 700; font-size: 15px; color: #000; margin-bottom: 6px;">Cadastro de Usu\00E1rios</div>'),
unistr('      <div style="font-size: 12px; color: #7F7F7F;">Gerencie usu\00E1rios e permiss\00F5es do sistema.</div>'),
'    </div>',
'',
'    <div id="card-acessos" style="display:&APP_MOD_ACESSOS_DISPLAY.; width: 220px; background: #fff; border: 1px solid #E8E8E8; border-radius: 8px; padding: 24px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); cursor: pointer;"',
'      onmouseover="this.style.borderColor=''#E25F21''; this.style.boxShadow=''0 4px 16px rgba(226,95,33,0.15)'';"',
'      onmouseout="this.style.borderColor=''#E8E8E8''; this.style.boxShadow=''0 2px 8px rgba(0,0,0,0.08)'';"',
'      onclick="window.location.href=''http://10.130.57.55:8080/ords/r/artone/dashboard/gerenciador-de-acessos?session=&SESSION.'';">',
'      <div style="width:48px;height:48px;background:#FFF3EE;border-radius:10px;display:flex;align-items:center;justify-content:center;margin-bottom:12px;">',
'        <svg width="24" height="24" fill="none" stroke="#E25F21" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0110 0v4"/></svg>',
'      </div>',
'      <div style="font-weight: 700; font-size: 15px; color: #000; margin-bottom: 6px;">Gerenciador de Acessos</div>',
unistr('      <div style="font-size: 12px; color: #7F7F7F;">Controle de acessos por usu\00E1rio e m\00F3dulo.</div>'),
'    </div>',
'',
'    <div id="card-sem-acesso" style="display:&APP_MOD_SEM_ACESSO_DISPLAY.; width: 100%; background: #FFF8F5; border: 1px solid #F5D5C0; border-radius: 8px; padding: 24px; text-align: center;">',
'      <div style="width:48px;height:48px;background:#FFF3EE;border-radius:10px;display:flex;align-items:center;justify-content:center;margin:0 auto 12px;">',
'        <svg width="24" height="24" fill="none" stroke="#E25F21" stroke-width="2" viewBox="0 0 24 24"><circle cx="12" cy="12" r="10"/><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"/></svg>',
'      </div>',
unistr('      <div style="font-weight: 700; font-size: 15px; color: #C04A1A; margin-bottom: 6px;">Sem m\00F3dulos dispon\00EDveis</div>'),
'      <div style="font-size: 12px; color: #7F7F7F;">Entre em contato com o administrador do sistema para solicitar acesso.</div>',
'    </div>',
'',
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814120245Z')
,p_updated_on=>wwv_flow_imp.dz('20260814142350Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14535813498708789)
,p_name=>'P1_MOD_ACESSOS'
,p_item_sequence=>50
,p_item_default=>'P1_MOD_ACESSOS'
,p_item_default_type=>'ITEM'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814135144Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135359Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14535940935708790)
,p_name=>'P1_MOD_ALERTAS'
,p_item_sequence=>30
,p_item_default=>'P1_MOD_ALERTAS'
,p_item_default_type=>'ITEM'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814135144Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135144Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14535750332708788)
,p_name=>'P1_MOD_CADASTRO'
,p_item_sequence=>40
,p_item_default=>'P1_MOD_CADASTRO'
,p_item_default_type=>'ITEM'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814135144Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135359Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14535633210708787)
,p_name=>'P1_MOD_DASHBOARD'
,p_item_sequence=>20
,p_item_default=>'P1_MOD_DASHBOARD'
,p_item_default_type=>'ITEM'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814135122Z')
,p_updated_on=>wwv_flow_imp.dz('20260814135122Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14535097007708781)
,p_name=>'DA_MOSTRAR_CARDS'
,p_static_id=>'da-mostrar-cards'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_created_on=>wwv_flow_imp.dz('20260814120812Z')
,p_updated_on=>wwv_flow_imp.dz('20260814122707Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14535118964708782)
,p_event_id=>wwv_flow_imp.id(14535097007708781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dash    = apex.item(''APP_MOD_DASHBOARD'').getValue();',
'var alertas = apex.item(''APP_MOD_ALERTAS'').getValue();',
'var cad     = apex.item(''APP_MOD_CADASTRO'').getValue();',
'var acess   = apex.item(''APP_MOD_ACESSOS'').getValue();',
'',
'console.log(''dash:'', dash, ''alertas:'', alertas, ''cad:'', cad, ''acess:'', acess);',
'',
'if (dash == "1")    document.getElementById(''card-dashboard'').style.display = ''block'';',
'if (alertas == "1") document.getElementById(''card-alertas'').style.display = ''block'';',
'if (cad == "1")     document.getElementById(''card-cadastro'').style.display = ''block'';',
'if (acess == "1")   document.getElementById(''card-acessos'').style.display = ''block'';',
'',
'if (dash != "1" && alertas != "1" && cad != "1" && acess != "1") {',
'  document.getElementById(''card-sem-acesso'').style.display = ''block'';',
'}'))
,p_created_on=>wwv_flow_imp.dz('20260814120812Z')
,p_updated_on=>wwv_flow_imp.dz('20260814122707Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534209261708773)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REDIRECIONAR_HOME'
,p_static_id=>'newredirecionar-home'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_dash NUMBER := 0;',
'  v_alert NUMBER := 0;',
'  v_cadastro NUMBER := 0;',
'  v_acessos NUMBER := 0;',
'BEGIN',
'  SELECT ',
'    MAX(CASE WHEN uma.MODULO = ''DASHBOARD'' AND uma.ATIVO = ''S'' THEN 1 ELSE 0 END),',
'    MAX(CASE WHEN uma.MODULO = ''ALERTAS'' AND uma.ATIVO = ''S'' THEN 1 ELSE 0 END),',
'    MAX(CASE WHEN uma.MODULO = ''CADASTRO_USUARIOS'' AND uma.ATIVO = ''S'' THEN 1 ELSE 0 END),',
'    MAX(CASE WHEN uma.MODULO = ''GERENCIADOR_ACESSOS'' AND uma.ATIVO = ''S'' THEN 1 ELSE 0 END)',
'  INTO v_dash, v_alert, v_cadastro, v_acessos',
'  FROM USUARIO_MODULO_ACESSO uma',
'  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
'  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER);',
'',
'  :APP_MOD_DASHBOARD := v_dash;',
'  :APP_MOD_ALERTAS   := v_alert;',
'  :APP_MOD_CADASTRO  := v_cadastro;',
'  :APP_MOD_ACESSOS   := v_acessos;',
'',
'  :APP_MOD_DASHBOARD_DISPLAY  := CASE WHEN v_dash = 1 THEN ''block'' ELSE ''none'' END;',
'  :APP_MOD_ALERTAS_DISPLAY    := CASE WHEN v_alert = 1 THEN ''block'' ELSE ''none'' END;',
'  :APP_MOD_CADASTRO_DISPLAY   := CASE WHEN v_cadastro = 1 THEN ''block'' ELSE ''none'' END;',
'  :APP_MOD_ACESSOS_DISPLAY    := CASE WHEN v_acessos = 1 THEN ''block'' ELSE ''none'' END;',
'  :APP_MOD_SEM_ACESSO_DISPLAY := CASE WHEN v_dash = 0 AND v_alert = 0 AND v_cadastro = 0 AND v_acessos = 0 THEN ''block'' ELSE ''none'' END;',
'',
'  -- Nome formatado corretamente',
'  SELECT INITCAP(NOME || '' '' || SOBRENOME)',
'  INTO :APP_NOME_USUARIO',
'  FROM USUARIOS',
'  WHERE UPPER(LOGIN) = UPPER(:APP_USER);',
'',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'  :APP_MOD_DASHBOARD_DISPLAY  := ''none'';',
'  :APP_MOD_ALERTAS_DISPLAY    := ''none'';',
'  :APP_MOD_CADASTRO_DISPLAY   := ''none'';',
'  :APP_MOD_ACESSOS_DISPLAY    := ''none'';',
'  :APP_MOD_SEM_ACESSO_DISPLAY := ''block'';',
'  :APP_NOME_USUARIO           := :APP_USER;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6887104446147714
,p_created_on=>wwv_flow_imp.dz('20260814113459Z')
,p_updated_on=>wwv_flow_imp.dz('20260814140520Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>unistr('Dashboard Log\00EDstica')
,p_alias=>'DASHBOARD-LOGISTICA'
,p_step_title=>'DASHBOARD'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
unistr('  /* T\00EDtulo do cockpit com barra laranja ArtPetro */'),
'  #R_KPI_JORNADA_CARGA + * h1,',
'  .t-Region-title { color: #000000; }',
'',
'  /* KPIs com borda superior laranja */',
'  .kpi-artpetro .t-Card,',
'  .kpi-artpetro .a-CardView-item,',
'  .kpi-artpetro li {',
'    border-top: 3px solid #E25F21 !important;',
'  }',
'',
unistr('  /* Linha divis\00F3ria laranja abaixo do t\00EDtulo Cockpit */'),
'  .t-Region--scrollBody { border-color: #C9C9C9; }',
'',
'<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css" rel="stylesheet">',
'<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>',
'',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function abrirLog(numPed) {',
'  apex.server.process(''AJAX_LOG_PEDIDO'', {',
'    x01: numPed',
'  }, ',
'  {',
'    dataType: ''text'',',
'    success: function(data) {',
'      var overlay = document.createElement(''div'');',
'      overlay.className = ''log-overlay'';',
'      overlay.onclick = function(e) { if(e.target === overlay) overlay.remove(); };',
'      overlay.innerHTML = ',
'        ''<div class="log-popup">'' +',
'          ''<div class="log-popup-header">'' +',
unistr('            ''<span>Log \2014 Pedido '' + numPed + ''</span>'' +'),
'            ''<button class="log-popup-close" onclick="this.closest(\''.log-overlay\'').remove();">&times;</button>'' +',
'          ''</div>'' +',
'          ''<div class="log-popup-body">'' + data + ''</div>'' +',
'        ''</div>'';',
'      document.body.appendChild(overlay);',
'    }',
'  });',
'}',
'',
'function abrirLogAlertas(numPed) {',
'  apex.server.process(''AJAX_LOG_ALERTAS'', {',
'    x01: numPed',
'  }, ',
'  {',
'    dataType: ''text'',',
'    success: function(data) {',
'      var overlay = document.createElement(''div'');',
'      overlay.className = ''log-overlay'';',
'      overlay.onclick = function(e) { if(e.target === overlay) overlay.remove(); };',
'      overlay.innerHTML = ',
'        ''<div class="log-popup">'' +',
'          ''<div class="log-popup-header" style="background:linear-gradient(135deg,#A32D2D,#7B1F1F);">'' +',
unistr('            ''<span>\D83D\DD14 Alertas \2014 Pedido '' + numPed + ''</span>'' +'),
'            ''<button class="log-popup-close" onclick="this.closest(\''.log-overlay\'').remove();">&times;</button>'' +',
'          ''</div>'' +',
'          ''<div class="log-popup-body">'' + data + ''</div>'' +',
'        ''</div>'';',
'      document.body.appendChild(overlay);',
'    }',
'  });',
'}',
'',
'function reconhecerAlerta(pSeqAlerta) {',
'  apex.server.process(''AJAX_RECONHECER'', {',
'    x01: pSeqAlerta',
'  }, ',
'  {',
'    dataType: ''text'',',
'    success: function(data) {',
'      apex.region(''r-alertas-criticos'').refresh();',
'    },',
'    error: function() {',
'      apex.message.showErrors([{ type: ''error'', location: ''page'', message: ''Erro ao reconhecer alerta'' }]);',
'    }',
'  });',
'}',
'',
'// ==========================================',
'// MODAL CUSTOMIZADO - CONFIRM',
'// ==========================================',
'function customConfirm(mensagem, onConfirm) {',
'  var overlay = document.createElement(''div'');',
'  overlay.style.cssText = ''position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.6);z-index:99999;display:flex;align-items:center;justify-content:center;'';',
'  overlay.innerHTML =',
'    ''<div style="background:#fff;border-radius:10px;padding:28px 24px;max-width:380px;width:90%;box-shadow:0 8px 32px rgba(0,0,0,0.3);">'' +',
'      ''<div style="font-size:14px;color:#333;margin-bottom:20px;line-height:1.5;">'' + mensagem + ''</div>'' +',
'      ''<div style="display:flex;gap:10px;justify-content:flex-end;">'' +',
'        ''<button id="btnCancelar" style="padding:8px 20px;border-radius:6px;border:1px solid #ddd;background:#fff;color:#666;font-size:13px;font-weight:600;cursor:pointer;">Cancelar</button>'' +',
'        ''<button id="btnConfirmar" style="padding:8px 20px;border-radius:6px;border:none;background:#E8700A;color:#fff;font-size:13px;font-weight:600;cursor:pointer;">Confirmar</button>'' +',
'      ''</div>'' +',
'    ''</div>'';',
'  document.body.appendChild(overlay);',
'  document.getElementById(''btnCancelar'').onclick = function() { overlay.remove(); };',
'  document.getElementById(''btnConfirmar'').onclick = function() { overlay.remove(); onConfirm(); };',
'}',
'',
'// ==========================================',
'// MODAL CUSTOMIZADO - PROMPT',
'// ==========================================',
'function customPrompt(mensagem, onConfirm) {',
'  var overlay = document.createElement(''div'');',
'  overlay.style.cssText = ''position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.6);z-index:99999;display:flex;align-items:center;justify-content:center;'';',
'  overlay.innerHTML =',
'    ''<div style="background:#fff;border-radius:10px;padding:28px 24px;max-width:380px;width:90%;box-shadow:0 8px 32px rgba(0,0,0,0.3);">'' +',
'      ''<div style="font-size:14px;color:#333;margin-bottom:12px;line-height:1.5;">'' + mensagem + ''</div>'' +',
'      ''<textarea id="customPromptInput" placeholder="Digite o motivo..." '' +',
'        ''style="width:100%;height:80px;border:1px solid #ddd;border-radius:6px;padding:8px;font-size:13px;resize:none;box-sizing:border-box;margin-bottom:16px;"></textarea>'' +',
'      ''<div style="display:flex;gap:10px;justify-content:flex-end;">'' +',
'        ''<button id="btnCancelar" style="padding:8px 20px;border-radius:6px;border:1px solid #ddd;background:#fff;color:#666;font-size:13px;font-weight:600;cursor:pointer;">Cancelar</button>'' +',
'        ''<button id="btnConfirmar" style="padding:8px 20px;border-radius:6px;border:none;background:#2ECC71;color:#fff;font-size:13px;font-weight:600;cursor:pointer;">Confirmar</button>'' +',
'      ''</div>'' +',
'    ''</div>'';',
'  document.body.appendChild(overlay);',
'  document.getElementById(''btnCancelar'').onclick = function() { overlay.remove(); };',
'  document.getElementById(''btnConfirmar'').onclick = function() {',
'    var motivo = document.getElementById(''customPromptInput'').value.trim();',
'    if (!motivo) {',
'      document.getElementById(''customPromptInput'').style.border = ''1px solid #E74C3C'';',
'      document.getElementById(''customPromptInput'').placeholder = ''Por favor, informe o motivo!'';',
'      return;',
'    }',
'    overlay.remove();',
'    onConfirm(motivo);',
'  };',
'}',
'',
'// ==========================================',
'// REENVIAR WHATSAPP',
'// ==========================================',
'function reenviarWhatsApp(idConfig, numPed) {',
unistr('  customConfirm(''\D83D\DCF1 Reenviar alerta por <strong>WhatsApp</strong> para o pedido <strong>'' + numPed + ''</strong>?'', function() {'),
'    apex.server.process(''AJAX_REENVIAR_WHATSAPP'', {',
'      x01: idConfig,',
'      x02: numPed',
'    }, {',
'      dataType: ''text'',',
'      success: function(data) {',
unistr('        apex.message.showPageSuccess(''\2705 WhatsApp enviado com sucesso!'');'),
'        document.querySelector(''.log-overlay'').remove();',
'        abrirLogAlertas(numPed);',
'      },',
'      error: function() {',
unistr('        apex.message.showErrors([{ type: ''error'', location: ''page'', message: ''\274C Erro ao enviar WhatsApp'' }]);'),
'      }',
'    });',
'  });',
'}',
'',
'// ==========================================',
'// REENVIAR EMAIL',
'// ==========================================',
'function reenviarEmail(idConfig, numPed) {',
unistr('  customConfirm(''\2709\FE0F Reenviar alerta por <strong>Email</strong> para o pedido <strong>'' + numPed + ''</strong>?'', function() {'),
'    apex.server.process(''AJAX_REENVIAR_EMAIL'', {',
'      x01: idConfig,',
'      x02: numPed',
'    }, {',
'      dataType: ''text'',',
'      success: function(data) {',
unistr('        apex.message.showPageSuccess(''\2705 Email enviado com sucesso!'');'),
'        document.querySelector(''.log-overlay'').remove();',
'        abrirLogAlertas(numPed);',
'      },',
'      error: function() {',
unistr('        apex.message.showErrors([{ type: ''error'', location: ''page'', message: ''\274C Erro ao enviar Email'' }]);'),
'      }',
'    });',
'  });',
'}',
'',
'// ==========================================',
'// RESOLVER ALERTA',
'// ==========================================',
'function resolverAlerta(idAlerta, numPed) {',
unistr('  customPrompt(''\2705 Informe o motivo da resolu\00E7\00E3o do alerta para o pedido <strong>'' + numPed + ''</strong>:'', function(motivo) {'),
'    apex.server.process(''AJAX_RESOLVER_ALERTA'', {',
'      x01: idAlerta,',
'      x02: motivo',
'    }, {',
'      dataType: ''text'',',
'      success: function(data) {',
unistr('        apex.message.showPageSuccess(''\2705 Alerta resolvido com sucesso!'');'),
'        document.querySelector(''.log-overlay'').remove();',
'        abrirLogAlertas(numPed);',
'      },',
'      error: function() {',
unistr('        apex.message.showErrors([{ type: ''error'', location: ''page'', message: ''\274C Erro ao resolver alerta'' }]);'),
'      }',
'    });',
'  });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Cabe\00E7alho das tabelas \2014 gradiente laranja ArtPetro (igual Page 3) */'),
'.a-IRR-header, .a-IRR-table th, .t-Report-colHead {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'  border-right: 1px solid rgba(255,255,255,0.3) !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'}',
'.a-IRR-header:last-child, .a-IRR-table th:last-child {',
'  border-right: none !important;',
'}',
unistr('/* Links dos cabe\00E7alhos (t\00EDtulos clic\00E1veis das colunas) */'),
'.a-IRR-headerLink, .a-IRR-header a, .a-IRR-table th a, .t-Report-colHead a {',
'  color: white !important;',
'  text-decoration: none !important;',
'}',
'.a-IRR-headerLink:hover, .a-IRR-header a:hover {',
'  color: #FFF9F5 !important;',
'  text-decoration: none !important;',
'}',
'/* Barra de ferramentas de cada tabela */',
'.a-IRR-toolbar {',
'  border-top: 3px solid #E25F21;',
'}',
unistr('/* T\00EDtulo das regi\00F5es */'),
'.t-Region-title {',
'  color: #E25F21 !important;',
'  border-bottom: 2px solid #E25F21;',
'  padding-bottom: 8px;',
'}',
unistr('/* C\00E9lulas \2014 mesmo respiro da Page 3 */'),
'.a-IRR-table td {',
'  padding: 12px !important;',
'  border-bottom: 1px solid #f0f0f0 !important;',
'  border-right: 1px solid #f5f5f5 !important;',
'}',
'.a-IRR-table td:last-child {',
'  border-right: none !important;',
'}',
unistr('/* Hover nas linhas \2014 tom da Page 3 */'),
'.a-IRR-table tbody tr:hover td,',
'.t-Report-report tbody tr:hover td {',
'  background-color: #FFF8F5 !important;',
'  transition: background 0.15s;',
'}',
'/* Linha inteira tingida quando tem status vermelho */',
'.a-IRR-table tbody tr:has(.st-atrasado) td,',
'.a-IRR-table tbody tr:has(.nv-critico) td {',
'  background-color: #F5D0D0 !important;',
'  border-bottom: 1px solid #E89999 !important;',
'}',
unistr('/* Hover da linha vermelha continua distingu\00EDvel */'),
'.a-IRR-table tbody tr:has(.st-atrasado):hover td,',
'.a-IRR-table tbody tr:has(.nv-critico):hover td {',
'  background-color: #F0BFBF !important;',
'}',
'/* Linhas coloridas por status */',
'.a-IRR-table tbody tr:has(.st-atrasado) td {',
'  background-color: #F5D0D0 !important;',
'  border-bottom: 1px solid #E89999 !important;',
'}',
'.a-IRR-table tbody tr:has(.st-emrota) td {',
'  background-color: #EAF1F8 !important;',
'  border-bottom: 1px solid #A9C9E8 !important;',
'}',
'.a-IRR-table tbody tr:has(.st-aguardando) td {',
'  background-color: #FEF6D8 !important;',
'  border-bottom: 1px solid #F5D76E !important;',
'}',
'.a-IRR-table tbody tr:has(.st-entregue) td {',
'  background-color: #E6F4EA !important;',
'  border-bottom: 1px solid #A8D8B9 !important;',
'}',
'',
'/* Hover das linhas coloridas */',
'.a-IRR-table tbody tr:has(.st-atrasado):hover td {',
'  background-color: #F0BFBF !important;',
'}',
'.a-IRR-table tbody tr:has(.st-emrota):hover td {',
'  background-color: #D4E6F7 !important;',
'}',
'.a-IRR-table tbody tr:has(.st-aguardando):hover td {',
'  background-color: #FBEDCD !important;',
'}',
'.a-IRR-table tbody tr:has(.st-entregue):hover td {',
'  background-color: #D1EEE0 !important;',
'}',
'',
'.log-overlay {',
'  position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.5);z-index:9999;display:flex;align-items:center;justify-content:center;',
'}',
'.log-popup {',
'  background:#fff;border-radius:10px;width:700px;max-width:90vw;box-shadow:0 8px 30px rgba(0,0,0,0.3);overflow:hidden;',
'}',
'.log-popup-header {',
'  background:#E25F21;color:#fff;padding:12px 16px;font-size:14px;font-weight:600;display:flex;justify-content:space-between;align-items:center;',
'}',
'.log-popup-close {',
'  background:none;border:none;color:#fff;font-size:20px;cursor:pointer;line-height:1;',
'}',
'.log-popup-body {',
'  padding:12px 16px;',
'}',
'',
unistr('/* KPIs \2014 n\00FAmero gigante em negrito */'),
'.kpi-artpetro .a-CardView-mainContent {',
'  font-size: 48px !important;',
'  font-weight: 900 !important;',
'  color: #2c2c2a !important;',
'  text-align: left !important;',
'  padding: 8px 16px 16px !important;',
'  line-height: 1 !important;',
'}',
'.kpi-artpetro .a-CardView-title,',
'.kpi-artpetro .a-CardView-header {',
'  font-size: 13px !important;',
'  font-weight: 600 !important;',
'  color: #61615E !important;',
'  text-transform: uppercase !important;',
'}',
'',
'.col-selecionar {',
'  max-width: 80px !important;',
'  width: 80px !important;',
'}',
'',
unistr('/* Bot\00E3o Disparar Alertas */'),
'button[class*="t-Button"]:contains("Disparar Alertas") {',
'  padding: 12px 25px !important;',
'  font-size: 15px !important;',
'  font-weight: bold !important;',
'  min-width: 220px !important;',
'  background-color: #E25F21 !important;',
'  border-radius: 4px !important;',
'  white-space: nowrap !important;',
'}',
'',
'#B21847500858644975585:disabled {',
'  opacity: 0.5;',
'  cursor: not-allowed;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14667229839029412)
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_created_on=>wwv_flow_imp.dz('20260727145223Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260818160446Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21358889430511955310)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_plug_display_condition_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260727145224Z')
,p_updated_on=>wwv_flow_imp.dz('20260728011228Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21431423925761946965)
,p_plug_name=>'JORNADA DA CARGA'
,p_static_id=>'jornada-da-carga'
,p_title=>'Jornada da Carga'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH alertas_abertos AS (',
'    SELECT ID_REFERENCIA, COUNT(*) AS QTD_ALERTAS',
'    FROM DAB_ALERTAS',
'    WHERE STATUS = ''ATIVO''',
'    GROUP BY ID_REFERENCIA',
')',
'SELECT ',
'    v.num_ped AS "Selecionar",',
'    ',
'    ''<div style="display:flex;gap:6px;align-items:center;">'' ||',
'      ''<a href="javascript:void(0);" onclick="abrirLog('''''' || v.num_ped || '''''');" style="display:inline-flex;align-items:center;justify-content:center;width:28px;height:28px;border-radius:6px;background:#F5F5F5;border:1px solid #E0E0E0;cursor:pointer'
||';flex-shrink:0;" title="Ver log"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#666" stroke-width="2"><circle cx="12" cy="12" r="3"/><path d="M19.4 15a1.65 1.65 0 00.33 1.82l.06.06a2 2 0 010 2.83 2 2 0 01-2.83 0l-.06-.06a1.65 1.'
||'65 0 00-1.82-.33 1.65 1.65 0 00-1 1.51V21a2 2 0 01-4 0v-.09A1.65 1.65 0 009 19.4a1.65 1.65 0 00-1.82.33l-.06.06a2 2 0 01-2.83 0 2 2 0 010-2.83l.06-.06A1.65 1.65 0 004.68 15a1.65 1.65 0 00-1.51-1H3a2 2 0 010-4h.09A1.65 1.65 0 004.6 9a1.65 1.65 0 00-.3'
||'3-1.82l-.06-.06a2 2 0 010-2.83 2 2 0 012.83 0l.06.06A1.65 1.65 0 009 4.68a1.65 1.65 0 001-1.51V3a2 2 0 014 0v.09a1.65 1.65 0 001 1.51 1.65 1.65 0 001.82-.33l.06-.06a2 2 0 012.83 0 2 2 0 010 2.83l-.06.06a1.65 1.65 0 00-.33 1.82V9a1.65 1.65 0 001.51 1H'
||'21a2 2 0 010 4h-.09a1.65 1.65 0 00-1.51 1z"/></svg></a>'' ||',
'      CASE WHEN aa.QTD_ALERTAS > 0 ',
'        THEN ''<a href="javascript:void(0);" onclick="abrirLogAlertas('''''' || v.num_ped || '''''');" style="display:inline-flex;align-items:center;justify-content:center;width:28px;height:28px;border-radius:50%;background:#FCEBEB;border:2px solid #A32D2D;'
||unistr('cursor:pointer;font-weight:700;color:#A32D2D;font-size:12px;flex-shrink:0;" title="Ver alertas">\D83D\DD14</a>'' '),
'        ELSE ''<a href="javascript:void(0);" onclick="abrirLogAlertas('''''' || v.num_ped || '''''');" style="display:inline-flex;align-items:center;justify-content:center;width:28px;height:28px;border-radius:50%;background:#F5F5F5;border:1px solid #E0E0E0;'
||unistr('cursor:pointer;font-size:12px;flex-shrink:0;" title="Ver alertas">\D83D\DD14</a>'''),
'      END ||',
'    ''</div>'' AS "LOG/Alertas",',
'',
'    ''<span style="display:inline-block;background:#F5D5C0;color:#C04A1A;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:700;border:1px solid #E25F21;">'' || v.num_ped || ''</span><br/>'' || ',
unistr('    TO_CHAR(v.data_pedido, ''DD/MM HH24:MI'') AS "N\00BA Pedido - Dt Hora",'),
'',
'    CASE v.tipo',
'      WHEN ''C'' THEN ''<span style="display:inline-block;background:#EBF5FB;color:#2E86C1;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #3498DB;">Compra</span>''',
unistr('      WHEN ''T'' THEN ''<span style="display:inline-block;background:#F4ECF7;color:#7D3C98;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #A569BD;">Transfer\00EAncia</span>'''),
'      ELSE v.tipo',
'    END AS "Tipo Pedido",',
'',
'    CASE v.sispetro_status',
unistr('      WHEN ''ENTREGUE''   THEN ''<span style="display:inline-block;background:#D5F4E6;color:#27AE60;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #27AE60;">\2713 Entregue</span>'''),
unistr('      WHEN ''EM TR\00C2NSITO'' THEN ''<span style="display:inline-block;background:#FEF5E7;color:#F39C12;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #F39C12;">\279C Em Tr\00E2nsito</span>'''),
unistr('      WHEN ''AGUARDANDO'' THEN ''<span style="display:inline-block;background:#EBF5FB;color:#2E86C1;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #3498DB;">\23F3 Aguardando</span>'''),
unistr('      WHEN ''CANCELADO''  THEN ''<span style="display:inline-block;background:#FADBD8;color:#E74C3C;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E74C3C;">\2715 Cancelado</span>'''),
unistr('      WHEN ''CARREGADO''  THEN ''<span style="display:inline-block;background:#F5D5C0;color:#C04A1A;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E25F21;">\D83D\DCE6 Carregado</span>'''),
'      ELSE ''<span style="display:inline-block;background:#F0F0F0;color:#999;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #DDD;">'' || NVL(v.sispetro_status,''-'') || ''</span>''',
'    END AS "Status Pedido",',
'',
'    ''<span style="display:inline-block;background:#E8F8F5;color:#16A085;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:700;border:1px solid #1ABC9C;">'' || v.numero_oc || ''</span><br/>'' || ',
'    TO_CHAR(v.data_oc, ''DD/MM HH24:MI'') AS "OC - Dt Hora",',
'',
unistr('    ROUND(v.qtde_pedido, 0) || '' m\00B3'' AS "Qtde Solicitada",'),
unistr('    ROUND(v.qtde_programada, 0) || '' m\00B3'' AS "Qtde Programada",'),
'',
'    CASE ',
'      WHEN v.sispetro_status = ''CANCELADO'' THEN',
unistr('        ''<span style="display:inline-block;background:#FADBD8;color:#E74C3C;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E74C3C;">\2715 N/A</span>'''),
'      WHEN v.qtde_pedido = v.qtde_programada THEN',
unistr('        ''<span style="display:inline-block;background:#D5F4E6;color:#27AE60;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #27AE60;">\2713 0 m\00B3</span>'''),
'      WHEN v.qtde_programada = 0 THEN',
unistr('        ''<span style="display:inline-block;background:#FADBD8;color:#E74C3C;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E74C3C;">\25BC '' || ROUND(v.qtde_pedido, 0) || '' m\00B3</span>'''),
'      ELSE',
unistr('        ''<span style="display:inline-block;background:#FEF5E7;color:#F39C12;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #F39C12;">\25BC '' || ROUND(v.qtde_pedido - v.qtde_programada, 0) || '' m\00B3</span>'''),
unistr('    END AS "Diferen\00E7a",'),
'',
unistr('    ROUND(v.qtde_faturada, 0) || '' m\00B3'' AS "Qtde Faturada",'),
'    v.produto AS "Produto",',
'',
'    CASE WHEN v.cod_engerisco IS NOT NULL THEN',
'      ''<span style="display:inline-block;background:#F4ECF7;color:#7D3C98;padding:3px 8px;border-radius:4px;font-size:11px;font-weight:700;border:1px solid #A569BD;">'' || v.cod_engerisco || ''</span><br/>'' || TO_CHAR(v.data_prog_engerisco, ''DD/MM HH24'
||':MI'')',
'    ELSE ''-'' END AS "Prog. Engerisco",',
'',
'    CASE v.status_oc',
unistr('      WHEN ''Cancelada''               THEN ''<span style="display:inline-block;background:#FADBD8;color:#E74C3C;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E74C3C;">\274C Cancelada</span>'''),
unistr('      WHEN ''Sem Ve\00EDculo Alocado''     THEN ''<span style="display:inline-block;background:#F4ECF7;color:#7D3C98;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #A569BD;">\D83D\DEAB Sem Ve\00EDculo Alocado</span>'''),
unistr('      WHEN ''Aguardando Carregamento'' THEN ''<span style="display:inline-block;background:#EBF5FB;color:#2E86C1;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #3498DB;">\23F3 Aguardando Carregamento</span>'''),
unistr('      WHEN ''Em Tr\00E2nsito''             THEN ''<span style="display:inline-block;background:#FEF5E7;color:#F39C12;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #F39C12;">\D83D\DE9A Em Tr\00E2nsito</span>'''),
unistr('      WHEN ''Atrasado''                THEN ''<span style="display:inline-block;background:#FADBD8;color:#E74C3C;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #E74C3C;">\26A0\FE0F Atrasado</span>'''),
unistr('      WHEN ''Entregue''                THEN ''<span style="display:inline-block;background:#D5F4E6;color:#27AE60;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #27AE60;">\2705 Entregue</span>'''),
unistr('      ELSE ''<span style="display:inline-block;background:#F0F0F0;color:#999;padding:4px 8px;border-radius:4px;font-size:11px;font-weight:600;border:1px solid #DDD;">\25CB '' || NVL(v.status_oc, ''-'') || ''</span>'''),
'    END AS "Status OC",',
'',
'    NVL(v.motorista, ''-'') AS "Motorista",',
'    NVL(v.origem_rota, ''-'') AS "Cidade Origem",',
'    NVL(v.destino_rota, ''-'') AS "Cidade Destino"',
'',
'FROM vw_jornada_carga v',
'LEFT JOIN alertas_abertos aa ON aa.id_referencia = v.num_ped',
'WHERE v.numero_oc IS NOT NULL',
'ORDER BY v.data_pedido DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Jornada da Carga'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260728003952Z')
,p_updated_on=>wwv_flow_imp.dz('20260818145707Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21431424057770946966)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>21418771873668940903
,p_created_on=>wwv_flow_imp.dz('20260728003952Z')
,p_updated_on=>wwv_flow_imp.dz('20260818145707Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15256932410495761)
,p_db_column_name=>'Cidade Destino'
,p_display_order=>200
,p_column_identifier=>'AI'
,p_column_label=>'Cidade Destino'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260818102528Z')
,p_updated_on=>wwv_flow_imp.dz('20260818102528Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15256877104495760)
,p_db_column_name=>'Cidade Origem'
,p_display_order=>190
,p_column_identifier=>'AH'
,p_column_label=>'Cidade Origem'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260818102528Z')
,p_updated_on=>wwv_flow_imp.dz('20260818102528Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14536040468708791)
,p_db_column_name=>unistr('Diferen\00E7a')
,p_display_order=>170
,p_column_identifier=>'AF'
,p_column_label=>unistr('DIFEREN\00C7A')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260814150612Z')
,p_updated_on=>wwv_flow_imp.dz('20260814150706Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14259525260622560)
,p_db_column_name=>'LOG/Alertas'
,p_display_order=>10
,p_column_identifier=>'U'
,p_column_label=>'LOG/ALERTAS'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21431424490422946971)
,p_db_column_name=>'Motorista'
,p_display_order=>140
,p_column_identifier=>'E'
,p_column_label=>'MOTORISTA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260728003952Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14259635084622561)
,p_db_column_name=>unistr('N\00BA Pedido - Dt Hora')
,p_display_order=>20
,p_column_identifier=>'V'
,p_column_label=>unistr('N\00BA PEDIDO - DATA/HORA')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14259795662622562)
,p_db_column_name=>'OC - Dt Hora'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'OC - DATA/HORA'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260111368622566)
,p_db_column_name=>'Produto'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'PRODUTO'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260232194622567)
,p_db_column_name=>'Prog. Engerisco'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'PROG - ENGERISCO '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101909Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260042761622565)
,p_db_column_name=>'Qtde Faturada'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'QTDE FATURADA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14259910439622564)
,p_db_column_name=>'Qtde Programada'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'QTDE PROGRAMADA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14259823270622563)
,p_db_column_name=>'Qtde Solicitada'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'QTDE SOLICITADA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812101908Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15257163085495763)
,p_db_column_name=>'Selecionar'
,p_display_order=>210
,p_column_identifier=>'AJ'
,p_column_label=>'SELECIONAR'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_css_classes=>'col-selecionar'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260818143904Z')
,p_updated_on=>wwv_flow_imp.dz('20260818145342Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14537866756708809)
,p_db_column_name=>'Status OC'
,p_display_order=>180
,p_column_identifier=>'AG'
,p_column_label=>'STATUS OC'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260818102528Z')
,p_updated_on=>wwv_flow_imp.dz('20260818102653Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094620434479534688)
,p_db_column_name=>'Status Pedido'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'STATUS PEDIDO '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731190544Z')
,p_updated_on=>wwv_flow_imp.dz('20260812102725Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094620359819534687)
,p_db_column_name=>'Tipo Pedido'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'TIPO PEDIDO '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260731190544Z')
,p_updated_on=>wwv_flow_imp.dz('20260814150626Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21433817547236480624)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>unistr('Selecionar:LOG/Alertas:N\00BA Pedido - Dt Hora:Tipo Pedido:Status Pedido:OC - Dt Hora:Qtde Solicitada:Qtde Programada:Qtde Faturada:Diferen\00E7a:Produto:Status OC:Prog. Engerisco:Motorista:Cidade Destino:Cidade Origem')
,p_created_on=>wwv_flow_imp.dz('20260728003957Z')
,p_updated_on=>wwv_flow_imp.dz('20260818145707Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21404208069250552966)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    HTP.P(''<div style="display:flex; justify-content:flex-end; align-items:center; gap:8px; color:#5F5E5A; font-size:13px; padding:4px 0;">'');',
'    HTP.P(''<span style="display:inline-block; width:8px; height:8px; background:#1D9E75; border-radius:50%;"></span>'');',
'    HTP.P(''Atualizado em '' || TO_CHAR(SYSTIMESTAMP AT TIME ZONE ''America/Sao_Paulo'', ''DD/MM/YYYY HH24:MI''));',
'    HTP.P(''</div>'');',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20260727195719Z')
,p_updated_on=>wwv_flow_imp.dz('20260728171925Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21431423801934946964)
,p_plug_name=>'Cockpit'
,p_static_id=>'new_1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>12
,p_plug_display_column=>1
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_ultima_sync   VARCHAR2(20);',
'BEGIN',
'    v_ultima_sync := TO_CHAR(SYSTIMESTAMP AT TIME ZONE ''America/Sao_Paulo'', ''HH24:MI'');',
'    HTP.P(''<div style="display:flex; justify-content:space-between; align-items:center; padding:8px 4px; flex-wrap:wrap; gap:12px;">'');',
'    HTP.P(''<div></div>'');',
'    HTP.P(''<div style="display:flex; gap:12px; align-items:center;">'');',
'    HTP.P(''<span style="display:inline-flex; align-items:center; gap:7px; background:#E6F4EA; color:#1E7B45; padding:7px 14px; border-radius:22px; border:1px solid #A8D8B9; font-size:14px; font-weight:600;">'');',
'    HTP.P(''<span style="width:9px; height:9px; border-radius:50%; background:#1E7B45;"></span>'');',
'    HTP.P(''Sispetro &middot; sync '' || v_ultima_sync);',
'    HTP.P(''</span>'');',
'    HTP.P(''<span style="display:inline-flex; align-items:center; gap:7px; background:#FBECEC; color:#9A2B2B; padding:7px 14px; border-radius:22px; border:1px solid #E8AEAE; font-size:14px; font-weight:600;">'');',
'    HTP.P(''<span style="width:9px; height:9px; border-radius:50%; background:#9A2B2B;"></span>'');',
'    HTP.P(''Engerisco &middot; aguardando API'');',
'    HTP.P(''</span>'');',
'    HTP.P(''</div>'');',
'    HTP.P(''</div>'');',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20260728001013Z')
,p_updated_on=>wwv_flow_imp.dz('20260730131427Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21373024733640535776)
,p_plug_name=>'R_ALERTAS_CRITICOS'
,p_static_id=>'r-alertas-criticos'
,p_title=>'Alertas Disparados'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ALERTA_LOG,',
'    CASE SEVERIDADE',
unistr('      WHEN 2 THEN ''<span class="nv-critico" style="display:inline-flex;padding:2px 9px;border-radius:20px;font-size:11px;font-weight:700;background:#FCEBEB;color:#791F1F;border:1px solid #F09595;">CR\00CDTICO</span>'''),
'      WHEN 1 THEN ''<span style="display:inline-flex;padding:2px 9px;border-radius:20px;font-size:11px;font-weight:700;background:#FEF6D8;color:#7a5c00;border:1px solid #F5D76E;">AVISO</span>''',
'      ELSE ''<span style="display:inline-flex;padding:2px 9px;border-radius:20px;font-size:11px;font-weight:700;background:#EAF1F8;color:#2C5F8A;border:1px solid #A9C9E8;">INFO</span>''',
unistr('    END AS "N\00EDvel",'),
'    DESCRICAO_ALERTA AS "Alerta",',
'    TO_CHAR(DATA_ALERTA, ''HH24:MI'') AS "Hora",',
'    ''<button type="button" onclick="reconhecerAlerta('' || SEQ_ALERTA_LOG || '');" '' ||',
unistr('    ''style="background:#E6F4EA;color:#1E7B45;border:1px solid #A8D8B9;border-radius:6px;padding:4px 12px;font-size:12px;font-weight:600;cursor:pointer;">\D83D\DC41 Reconhecer</button>'' AS "A\00E7\00E3o",'),
'    STATUS_ALERTA',
'FROM DAB_SISPETRO_ALERTAS_LOG',
'WHERE STATUS_ALERTA IN (''DISPARADO'', ''ENVIADO'', ''LIDO'')',
'  AND (DATA_SILENCIADO_ATE IS NULL OR DATA_SILENCIADO_ATE < SYSTIMESTAMP)',
'ORDER BY DATA_ALERTA DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'1=0'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Alertas Disparados'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260727181225Z')
,p_updated_on=>wwv_flow_imp.dz('20260803202646Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21373024870909535777)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>200
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>21360372686807529714
,p_created_on=>wwv_flow_imp.dz('20260727181225Z')
,p_updated_on=>wwv_flow_imp.dz('20260803132118Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21855146649469536899)
,p_db_column_name=>'Alerta'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'ALERTA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730123238Z')
,p_updated_on=>wwv_flow_imp.dz('20260730125923Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094618019427534664)
,p_db_column_name=>unistr('A\00E7\00E3o')
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>unistr('A\00C7\00C3O')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730140652Z')
,p_updated_on=>wwv_flow_imp.dz('20260730182132Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21855146695524536900)
,p_db_column_name=>'Hora'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>'HORA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730123238Z')
,p_updated_on=>wwv_flow_imp.dz('20260730125939Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21855146517352536898)
,p_db_column_name=>unistr('N\00EDvel')
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>unistr('N\00CDVEL')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730123238Z')
,p_updated_on=>wwv_flow_imp.dz('20260730125914Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094621007283534694)
,p_db_column_name=>'SEQ_ALERTA_LOG'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Seq Alerta Log'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260803132118Z')
,p_updated_on=>wwv_flow_imp.dz('20260803132118Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094621183833534695)
,p_db_column_name=>'STATUS_ALERTA'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Status Alerta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260803132118Z')
,p_updated_on=>wwv_flow_imp.dz('20260803132118Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21394309142072808929)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('Alerta:Hora:N\00EDvel:A\00E7\00E3o')
,p_created_on=>wwv_flow_imp.dz('20260727181227Z')
,p_updated_on=>wwv_flow_imp.dz('20260730182249Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21373025394961535783)
,p_plug_name=>'R_ALERTAS_PIZZA'
,p_static_id=>'r-alertas-pizza'
,p_title=>'Alertas de Pedidos'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20260727181445Z')
,p_updated_on=>wwv_flow_imp.dz('20260728171925Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(21373025547218535784)
,p_region_id=>wwv_flow_imp.id(21373025394961535783)
,p_chart_type=>'pie'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260727181445Z')
,p_updated_on=>wwv_flow_imp.dz('20260727195840Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(21373025629589535785)
,p_chart_id=>wwv_flow_imp.id(21373025547218535784)
,p_static_id=>'new_1'
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       TIPO_ALERTA,',
'       QTDE',
'   FROM VW_ALERTAS_POR_TIPO'))
,p_series_type=>'pie'
,p_series_name_column_name=>'TIPO_ALERTA'
,p_items_value_column_name=>'QTDE'
,p_items_label_column_name=>'TIPO_ALERTA'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20260727181445Z')
,p_updated_on=>wwv_flow_imp.dz('20260727195840Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21404211137130552997)
,p_plug_name=>'R_KANBAN'
,p_static_id=>'r-kanban'
,p_title=>'FLUXO DE ORDEM DE CARGA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>90
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  CURSOR c_col IS',
'    SELECT ''Aguardando Carregamento'' status, ''#FEF6D8'' bg_head, ''#7a5c00'' cor_head, ''#E8B923'' cor_borda FROM dual UNION ALL',
unistr('    SELECT ''Sem Ve\00EDculo Alocado'',''#F4ECF7'',''#7D3C98'',''#A569BD'' FROM dual UNION ALL'),
unistr('    SELECT ''Em Tr\00E2nsito'',''#EAF1F8'',''#2C5F8A'',''#2C5F8A'' FROM dual UNION ALL'),
'    SELECT ''Atrasado'',''#FCEBEB'',''#791F1F'',''#A32D2D'' FROM dual UNION ALL',
'    SELECT ''Entregue'',''#E6F4EA'',''#1E7B45'',''#1E7B45'' FROM dual UNION ALL',
'    SELECT ''Cancelada'',''#F9F0F0'',''#7F7F7F'',''#C9C9C9'' FROM dual;',
'  v_qtd NUMBER;',
'  v_html CLOB := '''';',
'BEGIN',
'  v_html := v_html || ''<div style="display:flex; gap:10px; align-items:flex-start;">'';',
'  FOR col IN c_col LOOP',
'    SELECT COUNT(*) INTO v_qtd FROM vw_jornada_carga WHERE status_oc = col.status;',
'    v_html := v_html || ''<div style="flex:1; min-width:0; background:#f7f7f5; border-radius:10px; overflow:hidden;">'';',
'    v_html := v_html || ''<div style="padding:8px 12px; background:''||col.bg_head||''; color:''||col.cor_head||''; font-size:12px; font-weight:600; display:flex; justify-content:space-between; align-items:center;">'';',
'    v_html := v_html || ''<span>''||col.status||''</span><span style="background:''||col.cor_borda||''; color:#fff; border-radius:20px; padding:1px 8px; font-size:10px;">''||v_qtd||''</span>'';',
'    v_html := v_html || ''</div><div style="padding:6px; display:flex; flex-direction:column; gap:6px;">'';',
'    FOR j IN (',
'      SELECT num_ped,',
'             NVL(cliente, ''sem cliente'') cliente,',
'             NVL(produto, ''sem produto'') produto,',
'             NVL(veiculo_placa,''sem veiculo'') placa,',
'             NVL(motorista,''sem motorista'') motorista,',
'             NVL(''R$ ''||TO_CHAR(frete_valor,''FM999G999D00''),''sem frete'') frete',
'      FROM vw_jornada_carga',
'      WHERE status_oc = col.status',
'      ORDER BY num_ped',
'      FETCH FIRST 5 ROWS ONLY',
'    ) LOOP',
'      v_html := v_html || ''<div style="background:#fff; border:0.5px solid #e5e5e0; border-left:3px solid ''||col.cor_borda||''; border-radius:5px; padding:7px 9px;">'';',
'      v_html := v_html || ''<div style="font-size:12px; font-weight:700; color:#2c2c2a; margin-bottom:2px;">Pedido ''||j.num_ped||''</div>'';',
'      v_html := v_html || ''<div style="font-size:11px; font-weight:600; color:#3d3d3b; margin-bottom:2px;">''||j.cliente||''</div>'';',
'      v_html := v_html || ''<div style="font-size:10px; font-weight:500; color:''||col.cor_borda||''; margin-bottom:3px;">''||j.produto||''</div>'';',
unistr('      v_html := v_html || ''<div style="font-size:10px; color:#888780; margin-bottom:1px;">''||j.placa||'' \00B7 ''||j.motorista||''</div>'';'),
'      v_html := v_html || ''<div style="font-size:10px; color:#aaa8a0;">''||j.frete||''</div>'';',
'      v_html := v_html || ''</div>'';',
'    END LOOP;',
'    IF v_qtd = 0 THEN',
'      v_html := v_html || ''<div style="font-size:10px; color:#b4b2a9; text-align:center; padding:12px 0;">nenhum pedido</div>'';',
'    END IF;',
'    v_html := v_html || ''</div></div>'';',
'  END LOOP;',
'  v_html := v_html || ''</div>'';',
'  RETURN v_html;',
'END;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_created_on=>wwv_flow_imp.dz('20260728184810Z')
,p_updated_on=>wwv_flow_imp.dz('20260818122701Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22094621309299534697)
,p_plug_name=>'R_KPI_JORNADA_CARGA'
,p_static_id=>'r-kpi-jornada-carga'
,p_title=>'Jornada da Carga'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2074200852440250129
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT ''\26A0\FE0F ATRASADAS'' titulo, (SELECT COUNT(*) FROM vw_jornada_carga WHERE status_oc = ''Atrasado'') valor, ''danger'' cor, ''alert'' icone FROM DUAL'),
unistr('UNION ALL SELECT ''\D83D\DE9A EM TR\00C2NSITO'', (SELECT COUNT(*) FROM vw_jornada_carga WHERE status_oc = ''Em Tr\00E2nsito''), ''info'', ''arrow-right'' FROM DUAL'),
unistr('UNION ALL SELECT ''\23F3 AGUARDANDO'', (SELECT COUNT(*) FROM vw_jornada_carga WHERE status_oc IN (''Aguardando Carregamento'', ''Sem Ve\00EDculo Alocado'')), ''warning'', ''clock'' FROM DUAL'),
unistr('UNION ALL SELECT ''\2705 ENTREGUES'', (SELECT COUNT(*) FROM vw_jornada_carga WHERE status_oc = ''Entregue''), ''success'', ''check'' FROM DUAL'),
unistr('UNION ALL SELECT ''\2715 CANCELADOS'', (SELECT COUNT(*) FROM vw_jornada_carga WHERE status_oc = ''Cancelada''), ''danger'', ''times'' FROM DUAL')))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_created_on=>wwv_flow_imp.dz('20260803185347Z')
,p_updated_on=>wwv_flow_imp.dz('20260818122331Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(22094621384990534698)
,p_region_id=>wwv_flow_imp.id(22094621309299534697)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'VALOR'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'TITULO'
,p_updated_on=>wwv_flow_imp.dz('20260814152408Z')
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21373027937957535808)
,p_plug_name=>'R_TODOS_ALERTAS'
,p_static_id=>'r-todos-alertas'
,p_title=>'Todos os Alertas'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3224648155363603145
,p_plug_display_sequence=>80
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_ALERTA,',
'    TIPO_ALERTA,',
'    DESCRICAO,',
'    STATUS,',
'    TO_CHAR(DATA_CRIACAO, ''DD/MM HH24:MI'') AS DATA_CRIACAO_FMT,',
'    CASE SEVERIDADE',
'        WHEN ''CRITICO'' THEN ''<span style="display:inline-flex;align-items:center;gap:6px;padding:4px 12px;border-radius:20px;font-size:12px;font-weight:600;background:#FCEBEB;color:#791F1F;border:1px solid #F09595;"><span style="width:7px;height:7px;'
||unistr('border-radius:50%;background:#A32D2D;"></span>CR\00CDTICO</span>'''),
'        WHEN ''ALTO'' THEN ''<span style="display:inline-flex;align-items:center;gap:6px;padding:4px 12px;border-radius:20px;font-size:12px;font-weight:600;background:#FAECE7;color:#712B13;border:1px solid #F0997B;"><span style="width:7px;height:7px;bor'
||'der-radius:50%;background:#D85A30;"></span>ALTO</span>''',
'        WHEN ''MEDIO'' THEN ''<span style="display:inline-flex;align-items:center;gap:6px;padding:4px 12px;border-radius:20px;font-size:12px;font-weight:600;background:#FEF6D8;color:#7a5c00;border:1px solid #F5D76E;"><span style="width:7px;height:7px;bo'
||unistr('rder-radius:50%;background:#E8B923;"></span>M\00C9DIO</span>'''),
'    END AS SEVERIDADE_BADGE',
'FROM DAB_ALERTAS',
'ORDER BY DBMS_RANDOM.VALUE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Todos os Alertas'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260728171925Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21373028020628535809)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>350
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>21360375836526529746
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727234352Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21404207954176552965)
,p_db_column_name=>'DATA_CRIACAO_FMT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Data/Hora'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727200708Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21373028359033535812)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727200615Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21373028113277535810)
,p_db_column_name=>'SEQ_ALERTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('N\00BA')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727200555Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21404208249190552968)
,p_db_column_name=>'SEVERIDADE_BADGE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727202106Z')
,p_updated_on=>wwv_flow_imp.dz('20260727234237Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21404207871509552964)
,p_db_column_name=>'STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727234352Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21373028186218535811)
,p_db_column_name=>'TIPO_ALERTA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Tipo '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260727191847Z')
,p_updated_on=>wwv_flow_imp.dz('20260727200604Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21404409603965207111)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SEQ_ALERTA:TIPO_ALERTA:DESCRICAO:STATUS:DATA_CRIACAO_FMT'
,p_created_on=>wwv_flow_imp.dz('20260727191849Z')
,p_updated_on=>wwv_flow_imp.dz('20260727202106Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21855147963460536912)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21431423925761946965)
,p_button_name=>'BTN_DISPARAR_ALERTAS'
,p_static_id=>'btn-disparar-alertas'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Disparar Alertas'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
,p_button_cattributes=>'style="background:#E25F21;color:#fff;border:none;font-weight:600;"'
,p_created_on=>wwv_flow_imp.dz('20260730132335Z')
,p_updated_on=>wwv_flow_imp.dz('20260818150321Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22094619614093534680)
,p_name=>'P2_ALERTA_RECONHECER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21431423801934946964)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260731133353Z')
,p_updated_on=>wwv_flow_imp.dz('20260803135930Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21855146804943536901)
,p_name=>'P2_MOSTRAR_KANBAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21431423801934946964)
,p_item_default=>'N'
,p_prompt=>'Fluxo de Ordem de Carga'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260730124109Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124737Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15257292619495764)
,p_name=>'DA_ADICIONAR_CHECKBOXES'
,p_static_id=>'da-adicionar-checkboxes'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_created_on=>wwv_flow_imp.dz('20260818144420Z')
,p_updated_on=>wwv_flow_imp.dz('20260818160047Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15257384820495765)
,p_event_id=>wwv_flow_imp.id(15257292619495764)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'setTimeout(function() {',
    '  console.log(''Buscando checkboxes...'');',
    '  ',
    '  var tabela = $(''table tbody'').first();',
    '  ',
    '  tabela.find(''tr'').each(function(index) {',
    '    var primeiraCelula = $(this).find(''td'').eq(0);',
    '    var valor = primeiraCelula.text().trim();',
    '    ',
    '    if (valor && !isNaN(valor)) {',
    '      primeiraCelula.html(''<input type="checkbox" class="pedido-checkbox" value="'' + valor + ''" />'');',
    '    }',
    '  });',
    '  ',
    unistr('  // Fun\00E7\00E3o de atualizar contador'),
    '  function atualizarContador() {',
    '    var count = $(''.pedido-checkbox:checked'').length;',
    '    var btn = $(''button'').filter(function() {',
    '      return $(this).text().includes(''Disparar Alertas'');',
    '    });',
    '    ',
    '    if (count > 0) {',
    '      btn.prop(''disabled'', false).css(''opacity'', ''1'');',
    '      btn.html(''Disparar Alertas ('' + count + '')'');',
    '    } else {',
    '      btn.prop(''disabled'', true).css(''opacity'', ''0.5'');',
    '      btn.html(''Disparar Alertas'');',
    '    }',
    '  }',
    '  ',
    '  // Atualiza ao clicar checkbox',
    '  $(document).on(''change'', ''.pedido-checkbox'', function() {',
    '    atualizarContador();',
    '  });',
    '  ',
    unistr('  // Estiliza o bot\00E3o'),
    '  var btn = $(''button'').filter(function() {',
    '    return $(this).text().includes(''Disparar Alertas'');',
    '  });',
    '  btn.css({',
    '    ''padding'': ''12px 25px'',',
    '    ''font-size'': ''15px'',',
    '    ''font-weight'': ''bold'',',
    '    ''min-width'': ''220px'',',
    '    ''border-radius'': ''4px''',
    '  });',
    '  ',
    '  atualizarContador();',
    '}, 500);')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260818144420Z')
,p_updated_on=>wwv_flow_imp.dz('20260818160047Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15257507359495767)
,p_name=>'DA_BTN_DISPARAR_ALERTAS'
,p_static_id=>'da-btn-disparar-alertas'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21855147963460536912)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260818150321Z')
,p_updated_on=>wwv_flow_imp.dz('20260818152314Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15257650968495768)
,p_event_id=>wwv_flow_imp.id(15257507359495767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var ids = [];',
    '$(''.pedido-checkbox:checked'').each(function() {',
    '  ids.push($(this).val());',
    '});',
    '',
    'if (ids.length === 0) {',
    '  alert(''Selecione pelo menos um pedido'');',
    '  return false;',
    '}',
    '',
    '// Remove modal anterior se existir',
    '$(''#modal-disparar'').remove();',
    '',
    '// Cria modal',
    'var modal = `',
    '  <div id="modal-disparar" style="',
    '    position:fixed; top:0; left:0; width:100%; height:100%; ',
    '    background:rgba(0,0,0,0.5); display:flex; align-items:center; justify-content:center; z-index:9999;',
    '  ">',
    '    <div style="background:#fff; padding:30px; border-radius:8px; width:90%; max-width:450px;">',
    '      <h2 style="color:#E25F21; margin:0 0 15px 0;">Disparar Alertas</h2>',
    '      <p style="color:#666; margin:0 0 15px 0;">Pedidos selecionados:</p>',
    '      <div style="background:#F5F5F5; padding:15px; border-radius:4px; margin-bottom:20px; max-height:150px; overflow-y:auto;">',
    '        <p style="color:#E25F21; font-weight:bold; margin:0;">${ids.join(''<br/>'')}</p>',
    '      </div>',
    '      <div style="display:flex; gap:10px;">',
    '        <button id="btn-sim" style="flex:1; padding:10px; background:#E25F21; color:#fff; border:none; border-radius:4px; cursor:pointer; font-weight:bold;">Disparar</button>',
    '        <button id="btn-nao" style="flex:1; padding:10px; background:#999; color:#fff; border:none; border-radius:4px; cursor:pointer; font-weight:bold;">Cancelar</button>',
    '      </div>',
    '    </div>',
    '  </div>',
    '`;',
    '',
    '$(''body'').append(modal);',
    '',
    '$(''#btn-sim'').on(''click'', function() {',
    '  $(''#modal-disparar'').remove();',
    '  ',
    '  apex.server.process(''DISPARAR_ALERTAS_MANUAL'', {',
    '    p_ids: ids.join('','')',
    '  }, {',
    '    success: function(pData) {',
    unistr('      apex.message.showPageSuccess(''\2713 Alertas disparados!'');'),
    '      setTimeout(() => location.reload(), 1500);',
    '    },',
    '    error: function(pData) {',
    '      apex.message.showPageError(''Erro: '' + pData.responseText);',
    '    }',
    '  });',
    '});',
    '',
    '$(''#btn-nao'').on(''click'', function() {',
    '  $(''#modal-disparar'').remove();',
    '});',
    '',
    'return false;')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260818150321Z')
,p_updated_on=>wwv_flow_imp.dz('20260818152314Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21855146916646536902)
,p_name=>'DA_TOGGLE_KANBAN'
,p_static_id=>'da-toggle-kanban'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_MOSTRAR_KANBAN'
,p_condition_element=>'P2_MOSTRAR_KANBAN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260730124246Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124624Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855147091251536904)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21404211137130552997)
,p_created_on=>wwv_flow_imp.dz('20260730124246Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124246Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855147257295536905)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide_1'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21431423925761946965)
,p_created_on=>wwv_flow_imp.dz('20260730124432Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124432Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855147296666536906)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide_2'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21373024733640535776)
,p_created_on=>wwv_flow_imp.dz('20260730124511Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124511Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855146986307536903)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21404211137130552997)
,p_created_on=>wwv_flow_imp.dz('20260730124246Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124246Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855147448917536907)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show_1'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21431423925761946965)
,p_created_on=>wwv_flow_imp.dz('20260730124534Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124534Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855147498944536908)
,p_event_id=>wwv_flow_imp.id(21855146916646536902)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show_2'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21373024733640535776)
,p_created_on=>wwv_flow_imp.dz('20260730124551Z')
,p_updated_on=>wwv_flow_imp.dz('20260730124551Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14536185680708792)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_LOG_ALERTAS'
,p_static_id=>'ajax-log-alertas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_html  CLOB := '''';',
'  v_num_ped VARCHAR2(50) := APEX_APPLICATION.G_X01;',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count FROM DAB_ALERTAS WHERE ID_REFERENCIA = v_num_ped;',
'  v_html := ''<div style="padding:4px 0;">'';',
unistr('  v_html := v_html || ''<div style="font-size:13px;font-weight:700;color:#A32D2D;margin-bottom:12px;">\D83D\DD14 ALERTAS \2014 Pedido '' || v_num_ped || ''</div>'';'),
'  IF v_count = 0 THEN',
'    v_html := v_html || ''<div style="text-align:center;padding:20px;color:#888;font-size:12px;">Nenhum alerta registrado para este pedido.</div>'';',
'  ELSE',
'    FOR r IN (',
'      SELECT ',
'        a.ID_ALERTA,',
'        a.ID_CONFIG,',
'        TO_CHAR(a.CRIADO_EM, ''DD/MM/YYYY HH24:MI'') AS DT,',
'        a.TIPO_ALERTA,',
'        a.DESCRICAO,',
'        a.USUARIO,',
'        a.STATUS,',
'        NVL(c.ENVIAR_WHATSAPP, 0) AS ENVIAR_WHATSAPP,',
'        NVL(c.ENVIAR_EMAIL, 0) AS ENVIAR_EMAIL',
'      FROM DAB_ALERTAS a',
'      LEFT JOIN DAB_SISPETRO_ALERTAS_CONFIG c ON c.ID = a.ID_CONFIG',
'      WHERE a.ID_REFERENCIA = v_num_ped',
'      ORDER BY a.CRIADO_EM DESC',
'    ) LOOP',
'      v_html := v_html || ''<div style="border:1px solid #F5C6C6;border-left:4px solid #A32D2D;border-radius:6px;padding:10px 12px;margin-bottom:8px;background:#FFFAFA;">'';',
'      ',
'      -- Header do alerta',
'      v_html := v_html || ''<div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:6px;">'';',
'      v_html := v_html || ''<div style="font-size:11px;font-weight:700;color:#A32D2D;">'' || NVL(r.TIPO_ALERTA, ''ALERTA'') || ''</div>'';',
'      ',
'      -- Badge de status',
'      IF r.STATUS = ''ATIVO'' THEN',
unistr('        v_html := v_html || ''<span style="background:#FADBD8;color:#E74C3C;padding:2px 8px;border-radius:10px;font-size:10px;font-weight:600;border:1px solid #E74C3C;">\25CF ATIVO</span>'';'),
'      ELSE',
unistr('        v_html := v_html || ''<span style="background:#F0F0F0;color:#999;padding:2px 8px;border-radius:10px;font-size:10px;font-weight:600;border:1px solid #DDD;">\25CB '' || NVL(r.STATUS, ''INATIVO'') || ''</span>'';'),
'      END IF;',
'      v_html := v_html || ''</div>'';',
'      ',
unistr('      -- Descri\00E7\00E3o'),
'      v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:6px;">'' || NVL(r.DESCRICAO, ''-'') || ''</div>'';',
'      ',
unistr('      -- Footer com data e usu\00E1rio'),
'      v_html := v_html || ''<div style="display:flex;gap:16px;margin-bottom:8px;">'';',
unistr('      v_html := v_html || ''<div style="font-size:10px;color:#888;">\D83D\DCC5 '' || r.DT || ''</div>'';'),
unistr('      v_html := v_html || ''<div style="font-size:10px;color:#888;">\D83D\DC64 '' || NVL(r.USUARIO, ''Sistema'') || ''</div>'';'),
'      v_html := v_html || ''</div>'';',
'      ',
unistr('      -- Bot\00F5es de a\00E7\00E3o (s\00F3 para alertas ATIVOS)'),
'      IF r.STATUS = ''ATIVO'' THEN',
'        v_html := v_html || ''<div style="display:flex;gap:6px;flex-wrap:wrap;">'';',
'        ',
unistr('        -- Bot\00E3o WhatsApp'),
'        IF r.ENVIAR_WHATSAPP = 1 THEN',
'          v_html := v_html || ''<button onclick="reenviarWhatsApp('' || r.ID_CONFIG || '','''''' || v_num_ped || '''''')" ''',
'                           || ''style="background:#25D366;color:#fff;border:none;border-radius:4px;padding:4px 10px;font-size:10px;font-weight:600;cursor:pointer;">''',
unistr('                           || ''\D83D\DCF1 WhatsApp</button>'';'),
'        END IF;',
'        ',
unistr('        -- Bot\00E3o Email'),
'        IF r.ENVIAR_EMAIL = 1 THEN',
'          v_html := v_html || ''<button onclick="reenviarEmail('' || r.ID_CONFIG || '','''''' || v_num_ped || '''''')" ''',
'                           || ''style="background:#E8700A;color:#fff;border:none;border-radius:4px;padding:4px 10px;font-size:10px;font-weight:600;cursor:pointer;">''',
unistr('                           || ''\2709\FE0F Email</button>'';'),
'        END IF;',
'        ',
unistr('        -- Bot\00E3o Resolver'),
'        v_html := v_html || ''<button onclick="resolverAlerta('' || r.ID_ALERTA || '','''''' || v_num_ped || '''''')" ''',
'                         || ''style="background:#2ECC71;color:#fff;border:none;border-radius:4px;padding:4px 10px;font-size:10px;font-weight:600;cursor:pointer;">''',
unistr('                         || ''\2705 Resolver</button>'';'),
'        ',
'        v_html := v_html || ''</div>'';',
'      END IF;',
'      ',
'      v_html := v_html || ''</div>'';',
'    END LOOP;',
'  END IF;',
'  v_html := v_html || ''</div>'';',
'  HTP.P(v_html);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6889080865147733
,p_created_on=>wwv_flow_imp.dz('20260814154234Z')
,p_updated_on=>wwv_flow_imp.dz('20260818095009Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22094620818106534692)
,p_process_sequence=>40
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_LOG_PEDIDO'
,p_static_id=>'ajax-log-pedido'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_html  CLOB := '''';',
'  v_num_ped VARCHAR2(50) := APEX_APPLICATION.G_X01;',
'  v_tipo  VARCHAR2(20);',
'  v_status VARCHAR2(50);',
'  v_cliente VARCHAR2(200);',
'  v_produto VARCHAR2(200);',
'  v_usuario VARCHAR2(100);',
'  v_oc      VARCHAR2(50);',
'  v_motorista VARCHAR2(200);',
'  v_placa   VARCHAR2(20);',
'  v_status_car VARCHAR2(50);',
'BEGIN',
'  -- Dados do PEDIDO (substitui DAB_SISPETRO_PEDIDO)',
'  SELECT p.TIPO, p.STATUS_PEDIDO, p.CLIENTE, p.PRODUTO, p.USUARIO_PEDIDO',
'  INTO v_tipo, v_status, v_cliente, v_produto, v_usuario',
'  FROM PEDIDOS p',
'  WHERE p.NUM_PED = v_num_ped AND ROWNUM = 1;',
'',
'  -- Dados CARREGAMENTO (substitui ENGERISCO_MOCK)',
'  BEGIN',
'    SELECT c.NUMERO_OC, c.MOTORISTA, c.VEICULO_PLACA, c.STATUS_CARREGAMENTO',
'    INTO v_oc, v_motorista, v_placa, v_status_car',
'    FROM CARREGAMENTOS c',
'    JOIN PEDIDOS p ON p.SEQ_PEDIDO = c.FK_SEQ_PEDIDO',
'    WHERE p.NUM_PED = v_num_ped AND ROWNUM = 1;',
'  EXCEPTION WHEN NO_DATA_FOUND THEN',
'    v_oc := NULL; v_motorista := NULL; v_placa := NULL; v_status_car := NULL;',
'  END;',
'',
'  -- Card resumo',
'  v_html := ''<div style="display:flex;gap:10px;margin-bottom:14px;">'';',
'',
'  -- Coluna Sispetro',
'  v_html := v_html || ''<div style="flex:1;background:#FFF8F0;border:1px solid #FFD9B3;border-radius:8px;padding:10px;">'';',
'  v_html := v_html || ''<div style="font-size:11px;font-weight:700;color:#E25F21;margin-bottom:8px;">SISPETRO</div>'';',
'  v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Pedido:</b> '' || v_num_ped || ''</div>'';',
unistr('  v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Tipo:</b> '' || CASE v_tipo WHEN ''C'' THEN ''Compra'' WHEN ''T'' THEN ''Transfer\00EAncia'' ELSE v_tipo END || ''</div>'';'),
'  v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Status:</b> '' || INITCAP(v_status) || ''</div>'';',
'  v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Cliente:</b> '' || NVL(v_cliente, ''-'') || ''</div>'';',
'  v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Produto:</b> '' || NVL(v_produto, ''-'') || ''</div>'';',
'  v_html := v_html || ''<div style="font-size:11px;color:#444;"><b>Criado por:</b> '' || NVL(v_usuario, ''-'') || ''</div>'';',
'  v_html := v_html || ''</div>'';',
'',
'  -- Coluna Engerisco/Carregamento',
'  v_html := v_html || ''<div style="flex:1;background:#F0F4FF;border:1px solid #B3C9FF;border-radius:8px;padding:10px;">'';',
'  v_html := v_html || ''<div style="font-size:11px;font-weight:700;color:#2C5F8A;margin-bottom:8px;">ENGERISCO</div>'';',
'  IF v_oc IS NOT NULL THEN',
'    v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>OC:</b> '' || v_oc || ''</div>'';',
'    v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Status:</b> '' || NVL(v_status_car, ''-'') || ''</div>'';',
'    v_html := v_html || ''<div style="font-size:11px;color:#444;margin-bottom:4px;"><b>Motorista:</b> '' || NVL(v_motorista, ''-'') || ''</div>'';',
'    v_html := v_html || ''<div style="font-size:11px;color:#444;"><b>Placa:</b> '' || NVL(v_placa, ''-'') || ''</div>'';',
'  ELSE',
'    v_html := v_html || ''<div style="font-size:11px;color:#E65100;font-weight:600;">Sem OC gerada</div>'';',
'  END IF;',
'  v_html := v_html || ''</div>'';',
'  v_html := v_html || ''</div>'';',
'',
'  -- Timeline de log',
unistr('  v_html := v_html || ''<div style="font-size:12px;font-weight:700;color:#333;margin-bottom:8px;">Hist\00F3rico</div>'';'),
'  v_html := v_html || ''<div style="max-height:250px;overflow-y:auto;border:1px solid #eee;border-radius:8px;">'';',
'',
'  FOR r IN (',
'    SELECT TO_CHAR(DATA_EVENTO, ''DD/MM/YYYY HH24:MI'') AS DT,',
'           USUARIO,',
'           ACAO',
'    FROM DAB_LOG_PEDIDO',
'    WHERE NUM_PED = v_num_ped',
'    ORDER BY DATA_EVENTO DESC',
'  ) LOOP',
'    v_html := v_html || ''<div style="display:flex;align-items:flex-start;gap:10px;padding:8px 12px;border-bottom:1px solid #f3f3f3;">'';',
'    v_html := v_html || ''<div style="min-width:110px;font-size:11px;color:#888;white-space:nowrap;">'' || r.DT || ''</div>'';',
'    v_html := v_html || ''<div style="min-width:100px;font-size:11px;font-weight:600;color:#333;">'' || r.USUARIO || ''</div>'';',
'    v_html := v_html || ''<div style="font-size:11px;color:#555;">'' || r.ACAO || ''</div>'';',
'    v_html := v_html || ''</div>'';',
'  END LOOP;',
'',
'  v_html := v_html || ''</div>'';',
'  HTP.P(v_html);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22081968634004528629
,p_created_on=>wwv_flow_imp.dz('20260731201819Z')
,p_updated_on=>wwv_flow_imp.dz('20260814153849Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22094621188305534696)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_RECONHECER'
,p_static_id=>'ajax-reconhecer'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_alertas_sispetro.reconhecer_alerta(',
'    p_seq_alerta_log => TO_NUMBER(APEX_APPLICATION.G_X01),',
'    p_usuario => V(''APP_USER'')',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22081969004203528633
,p_created_on=>wwv_flow_imp.dz('20260803140758Z')
,p_updated_on=>wwv_flow_imp.dz('20260803140758Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14537701586708807)
,p_process_sequence=>80
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_REENVIAR_EMAIL'
,p_static_id=>'ajax-reenviar-email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SP_ENVIAR_EMAIL_ALERTA(TO_NUMBER(APEX_APPLICATION.G_X01));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6890596771147748
,p_created_on=>wwv_flow_imp.dz('20260818100515Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100515Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14537532446708806)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_REENVIAR_WHATSAPP'
,p_static_id=>'ajax-reenviar-whatsapp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_REGISTRAR_ALERTA(',
'    p_id_config     => TO_NUMBER(APEX_APPLICATION.G_X01),',
'    p_id_referencia => APEX_APPLICATION.G_X02,',
'    p_tipo_disparo  => ''MANUAL'',',
'    p_usuario       => :APP_USER',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6890427631147747
,p_created_on=>wwv_flow_imp.dz('20260818100439Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100439Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14537719444708808)
,p_process_sequence=>90
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_RESOLVER_ALERTA'
,p_static_id=>'ajax-resolver-alerta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_RESOLVER_ALERTA(',
'    p_id_alerta => TO_NUMBER(APEX_APPLICATION.G_X01),',
'    p_usuario   => :APP_USER,',
'    p_motivo    => APEX_APPLICATION.G_X02',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6890614629147749
,p_created_on=>wwv_flow_imp.dz('20260818100538Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100538Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534391847708774)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ACESSO_DASHBOARD'
,p_static_id=>'check-acesso-dashboard'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count',
'  FROM USUARIO_MODULO_ACESSO uma',
'  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
'  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
'    AND uma.MODULO = ''DASHBOARD''',
'    AND uma.ATIVO = ''S'';',
'  IF v_count = 0 THEN',
'    APEX_UTIL.REDIRECT_URL(APEX_PAGE.GET_URL(P_PAGE => 1));',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6887287032147715
,p_created_on=>wwv_flow_imp.dz('20260814114607Z')
,p_updated_on=>wwv_flow_imp.dz('20260814115047Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21855148031924536913)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P_DISPARAR_ALERTAS'
,p_static_id=>'p-disparar-alertas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_DISPARAR_ALERTAS;',
'  NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21855147963460536912)
,p_process_success_message=>'Alertas verificados e disparados com sucesso!'
,p_internal_uid=>21842495847822530850
,p_created_on=>wwv_flow_imp.dz('20260730132554Z')
,p_updated_on=>wwv_flow_imp.dz('20260731122233Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22094619408223534678)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P_RECONHECER_ALERTA'
,p_static_id=>'p-reconhecer-alerta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_alertas_sispetro.reconhecer_alerta(',
'    p_seq_alerta_log => :P2_ALERTA_RECONHECER,',
'    p_usuario => V(''APP_USER'')',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RECONHECER_ALERTA'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Alerta reconhecido com sucesso!'
,p_internal_uid=>22081967224121528615
,p_created_on=>wwv_flow_imp.dz('20260731132150Z')
,p_updated_on=>wwv_flow_imp.dz('20260803134311Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15257737162495769)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SP_DISPARAR_ALERTAS_MANUAL'
,p_static_id=>'sp-disparar-alertas-manual'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_ids_str VARCHAR2(4000) := apex_application.g_x01;',
'  v_usuario VARCHAR2(100) := V(''APP_USER'');',
'  v_tem_permissao NUMBER;',
'  v_ids apex_t_varchar2;',
'  v_status_oc VARCHAR2(100);',
'  v_config_id NUMBER;',
'  i NUMBER;',
'  v_seq_usuario NUMBER;',
'BEGIN',
'  -- Busca SEQ_USUARIO',
'  SELECT SEQ_USUARIO INTO v_seq_usuario',
'  FROM USUARIOS ',
'  WHERE COD_USUARIO = v_usuario;',
'',
unistr('  -- Valida permiss\00E3o'),
'  SELECT COUNT(*) INTO v_tem_permissao',
'  FROM USUARIO_MODULO_ACESSO',
'  WHERE MODULO = ''DISPARAR_ALERTAS''',
'  AND ATIVO = ''S''',
'  AND SEQ_USUARIO = v_seq_usuario;',
'',
'  IF v_tem_permissao = 0 THEN',
unistr('    htp.p(''{"success":false,"message":"Sem permiss\00E3o para disparar alertas"}'');'),
'    RETURN;',
'  END IF;',
'',
'  -- Split IDs',
'  v_ids := apex_string.split(v_ids_str, '','');',
'',
'  -- Dispara alertas',
'  FOR i IN 1 .. v_ids.COUNT LOOP',
'    BEGIN',
'      -- Busca status do pedido',
'      SELECT STATUS_OC INTO v_status_oc',
'      FROM VW_JORNADA_CARGA',
'      WHERE NUM_PED = v_ids(i);',
'',
'      -- Busca config ativa para esse status',
'      SELECT ID INTO v_config_id',
'      FROM DAB_SISPETRO_ALERTAS_CONFIG',
'      WHERE CATEGORIA_STATUS = v_status_oc',
'      AND ATIVO = ''S''',
'      AND ROWNUM = 1;',
'',
'      -- Dispara alerta',
'      SP_REGISTRAR_ALERTA(',
'        p_id_config => v_config_id,',
'        p_id_referencia => v_ids(i),',
'        p_tipo_disparo => ''MANUAL'',',
'        p_usuario => v_usuario',
'      );',
'      ',
'    EXCEPTION WHEN OTHERS THEN',
'      NULL;',
'    END;',
'  END LOOP;',
'',
'  htp.p(''{"success":true,"message":"Alertas disparados!"}'');',
'  ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    htp.p(''{"success":false,"message":"''||SQLERRM||''"}'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21855147963460536912)
,p_internal_uid=>7610632346934710
,p_created_on=>wwv_flow_imp.dz('20260818151151Z')
,p_updated_on=>wwv_flow_imp.dz('20260818160446Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>unistr('Configura\00E7\00E3o de Alertas')
,p_alias=>unistr('CONFIGURA\00C7\00C3O-DE-ALERTAS')
,p_step_title=>'CONFIG ALERTAS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Fundo geral */',
'body, .t-Body {',
'  background-color: #f0f2f5 !important;',
'}',
'',
'/* Header principal */',
'.t-Region-header {',
'  background: linear-gradient(135deg, #E25F21 0%, #C44E1A 100%) !important;',
'  color: white !important;',
'  border: none !important;',
'  padding: 15px 20px !important;',
'  font-size: 18px !important;',
'  font-weight: bold !important;',
'  box-shadow: 0 2px 8px rgba(226, 95, 33, 0.2) !important;',
'}',
'',
'/* Breadcrumb */',
'.t-Breadcrumb {',
'  background-color: white !important;',
'  padding: 10px 15px !important;',
'  border-bottom: 2px solid #E25F21 !important;',
'}',
'',
unistr('/* Bot\00E3o Criar Alerta */'),
'.t-Button.art-btn,',
'.t-Button[name="BTN_CRIAR_ALERTA"] {',
'  background: linear-gradient(135deg, #E25F21 0%, #C44E1A 100%) !important;',
'  border: none !important;',
'  color: white !important;',
'  padding: 10px 20px !important;',
'  font-weight: bold !important;',
'  border-radius: 6px !important;',
'  box-shadow: 0 4px 6px rgba(226, 95, 33, 0.25) !important;',
'  transition: all 0.3s ease !important;',
'}',
'',
'.t-Button.art-btn:hover,',
'.t-Button[name="BTN_CRIAR_ALERTA"]:hover {',
'  transform: translateY(-2px) !important;',
'  box-shadow: 0 6px 12px rgba(226, 95, 33, 0.35) !important;',
'}',
'',
'/* Search e Actions */',
'.t-Form-fieldContainer input[type="text"],',
'.t-Form-fieldContainer select {',
'  border: 1px solid #ddd !important;',
'  padding: 10px 12px !important;',
'  border-radius: 6px !important;',
'  background-color: white !important;',
'  transition: all 0.3s ease !important;',
'}',
'',
'.t-Form-fieldContainer input[type="text"]:focus,',
'.t-Form-fieldContainer select:focus {',
'  border-color: #E25F21 !important;',
'  box-shadow: 0 0 8px rgba(226, 95, 33, 0.4) !important;',
'  outline: none !important;',
'}',
'',
'/* Tabela (IR) */',
'.t-Report {',
'  background-color: white !important;',
'  border: 1px solid #e0e0e0 !important;',
'  border-radius: 6px !important;',
'  overflow: hidden !important;',
'  box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;',
'}',
'',
'/* Header das colunas - GRADIENTE LARANJA */',
'.a-IRR-header {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'  border-right: 1px solid rgba(255,255,255,0.3) !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'}',
'',
'.a-IRR-header:last-child {',
'  border-right: none !important;',
'}',
'',
'.a-IRR-header th {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'  border: none !important;',
'}',
'',
'.a-IRR-headerLink {',
'  color: white !important;',
'  text-decoration: none !important;',
'  transition: all 0.2s ease !important;',
'}',
'',
'.a-IRR-headerLink:hover {',
'  color: #FFF9F5 !important;',
'  text-decoration: none !important;',
'}',
'',
'.a-IRR-header a {',
'  color: white !important;',
'  transition: all 0.2s ease !important;',
'}',
'',
'.a-IRR-header a:hover {',
'  color: #FFF9F5 !important;',
'  text-decoration: none !important;',
'}',
'',
'/* Linhas da tabela */',
'.t-Report td {',
'  padding: 12px !important;',
'  border-bottom: 1px solid #f0f0f0 !important;',
'  border-right: 1px solid #f5f5f5 !important;',
'  transition: background-color 0.2s ease !important;',
'}',
'',
'.t-Report td:last-child {',
'  border-right: none !important;',
'}',
'',
'/* Hover nas linhas */',
'.t-Report tr:hover td {',
'  background-color: #FFF8F5 !important;',
'  box-shadow: inset 0 0 4px rgba(226, 95, 33, 0.1) !important;',
'}',
'',
'/* Links na tabela */',
'.t-Report a {',
'  color: #E25F21 !important;',
'  text-decoration: none !important;',
'  font-weight: 500 !important;',
'  transition: all 0.2s ease !important;',
'}',
'',
'.t-Report a:hover {',
'  color: #C44E1A !important;',
'  text-decoration: underline !important;',
'}',
'',
'/* Region container */',
'.t-Region {',
'  background-color: white !important;',
'  border: 1px solid #e0e0e0 !important;',
'  border-radius: 6px !important;',
'  box-shadow: 0 2px 8px rgba(0,0,0,0.08) !important;',
'  margin-bottom: 20px !important;',
'  overflow: hidden !important;',
'}',
'',
'/* Toolbar / Actions */',
'.t-Region-toolbar {',
'  background: linear-gradient(90deg, #f9f9f9 0%, #ffffff 100%) !important;',
'  padding: 12px 15px !important;',
'  border-bottom: 1px solid #e0e0e0 !important;',
'}'))
,p_step_template=>4073832297226169690
,p_page_css_classes=>'.art-header {   background-color: #E25F21 !important;   color: white !important; }  .art-btn {   background-color: #E25F21 !important;   border-color: #E25F21 !important;   color: white !important; }  .art-btn:hover {   background-color: #C44E1A !imp'
||'ortan'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14667654506033332)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260728201215Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260818095913Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21657645976049514414)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260728201215Z')
,p_updated_on=>wwv_flow_imp.dz('20260728201215Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21404211222154552998)
,p_plug_name=>'R_ALERTAS_CONFIG'
,p_static_id=>'r-alertas-config'
,p_title=>'Regras de Alerta'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    ID,',
'    CATEGORIA_STATUS AS "Categoria",',
unistr('    DESCRICAO AS "Descri\00E7\00E3o",'),
'    SEVERIDADE AS "Severidade",',
'    CASE ',
'      WHEN TEMPO_DISPARO_MIN IS NULL THEN ''-''',
'      WHEN TEMPO_DISPARO_MIN < 60 THEN TEMPO_DISPARO_MIN || '' min''',
'      WHEN TEMPO_DISPARO_MIN < 1440 THEN ROUND(TEMPO_DISPARO_MIN/60) || ''h''',
'      ELSE ROUND(TEMPO_DISPARO_MIN/1440) || '' dia(s)''',
unistr('    END AS "Disparar Ap\00F3s",'),
'    CASE WHEN ATIVO = ''S'' ',
'        THEN ''<span style="display:inline-flex;align-items:center;gap:6px;padding:3px 10px;border-radius:20px;font-size:12px;font-weight:600;background:#E6F4EA;color:#1E7B45;border:1px solid #A8D8B9;"><span style="width:7px;height:7px;border-radius:5'
||'0%;background:#1E7B45;"></span>Ativo</span>''',
'        ELSE ''<span style="display:inline-flex;align-items:center;gap:6px;padding:3px 10px;border-radius:20px;font-size:12px;font-weight:600;background:#FCEBEB;color:#791F1F;border:1px solid #F09595;"><span style="width:7px;height:7px;border-radius:5'
||'0%;background:#A32D2D;"></span>Inativo</span>''',
'    END AS "Status do Alerta",',
unistr('    CASE WHEN ENVIAR_EMAIL = 1 THEN ''Sim'' ELSE ''N\00E3o'' END AS "Email",'),
unistr('    CASE WHEN ENVIAR_EMAIL_CRIADOR_OC = 1 THEN ''Sim'' ELSE ''N\00E3o'' END AS "Criador OC",'),
'    EMAIL_DESTINATARIO AS "E-mail Destino",',
unistr('    CASE WHEN ENVIAR_WHATSAPP = 1 THEN ''Sim'' ELSE ''N\00E3o'' END AS "WhatsApp",'),
'    CASE NVL(TIPO_PEDIDO_FILTRO, ''TODOS'')',
'      WHEN ''C'' THEN ''Compra''',
unistr('      WHEN ''T'' THEN ''Transfer\00EAncia'''),
'      WHEN ''VD'' THEN ''Venda''',
'      ELSE NVL(TIPO_PEDIDO_FILTRO, ''Todos'')',
'    END AS "Tipo Pedido",',
'    ''<div style="display:flex;gap:6px;align-items:center;">''',
'    || ''<a href="f?p=&APP_ID.:4:'' || v(''SESSION'') || ''::NO::P4_ID:'' || ID || ''" ''',
'    || ''title="Editar" ''',
'    || ''style="display:inline-flex;align-items:center;justify-content:center;height:24px;padding:0 8px;border-radius:4px;background:#E8700A;color:#fff;text-decoration:none;font-size:10px;font-weight:600;">''',
unistr('    || ''\270F\FE0F Editar</a>'''),
'    || ''<a href="javascript:void(0);" class="teste-whatsapp" data-id="'' || ID || ''" ''',
'    || ''style="display:inline-flex;align-items:center;justify-content:center;height:24px;padding:0 8px;border-radius:4px;background:#25D366;color:#fff;text-decoration:none;font-size:10px;font-weight:600;">''',
unistr('    || ''\D83D\DCF1 WhatsApp</a>'''),
'    || ''<a href="javascript:void(0);" class="teste-email" data-id="'' || ID || ''" ''',
'    || ''style="display:inline-flex;align-items:center;justify-content:center;height:24px;padding:0 8px;border-radius:4px;background:#A32D2D;color:#fff;text-decoration:none;font-size:10px;font-weight:600;">''',
unistr('    || ''\2709\FE0F Email</a>'''),
'    || ''</div>'' AS "ACAO"',
'FROM DAB_SISPETRO_ALERTAS_CONFIG',
'ORDER BY ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Regras de Alerta'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260728201254Z')
,p_updated_on=>wwv_flow_imp.dz('20260818095913Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21404211349596552999)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>21391559165494546936
,p_created_on=>wwv_flow_imp.dz('20260728201254Z')
,p_updated_on=>wwv_flow_imp.dz('20260814163258Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094619102693534675)
,p_db_column_name=>'ACAO'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>unistr('A\00C7\00C3O')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730182534Z')
,p_updated_on=>wwv_flow_imp.dz('20260730182959Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094618751385534671)
,p_db_column_name=>'Categoria'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'CATEGORIA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730170130Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183031Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21833293350352836082)
,p_db_column_name=>'Criador OC'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'CRIADOR DA OC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260729123511Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183051Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21404211604760553002)
,p_db_column_name=>unistr('Descri\00E7\00E3o')
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('DESCRI\00C7\00C3O')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260728201254Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183024Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14536332049708794)
,p_db_column_name=>unistr('Disparar Ap\00F3s')
,p_display_order=>160
,p_column_identifier=>'W'
,p_column_label=>unistr('Disparar Ap\00F3s')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260814162559Z')
,p_updated_on=>wwv_flow_imp.dz('20260814162559Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21833293407374836083)
,p_db_column_name=>'E-mail Destino'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'E-MAIL DESTINO '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260729123511Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183117Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21833293195266836081)
,p_db_column_name=>'Email'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>'E-MAIL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260729123511Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183058Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22094619037893534674)
,p_db_column_name=>'ID'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260730182534Z')
,p_updated_on=>wwv_flow_imp.dz('20260730182846Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14536241053708793)
,p_db_column_name=>'Severidade'
,p_display_order=>150
,p_column_identifier=>'V'
,p_column_label=>'Severidade'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260814162559Z')
,p_updated_on=>wwv_flow_imp.dz('20260814162559Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23569358033956031182)
,p_db_column_name=>'Status do Alerta'
,p_display_order=>140
,p_column_identifier=>'U'
,p_column_label=>'STATUS ALERTA'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260804033345Z')
,p_updated_on=>wwv_flow_imp.dz('20260804033454Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21404211920902553005)
,p_db_column_name=>'Tipo Pedido'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'TIPO PEDIDO'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260728201254Z')
,p_updated_on=>wwv_flow_imp.dz('20260804031328Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21833293574381836084)
,p_db_column_name=>'WhatsApp'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'WHATSAPP'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260729123511Z')
,p_updated_on=>wwv_flow_imp.dz('20260730183107Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21657810893233171804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ACAO:Disparar Ap\00F3s:Status do Alerta:Descri\00E7\00E3o:Categoria:Tipo Pedido:Criador OC:WhatsApp:Email:E-mail Destino')
,p_created_on=>wwv_flow_imp.dz('20260728201256Z')
,p_updated_on=>wwv_flow_imp.dz('20260814163258Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21833296002792836109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21404211222154552998)
,p_button_name=>'BTN_CRIAR_ALERTA'
,p_static_id=>'btn-criar-alerta'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Criar Alerta'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'art-btn'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260729131407Z')
,p_updated_on=>wwv_flow_imp.dz('20260729164654Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(21833292904783836078)
,p_validation_name=>'VAL_EMAIL_OBRIGATORIO'
,p_static_id=>'val-email-obrigatorio'
,p_validation_sequence=>10
,p_validation=>':P3_ENVIAR_EMAIL_CRIADOR_OC = ''S'' OR :P3_EMAIL_DESTINATARIO IS NOT NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('E-mail destinat\00E1rio \00E9 obrigat\00F3rio quando n\00E3o enviar para criador da OC')
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260729122636Z')
,p_updated_on=>wwv_flow_imp.dz('20260729123802Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14536896594708799)
,p_name=>'Teste Whatsapp'
,p_static_id=>'new'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.teste-whatsapp'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260817120545Z')
,p_updated_on=>wwv_flow_imp.dz('20260817150953Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14536941334708800)
,p_event_id=>wwv_flow_imp.id(14536896594708799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var id = $(event.target).data(''id'');',
    'console.log(''ID FINAL:'', id);',
    '',
    'apex.server.process(''SP_ENVIAR_WHATSAPP_ALERTA'', {x01: id}, {',
    '  dataType: ''text''',
    '});',
    unistr('apex.message.showPageSuccess(''\2705 Teste WhatsApp enviado!'');'))))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260817120545Z')
,p_updated_on=>wwv_flow_imp.dz('20260817150953Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14537337830708804)
,p_name=>'Teste Email'
,p_static_id=>'teste-email'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.teste-email'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20260818084220Z')
,p_updated_on=>wwv_flow_imp.dz('20260818084220Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14537414818708805)
,p_event_id=>wwv_flow_imp.id(14537337830708804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-execute-plsql-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var id = $(event.target).data(''id'');',
    'console.log(''Email ID:'', id);',
    '',
    'apex.server.process(''SP_ENVIAR_EMAIL_ALERTA'', {x01: id}, {',
    '  dataType: ''text'',',
    '  success: function() {',
    unistr('    apex.message.showPageSuccess(''\2705 Teste Email enviado!'');'),
    '  },',
    '  error: function() {',
    unistr('    apex.message.showErrors(''\274C Erro ao enviar email!'');'),
    '  }',
    '});')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260818084220Z')
,p_updated_on=>wwv_flow_imp.dz('20260818084220Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534464424708775)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ACESSO_ALERTAS'
,p_static_id=>'check-acesso-alertas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count',
'  FROM USUARIO_MODULO_ACESSO uma',
'  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
'  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
'    AND uma.MODULO = ''ALERTAS''',
'    AND uma.ATIVO = ''S'';',
'  IF v_count = 0 THEN',
'    APEX_UTIL.REDIRECT_URL(APEX_PAGE.GET_URL(P_PAGE => 1));',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6887359609147716
,p_created_on=>wwv_flow_imp.dz('20260814114639Z')
,p_updated_on=>wwv_flow_imp.dz('20260814115120Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14536558907708796)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SP_ENVIAR_WHATSAPP_ALERTA'
,p_static_id=>'p-test-whatsapp'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_ENVIAR_WHATSAPP_ALERTA(:P3_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6889454092147737
,p_created_on=>wwv_flow_imp.dz('20260817115226Z')
,p_updated_on=>wwv_flow_imp.dz('20260817143305Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Editar Alerta'
,p_alias=>'EDITAR-ALERTA'
,p_step_title=>'EDITAR ALERTA'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ===== CAMPOS ===== */',
'textarea { color: rgb(0, 0, 0) !important; background-color: rgb(255, 255, 255) !important; border: 1px solid rgb(221, 221, 221) !important; border-radius: 4px !important; padding: 10px !important; font-size: 13px !important; width: 100% !important; '
||'box-sizing: border-box !important; margin: 0px !important; }',
'',
'input[type="text"] { color: rgb(0, 0, 0) !important; background-color: rgb(255, 255, 255) !important; border: 1px solid rgb(221, 221, 221) !important; border-radius: 4px !important; padding: 10px !important; font-size: 13px !important; width: 100% !i'
||'mportant; box-sizing: border-box !important; margin: 0px !important; }',
'',
'input[type="number"] { color: rgb(0, 0, 0) !important; background-color: rgb(255, 255, 255) !important; border: 1px solid rgb(221, 221, 221) !important; border-radius: 4px !important; padding: 10px !important; font-size: 13px !important; width: 100% '
||'!important; box-sizing: border-box !important; margin: 0px !important; }',
'',
'select { color: rgb(0, 0, 0) !important; background-color: rgb(255, 255, 255) !important; border: 1px solid rgb(221, 221, 221) !important; border-radius: 4px !important; padding: 10px !important; font-size: 13px !important; width: 100% !important; bo'
||'x-sizing: border-box !important; margin: 0px !important; }',
'',
'.t-Form-inputContainer, .t-Form-itemWrapper { width: 100% !important; max-width: 100% !important; }',
'#P4_DESCRICAO { width: 100% !important; max-width: 100% !important; min-height: 80px !important; }',
'',
'.t-Region-title { background: linear-gradient(135deg, rgb(226, 95, 33) 0%, rgb(208, 74, 28) 100%) !important; color: white !important; padding: 16px 20px !important; font-size: 16px !important; font-weight: 700 !important; margin: 0px !important; bor'
||'der: none !important; }',
'',
'.t-Form-item label { color: rgb(226, 95, 33) !important; font-weight: 800 !important; font-size: 12px !important; margin-bottom: 8px !important; display: block !important; text-transform: uppercase !important; letter-spacing: 0.8px !important; }',
'',
'input[type="checkbox"], input[type="radio"] { width: 18px !important; height: 18px !important; accent-color: rgb(226, 95, 33) !important; margin-right: 8px !important; cursor: pointer !important; }',
'',
'input[type="checkbox"] + label, input[type="radio"] + label { display: inline !important; margin-left: 0px !important; cursor: pointer !important; color: rgb(85, 85, 85) !important; font-size: 12px !important; font-weight: 500 !important; text-transf'
||'orm: none !important; }',
'',
'#P4_CATEGORIA_STATUS_CONTAINER, #P4_TIPO_PEDIDO_FILTRO_CONTAINER, #P4_DESCRICAO_CONTAINER, #P4_SEVERIDADE_CONTAINER { background: rgb(255, 248, 244) !important; border: 2px solid rgb(226, 95, 33) !important; border-radius: 6px !important; padding: 14'
||'px 16px !important; margin: 12px 0px !important; display: block !important; }',
'',
'#P4_EMAIL_DESTINATARIO_CONTAINER { background: rgb(255, 248, 244) !important; border: 2px solid rgb(226, 95, 33) !important; border-radius: 6px !important; padding: 14px 16px !important; margin: 12px 0px !important; }',
'',
'#P4_ENVIAR_EMAIL_CONTAINER, #P4_ENVIAR_EMAIL_CRIADOR_OC_CONTAINER, #P4_ENVIAR_WHATSAPP_CONTAINER, #P4_ENVIAR_WHATSAPP_CRIADOR_OC_CONTAINER, #P4_ATIVO_CONTAINER, #P4_TEMPO_DISPARO_MIN_CONTAINER { display: block !important; width: 100% !important; vert'
||'ical-align: top !important; background: rgb(255, 248, 244) !important; border: 2px solid rgb(226, 95, 33) !important; border-radius: 6px !important; padding: 14px 16px !important; margin: 6px 0px !important; overflow: visible !important; box-sizing: '
||'border-box !important; }',
'',
'button, .t-Button { padding: 12px 24px !important; border-radius: 4px !important; font-weight: 700 !important; font-size: 12px !important; border: none !important; cursor: pointer !important; text-transform: uppercase !important; transition: 0.2s !im'
||'portant; }',
'',
'button:hover { transform: translateY(-2px) !important; }',
'',
'.btn-artpetro { background: linear-gradient(135deg, rgb(226, 95, 33) 0%, rgb(208, 74, 28) 100%) !important; color: rgb(255, 255, 255) !important; }',
'',
'.t-Form-buttonContainer button { margin-right: 0px !important; }',
'',
'.t-Form-buttonContainer .col, .t-Form-buttonContainer > div { width: auto !important; max-width: none !important; flex: 0 0 auto !important; }',
'',
'.t-Region { border-radius: 8px !important; box-shadow: rgba(0, 0, 0, 0.08) 0px 4px 16px !important; overflow: hidden !important; border: none !important; background: white !important; max-width: 1000px !important; margin: 12px auto !important; }',
'',
'.col:has(.btn-artpetro) { width: auto !important; max-width: none !important; min-width: 0px !important; flex: 0 0 auto !important; display: inline-block !important; }',
'',
'.row:has(.btn-artpetro) { display: flex !important; gap: 10px !important; justify-content: center !important; flex-wrap: nowrap !important; }',
'',
'/* Linha 1: Enviar E-mail | Enviar WhatsApp */',
'.col:has(#P4_ENVIAR_EMAIL_CONTAINER) { width: 50% !important; max-width: 50% !important; flex: 0 0 50% !important; padding-right: 8px !important; padding-left: 0px !important; box-sizing: border-box !important; }',
'.col:has(#P4_ENVIAR_WHATSAPP_CONTAINER) { width: 50% !important; max-width: 50% !important; flex: 0 0 50% !important; padding-right: 0px !important; padding-left: 8px !important; box-sizing: border-box !important; }',
'',
'/* Linha 2: Enviar E-mail ao Criador da OC | Enviar WhatsApp ao Criador da OC */',
'.col:has(#P4_ENVIAR_EMAIL_CRIADOR_OC_CONTAINER) { width: 50% !important; max-width: 50% !important; flex: 0 0 50% !important; padding-right: 8px !important; padding-left: 0px !important; box-sizing: border-box !important; display: flex !important; al'
||'ign-items: stretch !important; }',
'.col:has(#P4_ENVIAR_WHATSAPP_CRIADOR_OC_CONTAINER) { width: 50% !important; max-width: 50% !important; flex: 0 0 50% !important; padding-right: 0px !important; padding-left: 8px !important; box-sizing: border-box !important; display: flex !important;'
||' align-items: stretch !important; }',
'',
'#P4_ENVIAR_EMAIL_CRIADOR_OC_CONTAINER,',
'#P4_ENVIAR_WHATSAPP_CRIADOR_OC_CONTAINER { width: 100% !important; }',
'',
'/* Linha 3: Ativo */',
'.col:has(#P4_ATIVO_CONTAINER) { width: 100% !important; max-width: 100% !important; flex: 0 0 100% !important; padding-right: 0px !important; padding-left: 0px !important; box-sizing: border-box !important; }',
'',
unistr('/* N\00EDvel do Alerta e Disparar Ap\00F3s */'),
'.col:has(#P4_SEVERIDADE_CONTAINER), .col:has(#P4_TEMPO_DISPARO_MIN_CONTAINER) { display: flex !important; align-items: stretch !important; }',
'.col:has(#P4_TEMPO_DISPARO_MIN_CONTAINER) { width: 50% !important; max-width: 50% !important; flex: 0 0 50% !important; padding-right: 0px !important; padding-left: 8px !important; }',
'#P4_SEVERIDADE_CONTAINER, #P4_TEMPO_DISPARO_MIN_CONTAINER { width: 100% !important; }',
'',
'.col:has(#P4_EMAIL_DESTINATARIO_CONTAINER) { width: 100% !important; max-width: 100% !important; flex: 0 0 100% !important; }',
'',
'#P4_WHATSAPP_NUMERO_CONTAINER { display: block; width: 100% !important; background: rgb(255, 248, 244) !important; border: 2px solid rgb(226, 95, 33) !important; border-radius: 6px !important; padding: 14px 16px !important; margin: 12px 0px !importan'
||'t; text-align: left !important; box-sizing: border-box !important; }',
'',
'#P4_WHATSAPP_NUMERO_CONTAINER label { display: block !important; text-align: left !important; }',
'',
'.col:has(#P4_WHATSAPP_NUMERO_CONTAINER) { width: 100% !important; max-width: 100% !important; flex: 0 0 100% !important; }',
'',
'#P4_TEMPO_DISPARO_MIN_CONTAINER .t-Form-itemAssistance,',
'#P4_TEMPO_DISPARO_MIN_CONTAINER .a-Form-inlineHelp,',
'#P4_TEMPO_DISPARO_MIN_CONTAINER .t-Form-help { font-size: 11px !important; color: rgb(136, 136, 136) !important; margin-top: 6px !important; }',
'',
'#P4_DESCRICAO_CONTAINER,',
'#P4_DESCRICAO_CONTAINER > div,',
'#P4_DESCRICAO_CONTAINER .t-Form-fieldContainer,',
'#P4_DESCRICAO_CONTAINER .t-Form-inputContainer,',
'#P4_DESCRICAO_CONTAINER .t-Form-itemWrapper,',
'#P4_DESCRICAO_CONTAINER .apex-item-wrapper,',
'#P4_DESCRICAO_CONTAINER .t-Form-itemAssistance { width: 100% !important; max-width: 100% !important; display: block !important; }',
'#P4_DESCRICAO { width: 100% !important; max-width: 100% !important; }',
'',
'.t-Form-buttonContainer { display: flex !important; gap: 10px !important; justify-content: center !important; padding: 16px 20px !important; background: rgb(245, 245, 245) !important; border-top: 2px solid rgb(226, 95, 33) !important; margin: 0 auto '
||'!important; max-width: 1000px !important; width: 100% !important; box-sizing: border-box !important; }',
'',
'.t-ButtonRegion, .t-ButtonRegion-wrap { max-width: 1000px !important; margin: 0 auto !important; display: flex !important; justify-content: center !important; }',
'',
unistr('/* Iguala altura de N\00EDvel do Alerta e Disparar Ap\00F3s */'),
'.col:has(#P4_SEVERIDADE_CONTAINER),',
'.col:has(#P4_TEMPO_DISPARO_MIN_CONTAINER) { ',
'  display: flex !important;',
'  align-items: stretch !important;',
'}',
'',
'#P4_SEVERIDADE_CONTAINER,',
'#P4_TEMPO_DISPARO_MIN_CONTAINER { ',
'  width: 100% !important;',
'  display: flex !important;',
'  flex-direction: column !important;',
'  justify-content: center !important;',
'  min-height: 120px !important;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260729123832Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260817140421Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21841086415970432175)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260729123832Z')
,p_updated_on=>wwv_flow_imp.dz('20260729123832Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21833293677286836085)
,p_plug_name=>'R_ALERTA_FORM'
,p_static_id=>'r-alerta-form'
,p_title=>'ALERTAS'
,p_region_css_classes=>'form-modern form-narrow'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DAB_SISPETRO_ALERTAS_CONFIG'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260729124016Z')
,p_updated_on=>wwv_flow_imp.dz('20260803232943Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21833295792560836107)
,p_button_sequence=>40
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancelar'
,p_button_css_classes=>'btn-artpetro'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260729130910Z')
,p_updated_on=>wwv_flow_imp.dz('20260729183120Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21833295684784836106)
,p_button_sequence=>30
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Deletar'
,p_button_css_classes=>'btn-artpetro'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260729130856Z')
,p_updated_on=>wwv_flow_imp.dz('20260729183852Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21833295597442836105)
,p_button_sequence=>20
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Salvar'
,p_button_css_classes=>'btn-artpetro'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260729130847Z')
,p_updated_on=>wwv_flow_imp.dz('20260804022934Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357493381031177)
,p_name=>'P4_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'ATIVO'
,p_source=>'ATIVO'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817134107Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357690872031179)
,p_name=>'P4_CATEGORIA_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'CATEGORIA STATUS'
,p_source=>'CATEGORIA_STATUS'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:OC CRIADA;OC Criada,Aguardando Coleta;Aguardando Coleta,Em rota;Em rota,Entregue;Entregue,Atrasado;Atrasado,OC Sem ve\00EDculo alocado;OC SEM VE\00CDCULO ALOCADO,Cancelado;Cancelado')
,p_cHeight=>1
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260804025433Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11151382482917296899)
,p_name=>'P4_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232754Z')
,p_updated_on=>wwv_flow_imp.dz('20260803233135Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357031182031172)
,p_name=>'P4_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>unistr('DESCRI\00C7\00C3O')
,p_placeholder=>unistr('Digite o conte\00FAdo do alerta:')
,p_source=>'DESCRICAO'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260804020742Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357375588031175)
,p_name=>'P4_EMAIL_DESTINATARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>unistr('E-MAIL DESTINAT\00C1RIO')
,p_source=>'EMAIL_DESTINATARIO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817134107Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357115601031173)
,p_name=>'P4_ENVIAR_EMAIL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'ENVIAR E-MAIL'
,p_source=>'ENVIAR_EMAIL'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', '0',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817121936Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357268195031174)
,p_name=>'P4_ENVIAR_EMAIL_CRIADOR_OC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'ENVIAR E-MAIL  AO CRIADO DA OC'
,p_source=>'ENVIAR_EMAIL_CRIADOR_OC'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', '0',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817134226Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357389472031176)
,p_name=>'P4_ENVIAR_WHATSAPP'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'ENVIAR WHATSAPP'
,p_format_mask=>'(99) 99999-9999'
,p_source=>'ENVIAR_WHATSAPP'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', '0',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817134107Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14537153974708802)
,p_name=>'P4_ENVIAR_WHATSAPP_CRIADOR_OC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'Enviar WhatsApp ao Criador da OC'
,p_source=>'ENVIAR_EMAIL_CRIADOR_OC'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', '0',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260817122522Z')
,p_updated_on=>wwv_flow_imp.dz('20260817134226Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569356838689031170)
,p_name=>'P4_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260804032316Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21833294267072836091)
,p_name=>'P4_SEVERIDADE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>unistr('N\00CDVEL DO ALERTA')
,p_source=>'SEVERIDADE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:ALTA;ALTA,MEDIA ;MEDIA,BAIXA;BAIXA'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260729124016Z')
,p_updated_on=>wwv_flow_imp.dz('20260814161931Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357874379031180)
,p_name=>'P4_TEMPO_DISPARO_MIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>unistr('DISPARAR AP\00D3S (MINUTOS)')
,p_placeholder=>'Ex.:30'
,p_source=>'TEMPO_DISPARO_MIN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>'Dispara o alerta quando o pedido/OC ultrapassar esse tempo no status configurado.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260804025116Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569356965125031171)
,p_name=>'P4_TIPO_PEDIDO_FILTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>'TIPO DE PEDIDO'
,p_source=>'TIPO_PEDIDO_FILTRO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Venda;VD,Compra;CB,Transfer\00EAncia;TR')
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260804025053Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11151382567578296900)
,p_name=>'P4_UPDATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_source=>'UPDATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232754Z')
,p_updated_on=>wwv_flow_imp.dz('20260803233142Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23569357679090031178)
,p_name=>'P4_WHATSAPP_NUMERO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_item_source_plug_id=>wwv_flow_imp.id(21833293677286836085)
,p_prompt=>unistr('N\00DAMERO WHATSAPP:')
,p_placeholder=>'Ex: 5544999620498'
,p_source=>'WHATSAPP_NUMERO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260803232943Z')
,p_updated_on=>wwv_flow_imp.dz('20260817135120Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21855145228513536885)
,p_name=>'Mostrar E-mail Destinatario '
,p_static_id=>unistr('mostrar-e-mail-destinat\00E1rio')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ENVIAR_EMAIL'
,p_condition_element=>'P4_ENVIAR_EMAIL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260729193145Z')
,p_updated_on=>wwv_flow_imp.dz('20260729234740Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855145419650536887)
,p_event_id=>wwv_flow_imp.id(21855145228513536885)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-hide'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_EMAIL_DESTINATARIO'
,p_created_on=>wwv_flow_imp.dz('20260729193145Z')
,p_updated_on=>wwv_flow_imp.dz('20260729193145Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21855145300768536886)
,p_event_id=>wwv_flow_imp.id(21855145228513536885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_static_id=>'native-show'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_EMAIL_DESTINATARIO'
,p_created_on=>wwv_flow_imp.dz('20260729193145Z')
,p_updated_on=>wwv_flow_imp.dz('20260729193145Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21855144526732536878)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Alert'
,p_static_id=>'delete-alert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P4_ID IS NOT NULL THEN',
'  DELETE FROM DAB_SISPETRO_ALERTAS_CONFIG',
'  WHERE ID = :P4_ID;',
'  COMMIT;',
'  apex_util.redirect_url(p_url => ''f?p=&APP_ID.:3:'' || v(''SESSION''));',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21833295684784836106)
,p_internal_uid=>21842492342630530815
,p_created_on=>wwv_flow_imp.dz('20260729171613Z')
,p_updated_on=>wwv_flow_imp.dz('20260730193219Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14537273895708803)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Form Alerta'
,p_static_id=>'populate-form-alerta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  FOR c IN (SELECT ID, CATEGORIA_STATUS, DESCRICAO, SEVERIDADE, ',
'                   TEMPO_DISPARO_MIN, ATIVO, ENVIAR_EMAIL, ',
'                   ENVIAR_EMAIL_CRIADOR_OC, EMAIL_DESTINATARIO, ',
'                   ENVIAR_WHATSAPP, WHATSAPP_NUMERO, ',
'                   ENVIAR_WHATSAPP_CRIADOR_OC, TIPO_PEDIDO_FILTRO',
'            FROM DAB_SISPETRO_ALERTAS_CONFIG',
'            WHERE ID = :P4_ID) LOOP',
'    :P4_ID := c.ID;',
'    :P4_CATEGORIA_STATUS := c.CATEGORIA_STATUS;',
'    :P4_DESCRICAO := c.DESCRICAO;',
'    :P4_SEVERIDADE := c.SEVERIDADE;',
'    :P4_TEMPO_DISPARO_MIN := c.TEMPO_DISPARO_MIN;',
'    :P4_ATIVO := c.ATIVO;',
'    :P4_ENVIAR_EMAIL := c.ENVIAR_EMAIL;',
'    :P4_ENVIAR_EMAIL_CRIADOR_OC := c.ENVIAR_EMAIL_CRIADOR_OC;',
'    :P4_EMAIL_DESTINATARIO := c.EMAIL_DESTINATARIO;',
'    :P4_ENVIAR_WHATSAPP := c.ENVIAR_WHATSAPP;',
'    :P4_WHATSAPP_NUMERO := c.WHATSAPP_NUMERO;',
'    :P4_ENVIAR_WHATSAPP_CRIADOR_OC := c.ENVIAR_WHATSAPP_CRIADOR_OC;',
'    :P4_TIPO_PEDIDO_FILTRO := c.TIPO_PEDIDO_FILTRO;',
'  END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6890169080147744
,p_created_on=>wwv_flow_imp.dz('20260817123444Z')
,p_updated_on=>wwv_flow_imp.dz('20260817123502Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21855144418865536877)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Alert'
,p_static_id=>'save-alert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P4_ID IS NULL OR :P4_ID = '''' THEN',
'  INSERT INTO DAB_SISPETRO_ALERTAS_CONFIG ',
'  (ID, CATEGORIA_STATUS, TIPO_PEDIDO_FILTRO, DESCRICAO, SEVERIDADE, TEMPO_DISPARO_MIN, ENVIAR_EMAIL, ENVIAR_EMAIL_CRIADOR_OC, EMAIL_DESTINATARIO, ENVIAR_WHATSAPP, WHATSAPP_NUMERO, ENVIAR_WHATSAPP_CRIADOR_OC, ATIVO)',
'  VALUES ',
'  (SEQ_ALERTAS_CONFIG.NEXTVAL, :P4_CATEGORIA_STATUS, :P4_TIPO_PEDIDO_FILTRO, :P4_DESCRICAO, :P4_SEVERIDADE, :P4_TEMPO_DISPARO_MIN, :P4_ENVIAR_EMAIL, :P4_ENVIAR_EMAIL_CRIADOR_OC, :P4_EMAIL_DESTINATARIO, :P4_ENVIAR_WHATSAPP, :P4_WHATSAPP_NUMERO, :P4_EN'
||'VIAR_WHATSAPP_CRIADOR_OC, :P4_ATIVO);',
'ELSE',
'  UPDATE DAB_SISPETRO_ALERTAS_CONFIG ',
'  SET CATEGORIA_STATUS = :P4_CATEGORIA_STATUS, ',
'      TIPO_PEDIDO_FILTRO = :P4_TIPO_PEDIDO_FILTRO, ',
'      DESCRICAO = :P4_DESCRICAO, ',
'      SEVERIDADE = :P4_SEVERIDADE, ',
'      TEMPO_DISPARO_MIN = :P4_TEMPO_DISPARO_MIN,',
'      ENVIAR_EMAIL = :P4_ENVIAR_EMAIL, ',
'      ENVIAR_EMAIL_CRIADOR_OC = :P4_ENVIAR_EMAIL_CRIADOR_OC, ',
'      EMAIL_DESTINATARIO = :P4_EMAIL_DESTINATARIO, ',
'      ENVIAR_WHATSAPP = :P4_ENVIAR_WHATSAPP,',
'      WHATSAPP_NUMERO = :P4_WHATSAPP_NUMERO,',
'      ENVIAR_WHATSAPP_CRIADOR_OC = :P4_ENVIAR_WHATSAPP_CRIADOR_OC,',
'      ATIVO = :P4_ATIVO',
'  WHERE ID = :P4_ID;',
'END IF;',
'COMMIT;',
'apex_util.redirect_url(p_url => ''f?p=&APP_ID.:3:'' || v(''SESSION''));'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21833295597442836105)
,p_internal_uid=>21842492234763530814
,p_created_on=>wwv_flow_imp.dz('20260729171535Z')
,p_updated_on=>wwv_flow_imp.dz('20260817135608Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>unistr('Cadastro de Usu\00E1rios')
,p_alias=>unistr('CADASTRO-DE-USU\00C1RIOS')
,p_step_title=>unistr('Cadastro de Usu\00E1rios')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================',
unistr('   PAGE 5 - CADASTRO DE USU\00C1RIOS'),
'   Application 100 - ArtOne On-Premise',
unistr('   Padr\00E3o laranja #E25F21 da Page 2 (Cockpit)'),
'   ============================================ */',
'',
unistr('/* Cabe\00E7alho da tabela \2014 gradiente laranja ArtPetro */'),
'.a-IRR-header, .a-IRR-table th, .t-Report-colHead {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'  border-right: 1px solid rgba(255,255,255,0.3) !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'}',
'.a-IRR-header:last-child, .a-IRR-table th:last-child {',
'  border-right: none !important;',
'}',
'',
unistr('/* Links dos cabe\00E7alhos (t\00EDtulos clic\00E1veis das colunas) */'),
'.a-IRR-headerLink, .a-IRR-header a, .a-IRR-table th a, .t-Report-colHead a {',
'  color: white !important;',
'  text-decoration: none !important;',
'}',
'.a-IRR-headerLink:hover, .a-IRR-header a:hover {',
'  color: #FFF9F5 !important;',
'  text-decoration: none !important;',
'}',
'',
'/* Barra de ferramentas da tabela */',
'.a-IRR-toolbar {',
'  border-top: 3px solid #E25F21 !important;',
'}',
'',
unistr('/* T\00EDtulo da regi\00E3o */'),
'.t-Region-title {',
'  color: #E25F21 !important;',
'  border-bottom: 2px solid #E25F21 !important;',
'  padding-bottom: 8px !important;',
'}',
'',
unistr('/* C\00E9lulas \2014 mesmo respiro da Page 2 */'),
'.a-IRR-table td {',
'  padding: 12px !important;',
'  border-bottom: 1px solid #f0f0f0 !important;',
'  border-right: 1px solid #f5f5f5 !important;',
'}',
'.a-IRR-table td:last-child {',
'  border-right: none !important;',
'}',
'',
'/* Hover nas linhas */',
'.a-IRR-table tbody tr:hover td,',
'.t-Report-report tbody tr:hover td {',
'  background-color: #FFF8F5 !important;',
'  transition: background 0.15s;',
'}',
'',
unistr('/* Bot\00E3o Create \2014 laranja */'),
'.t-Button--hot {',
'  background-color: #E25F21 !important;',
'  border-color: #D45119 !important;',
'  color: white !important;',
'}',
'.t-Button--hot:hover {',
'  background-color: #D45119 !important;',
'  border-color: #C44E1A !important;',
'}',
'',
unistr('/* Navigation Bar (usu\00E1rio no canto superior direito) \2014 laranja */'),
'.t-NavigationBar .t-Icon,',
'.t-NavigationBar .t-Button--navBar {',
'  color: #E25F21 !important;',
'}',
'.t-NavigationBar .t-Button--navBar:hover {',
'  background-color: rgba(226, 95, 33, 0.1) !important;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14668052621034661)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260818100916Z')
,p_created_by=>'MATHEUS'
,p_last_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14302803792829028)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14296159518828993)
,p_plug_name=>unistr('Cadastro de Usu\00E1rios')
,p_static_id=>unistr('cadastro-de-usu\00E1rios')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    SEQ_USUARIO,',
'    COD_USUARIO,',
'    NOME || '' '' || SOBRENOME AS NOME_COMPLETO,',
'    LOGIN,',
'    CPF,',
'    EMAIL_NOTIFICACAO,',
'    WHATSAPP_NOTIFICACAO,',
'    (SELECT NOME_PERFIL FROM PERFIS WHERE ID_PERFIL = USUARIOS.ID_PERFIL) AS PERFIL,',
'    CASE WHEN ATIVO = ''S'' THEN ''Ativo'' ELSE ''Inativo'' END AS STATUS,',
unistr('    CASE WHEN NOTIFICA = ''S'' THEN ''Sim'' ELSE ''N\00E3o'' END AS NOTIFICA,'),
'    TO_CHAR(CREATED_AT, ''DD/MM/YYYY HH24:MI'') AS CRIADO_EM,',
'    ''<a href="f?p=&APP_ID.:6:&SESSION.::NO::P6_SEQ_USUARIO:'' || SEQ_USUARIO || ''" class="btn btn-primary btn-sm">Editar</a>'' AS ACAO',
'FROM USUARIOS',
'ORDER BY NOME, SOBRENOME;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100916Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14296238773828993)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,:P6_SEQ_USUARIO:#SEQ_USUARIO#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6649133958267934
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100916Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260982408622574)
,p_db_column_name=>'ACAO'
,p_display_order=>45
,p_column_identifier=>'M'
,p_column_label=>unistr('A\00C7\00C3O')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812110127Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14297881973829010)
,p_db_column_name=>'COD_USUARIO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('ID USU\00C1RIO')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812160839Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14262964188622594)
,p_db_column_name=>'CPF'
,p_display_order=>55
,p_column_identifier=>'N'
,p_column_label=>'CPF'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812160801Z')
,p_updated_on=>wwv_flow_imp.dz('20260814095805Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260813642622573)
,p_db_column_name=>'CRIADO_EM'
,p_display_order=>35
,p_column_identifier=>'L'
,p_column_label=>'CRIADO EM'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812110127Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14298686051829013)
,p_db_column_name=>'EMAIL_NOTIFICACAO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('E-MAIL NOTIFICA\00C7\00C3O')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14478939437275773)
,p_db_column_name=>'LOGIN'
,p_display_order=>85
,p_column_identifier=>'Q'
,p_column_label=>'Login'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260813115646Z')
,p_updated_on=>wwv_flow_imp.dz('20260813115646Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14478889932275772)
,p_db_column_name=>'NOME_COMPLETO'
,p_display_order=>75
,p_column_identifier=>'P'
,p_column_label=>'Nome Completo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260813115646Z')
,p_updated_on=>wwv_flow_imp.dz('20260813115646Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260718312622572)
,p_db_column_name=>'NOTIFICA'
,p_display_order=>25
,p_column_identifier=>'K'
,p_column_label=>'NOTIFICA'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812110127Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14263068535622595)
,p_db_column_name=>'PERFIL'
,p_display_order=>65
,p_column_identifier=>'O'
,p_column_label=>'PERFIL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812161204Z')
,p_updated_on=>wwv_flow_imp.dz('20260812161300Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14297420971829006)
,p_db_column_name=>'SEQ_USUARIO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Seq Usuario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14260651154622571)
,p_db_column_name=>'STATUS'
,p_display_order=>15
,p_column_identifier=>'J'
,p_column_label=>'STATUS'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812110127Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14299057062829015)
,p_db_column_name=>'WHATSAPP_NOTIFICACAO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('WHATSAPP NOTIFICA\00C7\00C3O')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812152507Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14303325575830986)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME_COMPLETO:PERFIL:EMAIL_NOTIFICACAO:WHATSAPP_NOTIFICACAO:STATUS:NOTIFICA:CRIADO_EM:LOGIN'
,p_created_on=>wwv_flow_imp.dz('20260812105348Z')
,p_updated_on=>wwv_flow_imp.dz('20260818100916Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14301022247829022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14296159518828993)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Criar Usu\00E1rio')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:6::'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260813124154Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14301433992829023)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14296159518828993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14301885112829024)
,p_event_id=>wwv_flow_imp.id(14301433992829023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14296159518828993)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105328Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534506268708776)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ACESSO_CADASTRO'
,p_static_id=>'check-acesso-cadastro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count',
'  FROM USUARIO_MODULO_ACESSO uma',
'  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
'  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
'    AND uma.MODULO = ''CADASTRO_USUARIOS''',
'    AND uma.ATIVO = ''S'';',
'  IF v_count = 0 THEN',
'    APEX_UTIL.REDIRECT_URL(APEX_PAGE.GET_URL(P_PAGE => 1));',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6887401453147717
,p_created_on=>wwv_flow_imp.dz('20260814114704Z')
,p_updated_on=>wwv_flow_imp.dz('20260814115136Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>unistr('Editar Usu\00E1rio')
,p_alias=>unistr('EDITAR-USU\00C1RIO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Editar Usu\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================',
unistr('   MODAL EDITAR USU\00C1RIO - PAGE 5/6 - v2 SEGURA'),
'   Application 100 - ArtOne On-Premise',
unistr('   Padr\00E3o laranja \2014 seguro, sem quebrar campos'),
'   ============================================ */',
'',
'/* ===== LABELS ===== */',
'label,',
'.t-Form-item label,',
'.apex-item-label,',
'.t-Form-itemLabel,',
'.a-Form-label {',
'  color: #000 !important;',
'  font-weight: 400 !important;',
'  font-size: 12px !important;',
'  margin-bottom: 8px !important;',
'  display: block !important;',
'  text-transform: uppercase !important;',
'  letter-spacing: 0.8px !important;',
'}',
'',
'/* ===== CAMPOS DO FORM ===== */',
'input[type="text"],',
'input[type="email"],',
'input[type="password"],',
'input[type="tel"],',
'textarea,',
'select {',
'  color: #000 !important;',
'  background-color: #fff !important;',
'  border: 2px solid #E25F21 !important;',
'  border-radius: 4px !important;',
'  padding: 10px !important;',
'  font-size: 13px !important;',
'  width: 100% !important;',
'  box-sizing: border-box !important;',
'}',
'',
'input[type="text"]:focus,',
'input[type="email"]:focus,',
'input[type="password"]:focus,',
'input[type="tel"]:focus,',
'textarea:focus,',
'select:focus {',
'  border-color: #D45119 !important;',
'  outline: none !important;',
'  box-shadow: 0 0 0 3px rgba(226, 95, 33, 0.1) !important;',
'}',
'',
'/* ===== CONTAINERS DOS CAMPOS (fundo claro) ===== */',
'.t-Form-itemContainer,',
'.t-Form-fieldContainer,',
'.apex-item-wrapper,',
'.t-Form-item {',
'  background: #FFF8F5 !important;',
'  border: 2px solid #E25F21 !important;',
'  border-radius: 6px !important;',
'  padding: 14px 16px !important;',
'  margin: 12px 0 !important;',
'}',
'',
'/* ===== TOGGLES/SWITCHES ===== */',
'input[type="checkbox"],',
'input[type="radio"] {',
'  width: 18px !important;',
'  height: 18px !important;',
'  accent-color: #E25F21 !important;',
'  margin-right: 8px !important;',
'  cursor: pointer !important;',
'}',
'',
'/* ===== MODAL HEADER ===== */',
'.t-Dialog-header,',
'.apex-modal-header,',
'.ui-dialog-titlebar {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 16px 20px !important;',
'  font-weight: 700 !important;',
'  font-size: 16px !important;',
'  border: none !important;',
'}',
'',
unistr('/* Bot\00E3o X de fechar */'),
'.t-Dialog-close,',
'.apex-modal-close,',
'.ui-dialog-titlebar-close {',
'  background: none !important;',
'  border: none !important;',
'  color: white !important;',
'  font-size: 24px !important;',
'  cursor: pointer !important;',
'  padding: 0 !important;',
'}',
'',
'.t-Dialog-close:hover,',
'.apex-modal-close:hover {',
'  color: #FFF9F5 !important;',
'}',
'',
unistr('/* ===== BOT\00D5ES ===== */'),
'button,',
'.t-Button {',
'  padding: 12px 24px !important;',
'  border-radius: 4px !important;',
'  font-weight: 700 !important;',
'  font-size: 12px !important;',
'  border: none !important;',
'  cursor: pointer !important;',
'  text-transform: uppercase !important;',
'  transition: 0.2s !important;',
'}',
'',
'button:hover,',
'.t-Button:hover {',
'  transform: translateY(-2px) !important;',
'}',
'',
unistr('/* 1\00BA bot\00E3o (CANCELAR) \2014 cinza */'),
'.t-Form-buttonContainer button:nth-child(1),',
'.t-ButtonRegion button:nth-child(1),',
'.t-Dialog-footer button:nth-child(1),',
'.ui-dialog-buttonset button:nth-child(1) {',
'  background: #f5f5f5 !important;',
'  color: #555 !important;',
'  border: 1px solid #ddd !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(1):hover,',
'.t-ButtonRegion button:nth-child(1):hover,',
'.t-Dialog-footer button:nth-child(1):hover,',
'.ui-dialog-buttonset button:nth-child(1):hover {',
'  background: #ebebeb !important;',
'}',
'',
unistr('/* 2\00BA bot\00E3o (DELETAR) \2014 vermelho */'),
'.t-Form-buttonContainer button:nth-child(2),',
'.t-ButtonRegion button:nth-child(2),',
'.t-Dialog-footer button:nth-child(2),',
'.ui-dialog-buttonset button:nth-child(2) {',
'  background: #DC3545 !important;',
'  color: white !important;',
'  border: none !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(2):hover,',
'.t-ButtonRegion button:nth-child(2):hover,',
'.t-Dialog-footer button:nth-child(2):hover,',
'.ui-dialog-buttonset button:nth-child(2):hover {',
'  background: #C82333 !important;',
'}',
'',
unistr('/* 3\00BA bot\00E3o (SALVAR/APLICAR) \2014 laranja */'),
'.t-Form-buttonContainer button:nth-child(3),',
'.t-ButtonRegion button:nth-child(3),',
'.t-Dialog-footer button:nth-child(3),',
'.ui-dialog-buttonset button:nth-child(3) {',
'  background: linear-gradient(135deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  border: none !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(3):hover,',
'.t-ButtonRegion button:nth-child(3):hover,',
'.t-Dialog-footer button:nth-child(3):hover,',
'.ui-dialog-buttonset button:nth-child(3):hover {',
'  background: linear-gradient(135deg, #D45119 0%, #C44E1A 100%) !important;',
'}',
'',
'/* ===== FOOTER DO MODAL ===== */',
'.t-Dialog-footer,',
'.apex-modal-footer,',
'.ui-dialog-buttonpane {',
'  background: #f5f5f5 !important;',
'  border-top: 2px solid #E25F21 !important;',
'  padding: 16px 20px !important;',
'  display: flex !important;',
'  gap: 10px !important;',
'  justify-content: center !important;',
'}',
'',
'/* ===== HELP TEXT ===== */',
'.t-Form-itemAssistance,',
'.t-Form-help,',
'.a-Form-inlineHelp {',
'  font-size: 11px !important;',
'  color: #888 !important;',
'  margin-top: 6px !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260814133736Z')
,p_created_by=>'MATHEUS'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14291785975828822)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105326Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14284303549828799)
,p_plug_name=>unistr('Editar Usu\00E1rio')
,p_static_id=>unistr('editar-usu\00E1rio')
,p_title=>unistr('Editar Usu\00E1rio')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813112052Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14263107446622596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14291785975828822)
,p_button_name=>'BT_GERENCIAR_ACESSOS'
,p_static_id=>'bt-gerenciar-acessos'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Gerenciar Acessos'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_SEQ_USUARIO:&P6_SEQ_USUARIO.'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P6_SEQ_USUARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_created_on=>wwv_flow_imp.dz('20260812170553Z')
,p_updated_on=>wwv_flow_imp.dz('20260813124348Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14292188547828822)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14291785975828822)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260812150552Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14292680800828824)
,p_button_id=>wwv_flow_imp.id(14292188547828822)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105326Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14293972788828827)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14291785975828822)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CRIAR  '
,p_button_position=>'NEXT'
,p_button_condition=>'P6_SEQ_USUARIO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813124418Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14293133397828826)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14291785975828822)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'DELETAR'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>unistr('Deseja realmente excluir este usu\00E1rio? Esta a\00E7\00E3o n\00E3o pode ser desfeita.')
,p_confirm_style=>'danger'
,p_button_condition=>'P6_SEQ_USUARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813111508Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14293525204828827)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14291785975828822)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SALVAR'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_SEQ_USUARIO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260812150612Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14286651503828813)
,p_name=>'P6_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>'Ativo'
,p_source=>'ATIVO'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120130Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14262741470622592)
,p_name=>'P6_CPF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_source=>'CPF'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812155634Z')
,p_updated_on=>wwv_flow_imp.dz('20260814101511Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14287476895828814)
,p_name=>'P6_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120130Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14285806049828812)
,p_name=>'P6_EMAIL_NOTIFICACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>unistr('E-MAIL NOTIFICA\00C7\00C3O')
,p_source=>'EMAIL_NOTIFICACAO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120130Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14479128210275775)
,p_name=>'P6_LOGIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>'LOGIN'
,p_source=>'LOGIN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260813120130Z')
,p_updated_on=>wwv_flow_imp.dz('20260814133736Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14285419991828812)
,p_name=>'P6_NOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>'NOME'
,p_source=>'NOME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120015Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14287091955828813)
,p_name=>'P6_NOTIFICA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>'Notifica'
,p_source=>'NOTIFICA'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120130Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14284630846828806)
,p_name=>'P6_SEQ_USUARIO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_source=>'SEQ_USUARIO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813105646Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14479093088275774)
,p_name=>'P6_SOBRENOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>'SOBRENOME'
,p_source=>'SOBRENOME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260813120059Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120059Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14286279602828813)
,p_name=>'P6_WHATSAPP_NOTIFICACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_item_source_plug_id=>wwv_flow_imp.id(14284303549828799)
,p_prompt=>unistr('WHATSAPP NOTIFICA\00C7\00C3O')
,p_source=>'WHATSAPP_NOTIFICACAO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120130Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14533524632708766)
,p_validation_name=>'VAL_LOGIN_UNICO'
,p_static_id=>'val-login-unico'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*)',
'  INTO v_count',
'  FROM USUARIOS',
'  WHERE LOGIN = :P6_LOGIN',
'    AND SEQ_USUARIO != NVL(:P6_SEQ_USUARIO, -1);',
'',
'  IF v_count > 0 THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Login '':P6_LOGIN'' j\00E1 est\00E1 em uso. Escolha outro.')
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(14479128210275775)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20260814101253Z')
,p_updated_on=>wwv_flow_imp.dz('20260814101253Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14535219001708783)
,p_name=>'DA_GERAR_LOGIN'
,p_static_id=>'da-gerar-login'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_SOBRENOME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'focusout'
,p_created_on=>wwv_flow_imp.dz('20260814133542Z')
,p_updated_on=>wwv_flow_imp.dz('20260814133639Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14535382255708784)
,p_event_id=>wwv_flow_imp.id(14535219001708783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-javascript-code'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var nome = $v(''P6_NOME'').trim();',
    'var sobrenome = $v(''P6_SOBRENOME'').trim();',
    '',
    'if (nome.length > 0 && sobrenome.length > 0) {',
    '  var primeiraLetra = nome.charAt(0).toLowerCase();',
    '  var sobrenomeLimpo = sobrenome',
    '    .toLowerCase()',
    '    .normalize(''NFD'')',
    '    .replace(/[\u0300-\u036f]/g, '''')',
    '    .replace(/\s+/g, ''.'');',
    '',
    '  var login = primeiraLetra + ''.'' + sobrenomeLimpo;',
    '  ',
    unistr('  // Atualiza s\00F3 o display \2014 n\00E3o seta session state'),
    '  document.querySelector(''#P6_LOGIN'').value = login;',
    '  document.querySelector(''[id="P6_LOGIN"]'').textContent = login;',
    '}')))).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814133542Z')
,p_updated_on=>wwv_flow_imp.dz('20260814133542Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14295152949828831)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6648048134267772
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260813091359Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14263655159622601)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRIAR_USUARIO'
,p_static_id=>'criar-usuario'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_seq NUMBER;',
'    v_pwd VARCHAR2(20);',
'BEGIN',
'    SP_CRIAR_USUARIO(',
'        p_nome        => :P6_NOME,',
'        p_sobrenome   => :P6_SOBRENOME,',
'        p_email       => :P6_EMAIL_NOTIFICACAO,',
'        p_cpf         => :P6_CPF,',
'        p_id_perfil   => :P6_ID_PERFIL,',
'        p_whatsapp    => :P6_WHATSAPP_NOTIFICACAO,',
'        p_criado_por  => :APP_USER,',
'        p_seq_usuario => v_seq,',
'        p_senha_temp  => v_pwd',
'    );',
'    :P6_SEQ_USUARIO := v_seq;',
'    :P7_SEQ_USUARIO := v_seq;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14293972788828827)
,p_internal_uid=>6616550344061542
,p_created_on=>wwv_flow_imp.dz('20260813091141Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120403Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14262554442622590)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETAR_USUARIO'
,p_static_id=>'delete-usuario'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_msg VARCHAR2(500);',
'BEGIN',
'    SP_DELETAR_USUARIO(',
'        p_seq_usuario => :P6_SEQ_USUARIO,',
'        p_msg_erro    => v_msg',
'    );',
'    IF v_msg IS NOT NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001, v_msg);',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14293133397828826)
,p_process_success_message=>unistr('Usu\00E1rio exclu\00EDdo com sucesso.')
,p_internal_uid=>6615449627061531
,p_created_on=>wwv_flow_imp.dz('20260812135444Z')
,p_updated_on=>wwv_flow_imp.dz('20260813121446Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14294383267828828)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14284303549828799)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Editar Usu\00E1rio')
,p_static_id=>unistr('initialize-form-editar-usu\00E1rio')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6647278452267769
,p_created_on=>wwv_flow_imp.dz('20260812105326Z')
,p_updated_on=>wwv_flow_imp.dz('20260812105326Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14262630249622591)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ATUALIZAR_USUARIO'
,p_static_id=>'process-form-editar-usuario'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_msg VARCHAR2(500);',
'BEGIN',
'    SP_ATUALIZAR_USUARIO(',
'        p_seq_usuario => :P6_SEQ_USUARIO,',
'        p_nome        => :P6_NOME,',
'        p_sobrenome   => :P6_SOBRENOME,',
'        p_email       => :P6_EMAIL_NOTIFICACAO,',
'        p_id_perfil   => :P6_ID_PERFIL,',
'        p_whatsapp    => :P6_WHATSAPP_NOTIFICACAO,',
'        p_ativo       => :P6_ATIVO,',
'        p_notifica    => :P6_NOTIFICA,',
'        p_msg_erro    => v_msg',
'    );',
'    IF v_msg IS NOT NULL THEN',
'        RAISE_APPLICATION_ERROR(-20001, v_msg);',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14293525204828827)
,p_internal_uid=>6615525434061532
,p_created_on=>wwv_flow_imp.dz('20260812144145Z')
,p_updated_on=>wwv_flow_imp.dz('20260813120409Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14263752439622602)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REDIRECT_ACESSOS'
,p_static_id=>'redirect-acessos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.REDIRECT_URL(',
'    APEX_PAGE.GET_URL(',
'        p_page   => 7,',
'        p_items  => ''P7_SEQ_USUARIO'',',
'        p_values => :P6_SEQ_USUARIO',
'    )',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14293972788828827)
,p_internal_uid=>6616647624061543
,p_created_on=>wwv_flow_imp.dz('20260813091359Z')
,p_updated_on=>wwv_flow_imp.dz('20260813091359Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Gerenciador de Acessos'
,p_alias=>'GERENCIADOR-DE-ACESSOS'
,p_step_title=>'Gerenciador de Acessos'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================',
unistr('   PAGE 5 - CADASTRO DE USU\00C1RIOS'),
'   Application 100 - ArtOne On-Premise',
unistr('   Padr\00E3o laranja #E25F21 da Page 2 (Cockpit)'),
'   ============================================ */',
'',
unistr('/* Cabe\00E7alho da tabela \2014 gradiente laranja ArtPetro */'),
'.a-IRR-header, .a-IRR-table th, .t-Report-colHead {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 14px 12px !important;',
'  font-weight: bold !important;',
'  border-right: 1px solid rgba(255,255,255,0.3) !important;',
'  border-bottom: 2px solid #C44E1A !important;',
'}',
'.a-IRR-header:last-child, .a-IRR-table th:last-child {',
'  border-right: none !important;',
'}',
'',
unistr('/* Links dos cabe\00E7alhos (t\00EDtulos clic\00E1veis das colunas) */'),
'.a-IRR-headerLink, .a-IRR-header a, .a-IRR-table th a, .t-Report-colHead a {',
'  color: white !important;',
'  text-decoration: none !important;',
'}',
'.a-IRR-headerLink:hover, .a-IRR-header a:hover {',
'  color: #FFF9F5 !important;',
'  text-decoration: none !important;',
'}',
'',
'/* Barra de ferramentas da tabela */',
'.a-IRR-toolbar {',
'  border-top: 3px solid #E25F21 !important;',
'}',
'',
unistr('/* T\00EDtulo da regi\00E3o */'),
'.t-Region-title {',
'  color: #E25F21 !important;',
'  border-bottom: 2px solid #E25F21 !important;',
'  padding-bottom: 8px !important;',
'}',
'',
unistr('/* C\00E9lulas \2014 mesmo respiro da Page 2 */'),
'.a-IRR-table td {',
'  padding: 12px !important;',
'  border-bottom: 1px solid #f0f0f0 !important;',
'  border-right: 1px solid #f5f5f5 !important;',
'}',
'.a-IRR-table td:last-child {',
'  border-right: none !important;',
'}',
'',
'/* Hover nas linhas */',
'.a-IRR-table tbody tr:hover td,',
'.t-Report-report tbody tr:hover td {',
'  background-color: #FFF8F5 !important;',
'  transition: background 0.15s;',
'}',
'',
unistr('/* Bot\00E3o Create \2014 laranja */'),
'.t-Button--hot {',
'  background-color: #E25F21 !important;',
'  border-color: #D45119 !important;',
'  color: white !important;',
'}',
'.t-Button--hot:hover {',
'  background-color: #D45119 !important;',
'  border-color: #C44E1A !important;',
'}',
'',
unistr('/* Navigation Bar (usu\00E1rio no canto superior direito) \2014 laranja */'),
'.t-NavigationBar .t-Icon,',
'.t-NavigationBar .t-Button--navBar {',
'  color: #E25F21 !important;',
'}',
'.t-NavigationBar .t-Button--navBar:hover {',
'  background-color: rgba(226, 95, 33, 0.1) !important;',
'}'))
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(14668412002036719)
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260818153451Z')
,p_created_by=>'MATHEUS'
,p_last_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14326731388971965)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14320994455971946)
,p_plug_name=>'Gerenciador de Acessos'
,p_static_id=>'gerenciador-de-acessos'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SEQ_ACESSO, A.SEQ_USUARIO, ',
'       U.NOME || '' '' || U.SOBRENOME AS NOME_COMPLETO,',
'       A.FILIAL, A.TIPO_PERFIL, A.ATIVO, A.CREATED_AT, A.UPDATED_AT',
'FROM USUARIO_FILIAL_ACESSO A',
'JOIN USUARIOS U ON U.SEQ_USUARIO = A.SEQ_USUARIO',
'WHERE A.SEQ_USUARIO = NVL(:P7_SEQ_USUARIO, A.SEQ_USUARIO)',
'ORDER BY U.NOME, U.SOBRENOME, A.FILIAL, A.TIPO_PERFIL'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260818153451Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14321016892971946)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_SEQ_ACESSO:#SEQ_ACESSO#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>6673912077410887
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260818153451Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14323821885971959)
,p_db_column_name=>'ATIVO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'ATIVO'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260813140534Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14324298193971960)
,p_db_column_name=>'CREATED_AT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created At'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14323015462971956)
,p_db_column_name=>'FILIAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'FILIAL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812164823Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14479257884275776)
,p_db_column_name=>'NOME_COMPLETO'
,p_display_order=>37
,p_column_identifier=>'K'
,p_column_label=>'NOME '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260813120814Z')
,p_updated_on=>wwv_flow_imp.dz('20260813123238Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14322211902971952)
,p_db_column_name=>'SEQ_ACESSO'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>''' '' '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260813141116Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14261456804622579)
,p_db_column_name=>'SEQ_USUARIO'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>unistr('Selecionar Usu\00E1rio')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812112851Z')
,p_updated_on=>wwv_flow_imp.dz('20260812115029Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14323485093971957)
,p_db_column_name=>'TIPO_PERFIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'TIPO PERFIL'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812164755Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14261625890622581)
,p_db_column_name=>'UPDATED_AT'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'CRIADO EM '
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260812113004Z')
,p_updated_on=>wwv_flow_imp.dz('20260812164930Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14327399682979343)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME_COMPLETO:FILIAL:TIPO_PERFIL:ATIVO:UPDATED_AT'
,p_created_on=>wwv_flow_imp.dz('20260812111832Z')
,p_updated_on=>wwv_flow_imp.dz('20260818153451Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'M.CATENACCI'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14262033155622585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14320994455971946)
,p_button_name=>'ADC_ACESSO'
,p_static_id=>'adc-usuario'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Adicionar Acesso'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_SEQ_USUARIO:&P7_SEQ_USUARIO.'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260812114138Z')
,p_updated_on=>wwv_flow_imp.dz('20260813121916Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14263269494622597)
,p_name=>'P7_SEQ_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14320994455971946)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812170804Z')
,p_updated_on=>wwv_flow_imp.dz('20260813134819Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14325407128971963)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14320994455971946)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14325889672971964)
,p_event_id=>wwv_flow_imp.id(14325407128971963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14320994455971946)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111718Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111718Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14261719425622582)
,p_name=>'Filtrar Acessos'
,p_static_id=>'filtrar-acessos'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SEQ_USUARIO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20260812113449Z')
,p_updated_on=>wwv_flow_imp.dz('20260812113449Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14261998037622584)
,p_event_id=>wwv_flow_imp.id(14261719425622582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Acessos'
,p_static_id=>'refresh-acessos'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14320994455971946)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812113449Z')
,p_updated_on=>wwv_flow_imp.dz('20260812113449Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534608051708777)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_ACESSO_GERENCIADOR'
,p_static_id=>'check-acesso-gerenciador'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'BEGIN',
'  SELECT COUNT(*) INTO v_count',
'  FROM USUARIO_MODULO_ACESSO uma',
'  JOIN USUARIOS u ON u.SEQ_USUARIO = uma.SEQ_USUARIO',
'  WHERE UPPER(u.LOGIN) = UPPER(:APP_USER)',
'    AND uma.MODULO = ''GERENCIADOR_ACESSOS''',
'    AND uma.ATIVO = ''S'';',
'  IF v_count = 0 THEN',
'    APEX_UTIL.REDIRECT_URL(APEX_PAGE.GET_URL(P_PAGE => 1));',
'  END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6887503236147718
,p_created_on=>wwv_flow_imp.dz('20260814114724Z')
,p_updated_on=>wwv_flow_imp.dz('20260814115257Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Editar Acesso'
,p_alias=>'EDITAR-ACESSO'
,p_page_mode=>'MODAL'
,p_step_title=>'Editar Acesso'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ============================================',
unistr('   MODAL EDITAR USU\00C1RIO - PAGE 5/6 - v2 SEGURA'),
'   Application 100 - ArtOne On-Premise',
unistr('   Padr\00E3o laranja \2014 seguro, sem quebrar campos'),
'   ============================================ */',
'',
'/* ===== LABELS ===== */',
'label,',
'.t-Form-item label,',
'.apex-item-label,',
'.t-Form-itemLabel,',
'.a-Form-label {',
'  color: #000 !important;',
'  font-weight: 400 !important;',
'  font-size: 12px !important;',
'  margin-bottom: 8px !important;',
'  display: block !important;',
'  text-transform: uppercase !important;',
'  letter-spacing: 0.8px !important;',
'}',
'',
'/* ===== CAMPOS DO FORM ===== */',
'input[type="text"],',
'input[type="email"],',
'input[type="password"],',
'input[type="tel"],',
'textarea,',
'select {',
'  color: #000 !important;',
'  background-color: #fff !important;',
'  border: 2px solid #E25F21 !important;',
'  border-radius: 4px !important;',
'  padding: 10px !important;',
'  font-size: 13px !important;',
'  width: 100% !important;',
'  box-sizing: border-box !important;',
'}',
'',
'input[type="text"]:focus,',
'input[type="email"]:focus,',
'input[type="password"]:focus,',
'input[type="tel"]:focus,',
'textarea:focus,',
'select:focus {',
'  border-color: #D45119 !important;',
'  outline: none !important;',
'  box-shadow: 0 0 0 3px rgba(226, 95, 33, 0.1) !important;',
'}',
'',
'/* ===== CONTAINERS DOS CAMPOS (fundo claro) ===== */',
'.t-Form-itemContainer,',
'.t-Form-fieldContainer,',
'.apex-item-wrapper,',
'.t-Form-item {',
'  background: #FFF8F5 !important;',
'  border: 2px solid #E25F21 !important;',
'  border-radius: 6px !important;',
'  padding: 14px 16px !important;',
'  margin: 12px 0 !important;',
'}',
'',
'/* ===== TOGGLES/SWITCHES ===== */',
'input[type="checkbox"],',
'input[type="radio"] {',
'  width: 18px !important;',
'  height: 18px !important;',
'  accent-color: #E25F21 !important;',
'  margin-right: 8px !important;',
'  cursor: pointer !important;',
'}',
'',
'/* ===== MODAL HEADER ===== */',
'.t-Dialog-header,',
'.apex-modal-header,',
'.ui-dialog-titlebar {',
'  background: linear-gradient(180deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  padding: 16px 20px !important;',
'  font-weight: 700 !important;',
'  font-size: 16px !important;',
'  border: none !important;',
'}',
'',
unistr('/* Bot\00E3o X de fechar */'),
'.t-Dialog-close,',
'.apex-modal-close,',
'.ui-dialog-titlebar-close {',
'  background: none !important;',
'  border: none !important;',
'  color: white !important;',
'  font-size: 24px !important;',
'  cursor: pointer !important;',
'  padding: 0 !important;',
'}',
'',
'.t-Dialog-close:hover,',
'.apex-modal-close:hover {',
'  color: #FFF9F5 !important;',
'}',
'',
unistr('/* ===== BOT\00D5ES ===== */'),
'button,',
'.t-Button {',
'  padding: 12px 24px !important;',
'  border-radius: 4px !important;',
'  font-weight: 700 !important;',
'  font-size: 12px !important;',
'  border: none !important;',
'  cursor: pointer !important;',
'  text-transform: uppercase !important;',
'  transition: 0.2s !important;',
'}',
'',
'button:hover,',
'.t-Button:hover {',
'  transform: translateY(-2px) !important;',
'}',
'',
unistr('/* 1\00BA bot\00E3o (CANCELAR) \2014 cinza */'),
'.t-Form-buttonContainer button:nth-child(1),',
'.t-ButtonRegion button:nth-child(1),',
'.t-Dialog-footer button:nth-child(1),',
'.ui-dialog-buttonset button:nth-child(1) {',
'  background: #f5f5f5 !important;',
'  color: #555 !important;',
'  border: 1px solid #ddd !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(1):hover,',
'.t-ButtonRegion button:nth-child(1):hover,',
'.t-Dialog-footer button:nth-child(1):hover,',
'.ui-dialog-buttonset button:nth-child(1):hover {',
'  background: #ebebeb !important;',
'}',
'',
unistr('/* 2\00BA bot\00E3o (DELETAR) \2014 vermelho */'),
'.t-Form-buttonContainer button:nth-child(2),',
'.t-ButtonRegion button:nth-child(2),',
'.t-Dialog-footer button:nth-child(2),',
'.ui-dialog-buttonset button:nth-child(2) {',
'  background: #DC3545 !important;',
'  color: white !important;',
'  border: none !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(2):hover,',
'.t-ButtonRegion button:nth-child(2):hover,',
'.t-Dialog-footer button:nth-child(2):hover,',
'.ui-dialog-buttonset button:nth-child(2):hover {',
'  background: #C82333 !important;',
'}',
'',
unistr('/* 3\00BA bot\00E3o (SALVAR/APLICAR) \2014 laranja */'),
'.t-Form-buttonContainer button:nth-child(3),',
'.t-ButtonRegion button:nth-child(3),',
'.t-Dialog-footer button:nth-child(3),',
'.ui-dialog-buttonset button:nth-child(3) {',
'  background: linear-gradient(135deg, #E25F21 0%, #D45119 100%) !important;',
'  color: white !important;',
'  border: none !important;',
'}',
'',
'.t-Form-buttonContainer button:nth-child(3):hover,',
'.t-ButtonRegion button:nth-child(3):hover,',
'.t-Dialog-footer button:nth-child(3):hover,',
'.ui-dialog-buttonset button:nth-child(3):hover {',
'  background: linear-gradient(135deg, #D45119 0%, #C44E1A 100%) !important;',
'}',
'',
'/* ===== FOOTER DO MODAL ===== */',
'.t-Dialog-footer,',
'.apex-modal-footer,',
'.ui-dialog-buttonpane {',
'  background: #f5f5f5 !important;',
'  border-top: 2px solid #E25F21 !important;',
'  padding: 16px 20px !important;',
'  display: flex !important;',
'  gap: 10px !important;',
'  justify-content: center !important;',
'}',
'',
'/* ===== HELP TEXT ===== */',
'.t-Form-itemAssistance,',
'.t-Form-help,',
'.a-Form-inlineHelp {',
'  font-size: 11px !important;',
'  color: #888 !important;',
'  margin-top: 6px !important;',
'}'))
,p_step_template=>2101883943284197310
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260818144710Z')
,p_created_by=>'MATHEUS'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14316447632971812)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111716Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14310101196971800)
,p_plug_name=>'Editar Acesso'
,p_static_id=>'editar-acesso'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO_FILIAL_ACESSO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14316842492971812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14316447632971812)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812121940Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(14317339072971812)
,p_button_id=>wwv_flow_imp.id(14316842492971812)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111716Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14317833162971813)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14316447632971812)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'DELETAR '
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Deseja realmente excluir? Esta a\00E7\00E3o n\00E3o pode ser desfeita.'),
''))
,p_confirm_style=>'danger'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260813150529Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14318251660971813)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14316447632971812)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SALVAR'
,p_button_position=>'CLOSE'
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260813122257Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14312386624971808)
,p_name=>'P8_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'ATIVO'
,p_source=>'ATIVO'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14312768737971809)
,p_name=>'P8_CREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_source=>'CREATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14311590988971807)
,p_name=>'P8_FILIAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'FILIAL'
,p_source=>'FILIAL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''ArtPetro'' AS d, ''ArtPetro'' AS r FROM DUAL',
'UNION ALL',
'SELECT ''NutriOil'', ''NutriOil'' FROM DUAL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14533953594708770)
,p_name=>'P8_MOD_ACESSOS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'Gerenciador de Acessos'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814102615Z')
,p_updated_on=>wwv_flow_imp.dz('20260814112421Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14533748573708768)
,p_name=>'P8_MOD_ALERTAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>unistr('Configura\00E7\00E3o de Alertas')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814102615Z')
,p_updated_on=>wwv_flow_imp.dz('20260814112421Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14533813107708769)
,p_name=>'P8_MOD_CADASTRO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>unistr('Cadastro de Usu\00E1rios')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814102615Z')
,p_updated_on=>wwv_flow_imp.dz('20260814112421Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14533681001708767)
,p_name=>'P8_MOD_DASHBOARD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'DASHBOARD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814102551Z')
,p_updated_on=>wwv_flow_imp.dz('20260814112421Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15257010122495762)
,p_name=>'P8_MOD_DISPARAR_ALERTAS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'Disparar Alertas'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_value', 'N',
  'on_value', 'S',
  'use_defaults', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260818142153Z')
,p_updated_on=>wwv_flow_imp.dz('20260818142820Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14310447370971801)
,p_name=>'P8_SEQ_ACESSO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_source=>'SEQ_ACESSO'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14310822237971802)
,p_name=>'P8_SEQ_USUARIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>unistr('USU\00C1RIO')
,p_source=>'SEQ_USUARIO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOME || '' '' || SOBRENOME AS D, SEQ_USUARIO AS R ',
'FROM USUARIOS ',
'ORDER BY NOME, SOBRENOME'))
,p_lov_display_null=>'YES'
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14311905758971808)
,p_name=>'P8_TIPO_PERFIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_prompt=>'TIPO PERFIL '
,p_source=>'TIPO_PERFIL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Administrador'' AS d, ''Administrador'' AS r FROM DUAL',
'UNION ALL',
'SELECT ''Faturamento'', ''Faturamento'' FROM DUAL',
'UNION ALL',
unistr('SELECT ''Log\00EDstica'', ''Log\00EDstica'' FROM DUAL'),
'UNION ALL',
'SELECT ''Supply'', ''Supply'' FROM DUAL',
'UNION ALL',
'SELECT ''Operador'', ''Operador'' FROM DUAL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3033038003750078790
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14313526760971809)
,p_name=>'P8_UPDATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_item_source_plug_id=>wwv_flow_imp.id(14310101196971800)
,p_source=>'UPDATED_AT'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814111000Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14479438530275778)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ATUALIZAR_ACESSO'
,p_static_id=>'atualizar-acesso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_ATUALIZAR_ACESSO(',
'    p_seq_acesso => :P8_SEQ_ACESSO,',
'    p_filial => :P8_FILIAL,',
'    p_tipo_perfil => :P8_TIPO_PERFIL,',
'    p_ativo => :P8_ATIVO',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Erro ao atualizar acesso. Tente novamente.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Acesso atualizado com sucesso.'
,p_internal_uid=>6832333714714719
,p_created_on=>wwv_flow_imp.dz('20260813135710Z')
,p_updated_on=>wwv_flow_imp.dz('20260813150406Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534026325708771)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARREGAR_MODULOS'
,p_static_id=>'carregar-modulos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SELECT MAX(CASE WHEN MODULO = ''DASHBOARD'' THEN ATIVO ELSE ''N'' END),',
'         MAX(CASE WHEN MODULO = ''ALERTAS'' THEN ATIVO ELSE ''N'' END),',
'         MAX(CASE WHEN MODULO = ''CADASTRO_USUARIOS'' THEN ATIVO ELSE ''N'' END),',
'         MAX(CASE WHEN MODULO = ''GERENCIADOR_ACESSOS'' THEN ATIVO ELSE ''N'' END),',
'         MAX(CASE WHEN MODULO = ''DISPARAR_ALERTAS'' THEN ATIVO ELSE ''N'' END)',
'  INTO :P8_MOD_DASHBOARD,',
'       :P8_MOD_ALERTAS,',
'       :P8_MOD_CADASTRO,',
'       :P8_MOD_ACESSOS,',
'       :P8_MOD_DISPARAR_ALERTAS',
'  FROM USUARIO_MODULO_ACESSO',
'  WHERE SEQ_USUARIO = :P8_SEQ_USUARIO;',
'EXCEPTION WHEN NO_DATA_FOUND THEN',
'  :P8_MOD_DASHBOARD  := ''N'';',
'  :P8_MOD_ALERTAS    := ''N'';',
'  :P8_MOD_CADASTRO   := ''N'';',
'  :P8_MOD_ACESSOS    := ''N'';',
'  :P8_MOD_DISPARAR_ALERTAS := ''N'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6886921510147712
,p_created_on=>wwv_flow_imp.dz('20260814102846Z')
,p_updated_on=>wwv_flow_imp.dz('20260818144710Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14319866481971814)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>6672761666410755
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260814102914Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14262452002622589)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_ACESSO'
,p_static_id=>'delete-aces'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_DELETAR_ACESSO(p_seq_acesso => :P8_SEQ_ACESSO);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Erro ao remover acesso. Tente novamente.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14317833162971813)
,p_process_success_message=>'Acesso removido com sucesso.'
,p_internal_uid=>6615347187061530
,p_created_on=>wwv_flow_imp.dz('20260812131117Z')
,p_updated_on=>wwv_flow_imp.dz('20260813150417Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14319049812971814)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14310101196971800)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Editar Acesso'
,p_static_id=>'initialize-form-editar-acesso'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>6671944997410755
,p_created_on=>wwv_flow_imp.dz('20260812111716Z')
,p_updated_on=>wwv_flow_imp.dz('20260812111716Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14479308275275777)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LIMPAR_SEQ_USUARIO'
,p_static_id=>'limpar-seq-usuario'
,p_process_sql_clob=>':P7_SEQ_USUARIO := NULL;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>6832203459714718
,p_created_on=>wwv_flow_imp.dz('20260813134554Z')
,p_updated_on=>wwv_flow_imp.dz('20260813134554Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14262392932622588)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CRIAR_ACESSO'
,p_static_id=>'new'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  SP_CRIAR_ACESSO(',
'    p_seq_usuario => :P8_SEQ_USUARIO,',
'    p_filial => :P8_FILIAL,',
'    p_tipo_perfil => :P8_TIPO_PERFIL,',
'    p_ativo => :P8_ATIVO',
'  );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Erro ao criar acesso. Tente novamente.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P8_SEQ_ACESSO IS NULL AND :REQUEST = ''SAVE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Acesso criado com sucesso.'
,p_internal_uid=>6615288117061529
,p_created_on=>wwv_flow_imp.dz('20260812124750Z')
,p_updated_on=>wwv_flow_imp.dz('20260813150355Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14534121493708772)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SALVAR_MODULOS'
,p_static_id=>'salvar-modulos'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  MERGE INTO USUARIO_MODULO_ACESSO t',
'  USING (',
'    SELECT :P8_SEQ_USUARIO AS SEQ_USUARIO, ''DASHBOARD'' AS MODULO, :P8_MOD_DASHBOARD AS ATIVO FROM DUAL UNION ALL',
'    SELECT :P8_SEQ_USUARIO, ''ALERTAS'', :P8_MOD_ALERTAS FROM DUAL UNION ALL',
'    SELECT :P8_SEQ_USUARIO, ''CADASTRO_USUARIOS'', :P8_MOD_CADASTRO FROM DUAL UNION ALL',
'    SELECT :P8_SEQ_USUARIO, ''GERENCIADOR_ACESSOS'', :P8_MOD_ACESSOS FROM DUAL UNION ALL',
'    SELECT :P8_SEQ_USUARIO, ''DISPARAR_ALERTAS'', :P8_MOD_DISPARAR_ALERTAS FROM DUAL',
'  ) s ON (t.SEQ_USUARIO = s.SEQ_USUARIO AND t.MODULO = s.MODULO)',
'  WHEN MATCHED THEN',
'    UPDATE SET t.ATIVO = s.ATIVO, t.UPDATED_AT = SYSTIMESTAMP',
'  WHEN NOT MATCHED THEN',
'    INSERT (SEQ_USUARIO, MODULO, ATIVO) VALUES (s.SEQ_USUARIO, s.MODULO, s.ATIVO);',
'  COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6887016678147713
,p_created_on=>wwv_flow_imp.dz('20260814102914Z')
,p_updated_on=>wwv_flow_imp.dz('20260818142533Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>unistr('Sele\00E7\00E3o de FIlial')
,p_alias=>unistr('SELE\00C7\00C3O-DE-FILIAL')
,p_step_title=>unistr('Sele\00E7\00E3o de FIlial')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Bot\00E3o laranja */'),
'button[data-otel-label="BTN_CONFIRMAR"] {',
'  background: #FF5200 !important;',
'  border-color: #FF5200 !important;',
'  color: #fff !important;',
'  width: 100% !important;',
'  border-radius: 6px !important;',
'  font-weight: 600 !important;',
'  padding: 12px !important;',
'}',
'',
'button[data-otel-label="BTN_CONFIRMAR"]:hover {',
'  background: #E24800 !important;',
'}',
'',
'/* Logo */',
'img.t-Login-logo {',
'  content: url(''#APP_FILES#logo-art-one.png'');',
'  width: 180px !important;',
'  height: auto !important;',
'}',
'',
unistr('/* Esconde t\00EDtulo sobrando */'),
'.t-Login-title {',
'  display: none !important;',
'}',
'',
'/* Borda laranja no card */',
'.t-Login-region {',
'  border-top: 4px solid #FF5200 !important;',
'}',
'',
'/* Esconde texto canto superior esquerdo */',
'.t-Body-title,',
'.t-PageTitle,',
'h1.t-heroRegion-title {',
'  display: none !important;',
'}',
'',
unistr('/* Troca \00EDcone azul pela logo */'),
'img.t-Login-logo {',
'  content: url(''#APP_FILES#logo-art-one.png'') !important;',
'  width: 180px !important;',
'  height: auto !important;',
'}',
'',
unistr('/* Esconde breadcrumb "Sele\00E7\00E3o de Fllial" */'),
'.t-BreadcrumbRegion {',
'  display: none !important;',
'}',
'',
unistr('/* Esconde \00EDcone azul */'),
'span.t-Login-logo {',
'  display: none !important;',
'}',
'',
unistr('/* Esconde t\00EDtulo SELECIONA FILIAL */'),
'.t-Login-title {',
'  display: none !important;',
'}',
''))
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20260813164440Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260813173638Z')
,p_created_by=>'MATHEUS'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14529292310575472)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(20751393405888680535)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260813164441Z')
,p_updated_on=>wwv_flow_imp.dz('20260813164441Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14533037127708761)
,p_plug_name=>'SELECIONA FILIAL'
,p_static_id=>'seleciona-filial'
,p_title=>'SELECIONA FILIAL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260813172427Z')
,p_updated_on=>wwv_flow_imp.dz('20260813173328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14479958958275783)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14533037127708761)
,p_button_name=>'BTN_CONFIRMAR'
,p_static_id=>'btn-confirmar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CONFIRMAR'
,p_created_on=>wwv_flow_imp.dz('20260813164619Z')
,p_updated_on=>wwv_flow_imp.dz('20260813173328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14480240494275786)
,p_branch_name=>'REDIRECT_DASHBOARD'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_created_on=>wwv_flow_imp.dz('20260813165018Z')
,p_updated_on=>wwv_flow_imp.dz('20260813172031Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14479878837275782)
,p_name=>'P9_FILIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14533037127708761)
,p_prompt=>'Filial'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.FILIAL AS display_value,',
'                A.FILIAL AS return_value',
'FROM USUARIO_FILIAL_ACESSO A',
'JOIN USUARIOS U ON U.SEQ_USUARIO = A.SEQ_USUARIO',
'WHERE UPPER(U.LOGIN) = :APP_USER',
'  AND A.ATIVO = ''S''',
'ORDER BY A.FILIAL'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260813164543Z')
,p_updated_on=>wwv_flow_imp.dz('20260813173328Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14480074444275784)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SALVAR_FILIAL'
,p_static_id=>'salvar-filial'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :APP_FILIAL := :P9_FILIAL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14479958958275783)
,p_process_when=>'BTN_CONFIRMAR'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>6832969628714725
,p_created_on=>wwv_flow_imp.dz('20260813164753Z')
,p_updated_on=>wwv_flow_imp.dz('20260813164753Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Dashboard - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* Bot\00E3o laranja */'),
'.t-Button--hot,',
'button[type="submit"],',
'#LOGIN {',
'  background: #FF5200 !important;',
'  border-color: #FF5200 !important;',
'  color: #ffffff !important;',
'  border-radius: 6px !important;',
'  font-weight: 600 !important;',
'}',
'.t-Button--hot:hover {',
'  background: #E24800 !important;',
'  border-color: #E24800 !important;',
'}',
'/* Borda laranja no card */',
'.t-Login-region {',
'  border-top: 4px solid #FF5200 !important;',
'}',
'/* Input focus laranja */',
'.apex-item-text:focus,',
'.apex-item-password:focus {',
'  border-color: #FF5200 !important;',
'  box-shadow: 0 0 0 3px rgba(255,82,0,0.15) !important;',
'}',
'/* Logo horizontal sem fundo */',
'img.t-Login-logo {',
'  content: url(''#APP_FILES#logo-art-one.png'');',
'  width: 220px !important;',
'  height: auto !important;',
'}',
'',
unistr('/* Esconde t\00EDtulo abaixo da logo */'),
'.t-Login-title {',
'  display: none !important;',
'}'))
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260814171636Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_last_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20751399171940680556)
,p_plug_name=>'ARTONE '
,p_static_id=>'dashboard'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#artpetro-logo-icone-laranja.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260813162238Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20751400696037680559)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20751399171940680556)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ENTRAR'
,p_button_position=>'NEXT'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260813161509Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14533179969708762)
,p_name=>'P9999_FILIAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20751399171940680556)
,p_prompt=>'Filial'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.FILIAL AS display_value,',
'                A.FILIAL AS return_value',
'FROM USUARIO_FILIAL_ACESSO A',
'JOIN USUARIOS U ON U.SEQ_USUARIO = A.SEQ_USUARIO',
'WHERE UPPER(U.LOGIN) = UPPER(:P9999_USERNAME)',
'  AND A.ATIVO = ''S''',
'ORDER BY A.FILIAL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Selecione a Filial --'
,p_lov_cascade_parent_items=>'P9999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260814080446Z')
,p_updated_on=>wwv_flow_imp.dz('20260814171636Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20751400077669680558)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20751399171940680556)
,p_prompt=>'Senha'
,p_placeholder=>'SENHA'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080631Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20751400395347680559)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20751399171940680556)
,p_prompt=>'LEMBRAR LOGIN '
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080605Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20751399679930680558)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20751399171940680556)
,p_prompt=>unistr('Usu\00E1rio')
,p_placeholder=>unistr('USU\00C1RIO')
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080631Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20751404836766680564)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20738752652664674501
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080522Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20751404469808680564)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>20738752285706674501
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20751401163989680560)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20738748979887674497
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080522Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(20751402097462680562)
,p_page_process_id=>wwv_flow_imp.id(20751401163989680560)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(20751402609956680562)
,p_page_process_id=>wwv_flow_imp.id(20751401163989680560)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(20751401607283680561)
,p_page_process_id=>wwv_flow_imp.id(20751401163989680560)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14533259574708763)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SALVAR_FILIAL'
,p_static_id=>'salvar-filial'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  :APP_FILIAL := :P9999_FILIAL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6886154759147704
,p_created_on=>wwv_flow_imp.dz('20260814080522Z')
,p_updated_on=>wwv_flow_imp.dz('20260814080522Z')
,p_created_by=>'MATHEUS'
,p_updated_by=>'MATHEUS'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20751403036487680563)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20738750852385674500
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(20751404013932680563)
,p_page_process_id=>wwv_flow_imp.id(20751403036487680563)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(20751403489387680563)
,p_page_process_id=>wwv_flow_imp.id(20751403036487680563)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260724145104Z')
,p_updated_on=>wwv_flow_imp.dz('20260724145104Z')
,p_created_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
,p_updated_by=>'MATHEUS.CATENACCI@ARTGROUP.COM.BR'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
