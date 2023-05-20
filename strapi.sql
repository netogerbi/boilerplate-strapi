--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_links_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_entity_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files_related_morphs DROP CONSTRAINT IF EXISTS files_related_morphs_fk;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_modules_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concepts_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT IF EXISTS components_page_section_authors_authors_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT IF EXISTS components_page_section_authors_authors_links_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_entity_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_entity_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_updated_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_links_order_inv_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_links_inv_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_links_fk;
DROP INDEX IF EXISTS public.upload_folders_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_files_updated_at_index;
DROP INDEX IF EXISTS public.upload_files_size_index;
DROP INDEX IF EXISTS public.upload_files_name_index;
DROP INDEX IF EXISTS public.upload_files_folder_path_index;
DROP INDEX IF EXISTS public.upload_files_ext_index;
DROP INDEX IF EXISTS public.upload_files_created_at_index;
DROP INDEX IF EXISTS public.up_users_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_users_role_links_order_inv_fk;
DROP INDEX IF EXISTS public.up_users_role_links_inv_fk;
DROP INDEX IF EXISTS public.up_users_role_links_fk;
DROP INDEX IF EXISTS public.up_users_created_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_role_links_order_inv_fk;
DROP INDEX IF EXISTS public.up_permissions_role_links_inv_fk;
DROP INDEX IF EXISTS public.up_permissions_role_links_fk;
DROP INDEX IF EXISTS public.up_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_tokens_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_tokens_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_links_order_inv_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_links_inv_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_token_links_fk;
DROP INDEX IF EXISTS public.strapi_transfer_token_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_links_order_inv_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_links_inv_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_links_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_updated_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_field_index;
DROP INDEX IF EXISTS public.landing_pages_entity_fk;
DROP INDEX IF EXISTS public.landing_pages_created_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_component_type_index;
DROP INDEX IF EXISTS public.i18n_locale_updated_by_id_fk;
DROP INDEX IF EXISTS public.i18n_locale_created_by_id_fk;
DROP INDEX IF EXISTS public.files_updated_by_id_fk;
DROP INDEX IF EXISTS public.files_related_morphs_order_index;
DROP INDEX IF EXISTS public.files_related_morphs_id_column_index;
DROP INDEX IF EXISTS public.files_related_morphs_fk;
DROP INDEX IF EXISTS public.files_folder_links_order_inv_fk;
DROP INDEX IF EXISTS public.files_folder_links_inv_fk;
DROP INDEX IF EXISTS public.files_folder_links_fk;
DROP INDEX IF EXISTS public.files_created_by_id_fk;
DROP INDEX IF EXISTS public.components_page_section_teches_field_index;
DROP INDEX IF EXISTS public.components_page_section_teches_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_teches_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_reviews_field_index;
DROP INDEX IF EXISTS public.components_page_section_reviews_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_reviews_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_modules_field_index;
DROP INDEX IF EXISTS public.components_page_section_modules_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_modules_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_faqs_field_index;
DROP INDEX IF EXISTS public.components_page_section_faqs_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_faqs_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_concepts_field_index;
DROP INDEX IF EXISTS public.components_page_section_concepts_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_concepts_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_authors_authors_links_order_fk;
DROP INDEX IF EXISTS public.components_page_section_authors_authors_links_inv_fk;
DROP INDEX IF EXISTS public.components_page_section_authors_authors_links_fk;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_field_index;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_entity_fk;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_component_type_index;
DROP INDEX IF EXISTS public.components_page_headers_field_index;
DROP INDEX IF EXISTS public.components_page_headers_entity_fk;
DROP INDEX IF EXISTS public.components_page_headers_component_type_index;
DROP INDEX IF EXISTS public.authors_updated_by_id_fk;
DROP INDEX IF EXISTS public.authors_field_index;
DROP INDEX IF EXISTS public.authors_entity_fk;
DROP INDEX IF EXISTS public.authors_created_by_id_fk;
DROP INDEX IF EXISTS public.authors_component_type_index;
DROP INDEX IF EXISTS public.admin_users_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_order_inv_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_order_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_inv_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_fk;
DROP INDEX IF EXISTS public.admin_users_created_by_id_fk;
DROP INDEX IF EXISTS public.admin_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_links_order_inv_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_links_inv_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_links_fk;
DROP INDEX IF EXISTS public.admin_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_id_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_unique;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_unique;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_pkey;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_unique;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_tokens DROP CONSTRAINT IF EXISTS strapi_transfer_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_links_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_token_links_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT IF EXISTS strapi_transfer_token_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_migrations DROP CONSTRAINT IF EXISTS strapi_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_database_schema DROP CONSTRAINT IF EXISTS strapi_database_schema_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_core_store_settings DROP CONSTRAINT IF EXISTS strapi_core_store_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_unique;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_unique;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_components_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_pkey;
ALTER TABLE IF EXISTS ONLY public.files_related_morphs DROP CONSTRAINT IF EXISTS files_related_morphs_pkey;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_pkey;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_unique;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_tech_icons DROP CONSTRAINT IF EXISTS components_page_tech_icons_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_social_links DROP CONSTRAINT IF EXISTS components_page_social_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches DROP CONSTRAINT IF EXISTS components_page_section_teches_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews DROP CONSTRAINT IF EXISTS components_page_section_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_modules_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules DROP CONSTRAINT IF EXISTS components_page_section_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_modules_components DROP CONSTRAINT IF EXISTS components_page_section_modules_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs DROP CONSTRAINT IF EXISTS components_page_section_faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concepts_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts DROP CONSTRAINT IF EXISTS components_page_section_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_concepts_components DROP CONSTRAINT IF EXISTS components_page_section_concepts_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_authors DROP CONSTRAINT IF EXISTS components_page_section_authors_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT IF EXISTS components_page_section_authors_authors_links_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_section_authors_authors_links DROP CONSTRAINT IF EXISTS components_page_section_authors_authors_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_agenda DROP CONSTRAINT IF EXISTS components_page_section_agenda_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_abouts DROP CONSTRAINT IF EXISTS components_page_section_abouts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_reviews DROP CONSTRAINT IF EXISTS components_page_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_questions DROP CONSTRAINT IF EXISTS components_page_questions_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_modules DROP CONSTRAINT IF EXISTS components_page_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_unique;
ALTER TABLE IF EXISTS ONLY public.components_page_headers DROP CONSTRAINT IF EXISTS components_page_headers_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_concepts DROP CONSTRAINT IF EXISTS components_page_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_buttons DROP CONSTRAINT IF EXISTS components_page_buttons_pkey;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_unique;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_pkey;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_components_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_unique;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_unique;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_pkey;
ALTER TABLE IF EXISTS public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_folders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_folder_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_tech_icons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_authors_authors_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_abouts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_questions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.upload_folders_parent_links_id_seq;
DROP TABLE IF EXISTS public.upload_folders_parent_links;
DROP SEQUENCE IF EXISTS public.upload_folders_id_seq;
DROP TABLE IF EXISTS public.upload_folders;
DROP SEQUENCE IF EXISTS public.up_users_role_links_id_seq;
DROP TABLE IF EXISTS public.up_users_role_links;
DROP SEQUENCE IF EXISTS public.up_users_id_seq;
DROP TABLE IF EXISTS public.up_users;
DROP SEQUENCE IF EXISTS public.up_roles_id_seq;
DROP TABLE IF EXISTS public.up_roles;
DROP SEQUENCE IF EXISTS public.up_permissions_role_links_id_seq;
DROP TABLE IF EXISTS public.up_permissions_role_links;
DROP SEQUENCE IF EXISTS public.up_permissions_id_seq;
DROP TABLE IF EXISTS public.up_permissions;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_transfer_tokens_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_tokens;
DROP SEQUENCE IF EXISTS public.strapi_transfer_token_permissions_token_links_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_token_permissions_token_links;
DROP SEQUENCE IF EXISTS public.strapi_transfer_token_permissions_id_seq;
DROP TABLE IF EXISTS public.strapi_transfer_token_permissions;
DROP SEQUENCE IF EXISTS public.strapi_migrations_id_seq;
DROP TABLE IF EXISTS public.strapi_migrations;
DROP SEQUENCE IF EXISTS public.strapi_database_schema_id_seq;
DROP TABLE IF EXISTS public.strapi_database_schema;
DROP SEQUENCE IF EXISTS public.strapi_core_store_settings_id_seq;
DROP TABLE IF EXISTS public.strapi_core_store_settings;
DROP SEQUENCE IF EXISTS public.strapi_api_tokens_id_seq;
DROP TABLE IF EXISTS public.strapi_api_tokens;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_token_links_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions_token_links;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions;
DROP SEQUENCE IF EXISTS public.landing_pages_id_seq;
DROP SEQUENCE IF EXISTS public.landing_pages_components_id_seq;
DROP TABLE IF EXISTS public.landing_pages_components;
DROP TABLE IF EXISTS public.landing_pages;
DROP SEQUENCE IF EXISTS public.i18n_locale_id_seq;
DROP TABLE IF EXISTS public.i18n_locale;
DROP SEQUENCE IF EXISTS public.files_related_morphs_id_seq;
DROP TABLE IF EXISTS public.files_related_morphs;
DROP SEQUENCE IF EXISTS public.files_id_seq;
DROP SEQUENCE IF EXISTS public.files_folder_links_id_seq;
DROP TABLE IF EXISTS public.files_folder_links;
DROP TABLE IF EXISTS public.files;
DROP SEQUENCE IF EXISTS public.components_page_tech_icons_id_seq;
DROP TABLE IF EXISTS public.components_page_tech_icons;
DROP SEQUENCE IF EXISTS public.components_page_social_links_id_seq;
DROP TABLE IF EXISTS public.components_page_social_links;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_teches_components;
DROP TABLE IF EXISTS public.components_page_section_teches;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_reviews_components;
DROP TABLE IF EXISTS public.components_page_section_reviews;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_modules_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_modules_components;
DROP TABLE IF EXISTS public.components_page_section_modules;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_faqs_components;
DROP TABLE IF EXISTS public.components_page_section_faqs;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_concepts_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_concepts_components;
DROP TABLE IF EXISTS public.components_page_section_concepts;
DROP SEQUENCE IF EXISTS public.components_page_section_authors_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_authors_authors_links_id_seq;
DROP TABLE IF EXISTS public.components_page_section_authors_authors_links;
DROP TABLE IF EXISTS public.components_page_section_authors;
DROP SEQUENCE IF EXISTS public.components_page_section_agenda_id_seq;
DROP TABLE IF EXISTS public.components_page_section_agenda;
DROP SEQUENCE IF EXISTS public.components_page_section_abouts_id_seq;
DROP TABLE IF EXISTS public.components_page_section_abouts;
DROP SEQUENCE IF EXISTS public.components_page_reviews_id_seq;
DROP TABLE IF EXISTS public.components_page_reviews;
DROP SEQUENCE IF EXISTS public.components_page_questions_id_seq;
DROP TABLE IF EXISTS public.components_page_questions;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_components_id_seq;
DROP TABLE IF EXISTS public.components_page_pricing_boxes_components;
DROP TABLE IF EXISTS public.components_page_pricing_boxes;
DROP SEQUENCE IF EXISTS public.components_page_modules_id_seq;
DROP TABLE IF EXISTS public.components_page_modules;
DROP SEQUENCE IF EXISTS public.components_page_headers_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_headers_components_id_seq;
DROP TABLE IF EXISTS public.components_page_headers_components;
DROP TABLE IF EXISTS public.components_page_headers;
DROP SEQUENCE IF EXISTS public.components_page_concepts_id_seq;
DROP TABLE IF EXISTS public.components_page_concepts;
DROP SEQUENCE IF EXISTS public.components_page_buttons_id_seq;
DROP TABLE IF EXISTS public.components_page_buttons;
DROP SEQUENCE IF EXISTS public.authors_id_seq;
DROP SEQUENCE IF EXISTS public.authors_components_id_seq;
DROP TABLE IF EXISTS public.authors_components;
DROP TABLE IF EXISTS public.authors;
DROP SEQUENCE IF EXISTS public.admin_users_roles_links_id_seq;
DROP TABLE IF EXISTS public.admin_users_roles_links;
DROP SEQUENCE IF EXISTS public.admin_users_id_seq;
DROP TABLE IF EXISTS public.admin_users;
DROP SEQUENCE IF EXISTS public.admin_roles_id_seq;
DROP TABLE IF EXISTS public.admin_roles;
DROP SEQUENCE IF EXISTS public.admin_permissions_role_links_id_seq;
DROP TABLE IF EXISTS public.admin_permissions_role_links;
DROP SEQUENCE IF EXISTS public.admin_permissions_id_seq;
DROP TABLE IF EXISTS public.admin_permissions;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi_user;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi_user;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi_user;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO strapi_user;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi_user;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi_user;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi_user;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi_user;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi_user;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO strapi_user;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    description text
);


ALTER TABLE public.authors OWNER TO strapi_user;

--
-- Name: authors_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.authors_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.authors_components OWNER TO strapi_user;

--
-- Name: authors_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_components_id_seq OWNER TO strapi_user;

--
-- Name: authors_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO strapi_user;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO strapi_user;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO strapi_user;

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_concepts; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_concepts OWNER TO strapi_user;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_concepts_id_seq OWNER TO strapi_user;

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_headers OWNER TO strapi_user;

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_headers_components OWNER TO strapi_user;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO strapi_user;

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_modules; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);


ALTER TABLE public.components_page_modules OWNER TO strapi_user;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_modules_id_seq OWNER TO strapi_user;

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;


--
-- Name: components_page_pricing_boxes; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    total_price integer,
    number_installments integer,
    price_installment integer,
    benefits text
);


ALTER TABLE public.components_page_pricing_boxes OWNER TO strapi_user;

--
-- Name: components_page_pricing_boxes_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_pricing_boxes_components OWNER TO strapi_user;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_id_seq OWNER TO strapi_user;

--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;


--
-- Name: components_page_questions; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);


ALTER TABLE public.components_page_questions OWNER TO strapi_user;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_questions_id_seq OWNER TO strapi_user;

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;


--
-- Name: components_page_reviews; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);


ALTER TABLE public.components_page_reviews OWNER TO strapi_user;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_reviews_id_seq OWNER TO strapi_user;

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;


--
-- Name: components_page_section_abouts; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_abouts (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_abouts OWNER TO strapi_user;

--
-- Name: components_page_section_abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_abouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_abouts_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_abouts_id_seq OWNED BY public.components_page_section_abouts.id;


--
-- Name: components_page_section_agenda; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_agenda OWNER TO strapi_user;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_agenda_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;


--
-- Name: components_page_section_authors; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_authors (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_authors OWNER TO strapi_user;

--
-- Name: components_page_section_authors_authors_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_authors_authors_links (
    id integer NOT NULL,
    section_authors_id integer,
    author_id integer,
    author_order double precision
);


ALTER TABLE public.components_page_section_authors_authors_links OWNER TO strapi_user;

--
-- Name: components_page_section_authors_authors_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_authors_authors_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_authors_authors_links_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_authors_authors_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_authors_authors_links_id_seq OWNED BY public.components_page_section_authors_authors_links.id;


--
-- Name: components_page_section_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_authors_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_authors_id_seq OWNED BY public.components_page_section_authors.id;


--
-- Name: components_page_section_concepts; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_concepts OWNER TO strapi_user;

--
-- Name: components_page_section_concepts_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_concepts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_section_concepts_components OWNER TO strapi_user;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_concepts_components_id_seq OWNED BY public.components_page_section_concepts_components.id;


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_concepts_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_concepts_id_seq OWNED BY public.components_page_section_concepts.id;


--
-- Name: components_page_section_faqs; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_faqs OWNER TO strapi_user;

--
-- Name: components_page_section_faqs_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_section_faqs_components OWNER TO strapi_user;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;


--
-- Name: components_page_section_modules; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_modules (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_modules OWNER TO strapi_user;

--
-- Name: components_page_section_modules_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_modules_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_section_modules_components OWNER TO strapi_user;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_modules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_modules_components_id_seq OWNED BY public.components_page_section_modules_components.id;


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_modules_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_modules_id_seq OWNED BY public.components_page_section_modules.id;


--
-- Name: components_page_section_reviews; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_reviews OWNER TO strapi_user;

--
-- Name: components_page_section_reviews_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_section_reviews_components OWNER TO strapi_user;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;


--
-- Name: components_page_section_teches; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_teches OWNER TO strapi_user;

--
-- Name: components_page_section_teches_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_page_section_teches_components OWNER TO strapi_user;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_components_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_id_seq OWNER TO strapi_user;

--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_social_links OWNER TO strapi_user;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO strapi_user;

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_tech_icons; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_tech_icons OWNER TO strapi_user;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_tech_icons_id_seq OWNER TO strapi_user;

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi_user;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO strapi_user;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO strapi_user;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi_user;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO strapi_user;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO strapi_user;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi_user;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi_user;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: landing_pages; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.landing_pages OWNER TO strapi_user;

--
-- Name: landing_pages_components; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.landing_pages_components OWNER TO strapi_user;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_components_id_seq OWNER TO strapi_user;

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;


--
-- Name: landing_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_id_seq OWNER TO strapi_user;

--
-- Name: landing_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi_user;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi_user;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi_user;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi_user;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi_user;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi_user;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi_user;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi_user;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi_user;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi_user;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi_user;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi_user;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi_user;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi_user;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO strapi_user;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO strapi_user;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi_user;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO strapi_user;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi_user;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi_user;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi_user;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi_user;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi_user;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO strapi_user;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi_user;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi_user;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi_user;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi_user;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO strapi_user;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO strapi_user;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi_user;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi_user;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi_user
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi_user;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_user
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO strapi_user;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_user
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_concepts id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_modules id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);


--
-- Name: components_page_questions id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);


--
-- Name: components_page_reviews id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);


--
-- Name: components_page_section_abouts id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_abouts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_abouts_id_seq'::regclass);


--
-- Name: components_page_section_agenda id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);


--
-- Name: components_page_section_authors id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_authors_id_seq'::regclass);


--
-- Name: components_page_section_authors_authors_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors_authors_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_authors_authors_links_id_seq'::regclass);


--
-- Name: components_page_section_concepts id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_id_seq'::regclass);


--
-- Name: components_page_section_concepts_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_concepts_components_id_seq'::regclass);


--
-- Name: components_page_section_faqs id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);


--
-- Name: components_page_section_faqs_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);


--
-- Name: components_page_section_modules id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_id_seq'::regclass);


--
-- Name: components_page_section_modules_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_modules_components_id_seq'::regclass);


--
-- Name: components_page_section_reviews id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);


--
-- Name: components_page_section_reviews_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);


--
-- Name: components_page_section_teches id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);


--
-- Name: components_page_section_teches_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_tech_icons id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: landing_pages id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);


--
-- Name: landing_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2023-05-07 20:03:51.693	2023-05-07 20:03:51.693	\N	\N
2	plugin::upload.configure-view	\N	{}	[]	2023-05-07 20:03:51.706	2023-05-07 20:03:51.706	\N	\N
3	plugin::upload.assets.create	\N	{}	[]	2023-05-07 20:03:51.717	2023-05-07 20:03:51.717	\N	\N
4	plugin::upload.assets.update	\N	{}	[]	2023-05-07 20:03:51.729	2023-05-07 20:03:51.729	\N	\N
5	plugin::upload.assets.download	\N	{}	[]	2023-05-07 20:03:51.74	2023-05-07 20:03:51.74	\N	\N
6	plugin::upload.assets.copy-link	\N	{}	[]	2023-05-07 20:03:51.75	2023-05-07 20:03:51.75	\N	\N
7	plugin::upload.read	\N	{}	["admin::is-creator"]	2023-05-07 20:03:51.761	2023-05-07 20:03:51.761	\N	\N
8	plugin::upload.configure-view	\N	{}	[]	2023-05-07 20:03:51.772	2023-05-07 20:03:51.772	\N	\N
9	plugin::upload.assets.create	\N	{}	[]	2023-05-07 20:03:51.782	2023-05-07 20:03:51.782	\N	\N
10	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2023-05-07 20:03:51.792	2023-05-07 20:03:51.792	\N	\N
11	plugin::upload.assets.download	\N	{}	[]	2023-05-07 20:03:51.802	2023-05-07 20:03:51.802	\N	\N
12	plugin::upload.assets.copy-link	\N	{}	[]	2023-05-07 20:03:51.812	2023-05-07 20:03:51.812	\N	\N
13	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-07 20:03:51.843	2023-05-07 20:03:51.843	\N	\N
14	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-07 20:03:51.854	2023-05-07 20:03:51.854	\N	\N
15	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-05-07 20:03:51.864	2023-05-07 20:03:51.864	\N	\N
16	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2023-05-07 20:03:51.874	2023-05-07 20:03:51.874	\N	\N
17	plugin::content-manager.single-types.configure-view	\N	{}	[]	2023-05-07 20:03:51.884	2023-05-07 20:03:51.884	\N	\N
18	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2023-05-07 20:03:51.894	2023-05-07 20:03:51.894	\N	\N
19	plugin::content-manager.components.configure-layout	\N	{}	[]	2023-05-07 20:03:51.904	2023-05-07 20:03:51.904	\N	\N
20	plugin::content-type-builder.read	\N	{}	[]	2023-05-07 20:03:51.912	2023-05-07 20:03:51.912	\N	\N
21	plugin::email.settings.read	\N	{}	[]	2023-05-07 20:03:51.922	2023-05-07 20:03:51.922	\N	\N
22	plugin::upload.read	\N	{}	[]	2023-05-07 20:03:51.931	2023-05-07 20:03:51.931	\N	\N
23	plugin::upload.assets.create	\N	{}	[]	2023-05-07 20:03:51.941	2023-05-07 20:03:51.941	\N	\N
24	plugin::upload.assets.update	\N	{}	[]	2023-05-07 20:03:51.951	2023-05-07 20:03:51.951	\N	\N
25	plugin::upload.assets.download	\N	{}	[]	2023-05-07 20:03:51.962	2023-05-07 20:03:51.962	\N	\N
26	plugin::upload.assets.copy-link	\N	{}	[]	2023-05-07 20:03:51.972	2023-05-07 20:03:51.972	\N	\N
27	plugin::upload.configure-view	\N	{}	[]	2023-05-07 20:03:51.982	2023-05-07 20:03:51.982	\N	\N
28	plugin::upload.settings.read	\N	{}	[]	2023-05-07 20:03:51.992	2023-05-07 20:03:51.992	\N	\N
29	plugin::users-permissions.roles.create	\N	{}	[]	2023-05-07 20:03:52.002	2023-05-07 20:03:52.002	\N	\N
30	plugin::users-permissions.roles.read	\N	{}	[]	2023-05-07 20:03:52.013	2023-05-07 20:03:52.013	\N	\N
31	plugin::users-permissions.roles.update	\N	{}	[]	2023-05-07 20:03:52.023	2023-05-07 20:03:52.023	\N	\N
32	plugin::users-permissions.roles.delete	\N	{}	[]	2023-05-07 20:03:52.034	2023-05-07 20:03:52.034	\N	\N
33	plugin::users-permissions.providers.read	\N	{}	[]	2023-05-07 20:03:52.046	2023-05-07 20:03:52.046	\N	\N
34	plugin::users-permissions.providers.update	\N	{}	[]	2023-05-07 20:03:52.06	2023-05-07 20:03:52.06	\N	\N
35	plugin::users-permissions.email-templates.read	\N	{}	[]	2023-05-07 20:03:52.071	2023-05-07 20:03:52.071	\N	\N
36	plugin::users-permissions.email-templates.update	\N	{}	[]	2023-05-07 20:03:52.081	2023-05-07 20:03:52.081	\N	\N
37	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2023-05-07 20:03:52.091	2023-05-07 20:03:52.091	\N	\N
38	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2023-05-07 20:03:52.102	2023-05-07 20:03:52.102	\N	\N
39	plugin::i18n.locale.create	\N	{}	[]	2023-05-07 20:03:52.111	2023-05-07 20:03:52.111	\N	\N
40	plugin::i18n.locale.read	\N	{}	[]	2023-05-07 20:03:52.12	2023-05-07 20:03:52.12	\N	\N
41	plugin::i18n.locale.update	\N	{}	[]	2023-05-07 20:03:52.13	2023-05-07 20:03:52.13	\N	\N
42	plugin::i18n.locale.delete	\N	{}	[]	2023-05-07 20:03:52.14	2023-05-07 20:03:52.14	\N	\N
43	admin::marketplace.read	\N	{}	[]	2023-05-07 20:03:52.149	2023-05-07 20:03:52.149	\N	\N
44	admin::webhooks.create	\N	{}	[]	2023-05-07 20:03:52.159	2023-05-07 20:03:52.159	\N	\N
45	admin::webhooks.read	\N	{}	[]	2023-05-07 20:03:52.168	2023-05-07 20:03:52.168	\N	\N
46	admin::webhooks.update	\N	{}	[]	2023-05-07 20:03:52.177	2023-05-07 20:03:52.177	\N	\N
47	admin::webhooks.delete	\N	{}	[]	2023-05-07 20:03:52.186	2023-05-07 20:03:52.186	\N	\N
48	admin::users.create	\N	{}	[]	2023-05-07 20:03:52.196	2023-05-07 20:03:52.196	\N	\N
49	admin::users.read	\N	{}	[]	2023-05-07 20:03:52.206	2023-05-07 20:03:52.206	\N	\N
50	admin::users.update	\N	{}	[]	2023-05-07 20:03:52.215	2023-05-07 20:03:52.215	\N	\N
51	admin::users.delete	\N	{}	[]	2023-05-07 20:03:52.224	2023-05-07 20:03:52.224	\N	\N
52	admin::roles.create	\N	{}	[]	2023-05-07 20:03:52.234	2023-05-07 20:03:52.234	\N	\N
53	admin::roles.read	\N	{}	[]	2023-05-07 20:03:52.244	2023-05-07 20:03:52.244	\N	\N
54	admin::roles.update	\N	{}	[]	2023-05-07 20:03:52.254	2023-05-07 20:03:52.254	\N	\N
55	admin::roles.delete	\N	{}	[]	2023-05-07 20:03:52.263	2023-05-07 20:03:52.263	\N	\N
56	admin::api-tokens.access	\N	{}	[]	2023-05-07 20:03:52.272	2023-05-07 20:03:52.272	\N	\N
57	admin::api-tokens.create	\N	{}	[]	2023-05-07 20:03:52.281	2023-05-07 20:03:52.281	\N	\N
58	admin::api-tokens.read	\N	{}	[]	2023-05-07 20:03:52.29	2023-05-07 20:03:52.29	\N	\N
59	admin::api-tokens.update	\N	{}	[]	2023-05-07 20:03:52.305	2023-05-07 20:03:52.305	\N	\N
60	admin::api-tokens.regenerate	\N	{}	[]	2023-05-07 20:03:52.314	2023-05-07 20:03:52.314	\N	\N
61	admin::api-tokens.delete	\N	{}	[]	2023-05-07 20:03:52.324	2023-05-07 20:03:52.324	\N	\N
62	admin::project-settings.update	\N	{}	[]	2023-05-07 20:03:52.334	2023-05-07 20:03:52.334	\N	\N
63	admin::project-settings.read	\N	{}	[]	2023-05-07 20:03:52.344	2023-05-07 20:03:52.344	\N	\N
64	admin::transfer.tokens.access	\N	{}	[]	2023-05-07 20:03:52.354	2023-05-07 20:03:52.354	\N	\N
65	admin::transfer.tokens.create	\N	{}	[]	2023-05-07 20:03:52.364	2023-05-07 20:03:52.364	\N	\N
66	admin::transfer.tokens.read	\N	{}	[]	2023-05-07 20:03:52.374	2023-05-07 20:03:52.374	\N	\N
67	admin::transfer.tokens.update	\N	{}	[]	2023-05-07 20:03:52.383	2023-05-07 20:03:52.383	\N	\N
68	admin::transfer.tokens.regenerate	\N	{}	[]	2023-05-07 20:03:52.393	2023-05-07 20:03:52.393	\N	\N
69	admin::transfer.tokens.delete	\N	{}	[]	2023-05-07 20:03:52.403	2023-05-07 20:03:52.403	\N	\N
73	plugin::content-manager.explorer.delete	api::landing-page.landing-page	{}	[]	2023-05-16 11:21:27.474	2023-05-16 11:21:27.474	\N	\N
74	plugin::content-manager.explorer.publish	api::landing-page.landing-page	{}	[]	2023-05-16 11:21:27.481	2023-05-16 11:21:27.481	\N	\N
96	plugin::content-manager.explorer.delete	api::author.author	{}	[]	2023-05-19 11:07:21.193	2023-05-19 11:07:21.193	\N	\N
97	plugin::content-manager.explorer.publish	api::author.author	{}	[]	2023-05-19 11:07:21.2	2023-05-19 11:07:21.2	\N	\N
98	plugin::content-manager.explorer.create	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2023-05-19 11:11:44.433	2023-05-19 11:11:44.433	\N	\N
99	plugin::content-manager.explorer.read	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2023-05-19 11:11:44.452	2023-05-19 11:11:44.452	\N	\N
100	plugin::content-manager.explorer.update	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2023-05-19 11:11:44.459	2023-05-19 11:11:44.459	\N	\N
107	plugin::content-manager.explorer.create	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAbout.title", "sectionAbout.description", "sectionAbout.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAuthors.title", "sectionAuthors.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.photo", "sectionReviews.reviews.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2023-05-19 11:27:22.233	2023-05-19 11:27:22.233	\N	\N
108	plugin::content-manager.explorer.read	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAbout.title", "sectionAbout.description", "sectionAbout.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAuthors.title", "sectionAuthors.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.photo", "sectionReviews.reviews.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2023-05-19 11:27:22.252	2023-05-19 11:27:22.252	\N	\N
109	plugin::content-manager.explorer.update	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAbout.title", "sectionAbout.description", "sectionAbout.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.priceInstallment", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAuthors.title", "sectionAuthors.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.photo", "sectionReviews.reviews.text", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2023-05-19 11:27:22.257	2023-05-19 11:27:22.257	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
13	13	1	1
14	14	1	2
15	15	1	3
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
73	73	1	61
74	74	1	62
96	96	1	69
97	97	1	70
98	98	1	71
99	99	1	72
100	100	1	73
107	107	1	74
108	108	1	75
109	109	1	76
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-05-07 20:03:51.654	2023-05-07 20:03:51.654	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-05-07 20:03:51.679	2023-05-07 20:03:51.679	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-05-07 20:03:51.687	2023-05-07 20:03:51.687	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Reculos	Gerbi Neto	netogerbi2@hotmail.com	netogerbi2@hotmail.com	$2a$10$SRq53I4oOKEaCfRFAt5eLeENbm1TRbbet31qjsPzf3/sDII3Kfq0S	\N	\N	t	f	\N	2023-05-07 20:05:45.805	2023-05-08 22:43:10.127	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.authors (id, name, role, created_at, updated_at, published_at, created_by_id, updated_by_id, description) FROM stdin;
1	Guilherme Louro	Instrutor	2023-05-20 14:44:31.323	2023-05-20 14:44:31.323	\N	1	1	Desenvolvedor Fullstack há muitos anos, com conhecimento em diversas linguagens de programação. Já liderou grandes projetos e trabalha atualmente na Personare, um dos maiores portais de autoconhecimento do Brasil. Nas horas vagas é o criador e mantenedor do Netfla, site de notícias do Flamengo com mais de meio milhão de views por mês!
2	Willian Justen	Instrutor	2023-05-20 14:47:06.855	2023-05-20 14:47:06.855	\N	1	1	Desenvolvedor Front-end há mais de 10 anos, tendo trabalhado em grandes empresas como Toptal, Globo.com e Huge. Tenho um blog com mais de 200 mil views por mês, além de ter diversos cursos na Udemy, alcançando a incrível marca de mais de 200 mil alunos!
3	Marcos Oliveira	Designer	2023-05-20 14:49:17.852	2023-05-20 14:49:17.852	\N	1	1	Front-End e UI Designer há alguns anos. Atualmente trabalha na Lukin Co. Já participou de diversos tipos de projetos, na área da saúde, streaming e varejo. Sempre dividido entre design e programação. No tempo livre sempre está envolvido com a comunidade, organizando eventos e meetups.
\.


--
-- Data for Name: authors_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.authors_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	page.social-links	socialLinks	1
2	1	1	page.social-links	socialLinks	2
3	2	3	page.social-links	socialLinks	1
4	2	4	page.social-links	socialLinks	2
5	3	5	page.social-links	socialLinks	1
6	3	7	page.social-links	socialLinks	2
7	3	6	page.social-links	socialLinks	3
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_buttons (id, label, url) FROM stdin;
2	Comprar	https://www.udemy.com/course/react-avancado/?couponCode=MODULO1
3	Comprar o curso	https://www.udemy.com/course/react-avancado/?couponCode=MODULO1
\.


--
-- Data for Name: components_page_concepts; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_concepts (id, title) FROM stdin;
1	Boas práticas com ReactJS
3	Filtros e paginações
6	Utilizar componentes third-party
10	Autenticação de usuários
13	Deploy automatizado
9	Criar APIs rapidamente
4	Criar componentes do zero
5	Rotas simples e dinâmicas
8	Utilizar Storybook
12	Criação de pipelines em CI
14	Funcionamento do GraphQL
15	Boas práticas com Testes
16	Server Side Rendering (SSR)
17	Queries e Mutations
18	Static Site Generation (SSG)
2	Boas práticas com Styled
11	Fluxo de pagamentos
7	Envio de emails automatizado
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_headers (id, title, description) FROM stdin;
2	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
2	2	2	page.button	button	\N
\.


--
-- Data for Name: components_page_modules; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
2	Módulo 1	Introdução e Arquitetura do Projeto	<p>Iremos conhecer a <i>Stack</i> utilizada no curso, tendo explicação de cada uma das escolhas, assim como mostrando os prós e contras de cada uma delas</p><p>Iremos construir nosso boilerplate do zero, aprendendo a configurar as ferramentas de qualidade de código, como <i>Eslint</i>, <i>Prettier</i>, <i>Git hooks</i> e <i>TypeScript</i>. Assim como também configurar o <i>Styled Components</i> para funcionar com <i>SSR</i> e <i>PWA</i>.</p>
6	Módulo 5	Testes de Integração	<p>Neste módulo iremos aprender a importância dos testes de integração e como garantir ainda mais qualidade no nosso projeto.</p><p>Vamos criar testes para todos os fluxos que um usuário normal pode executar em nosso site, desde a navegação normal até uma compra efetuada.</p>
4	Módulo 4	Sistema de Pagamento e Área do Cliente	<p>Conheceremos algumas soluções de pagamento do mercado, vendo suas vantagens, desvantagens e APIs.</p><p>Criaremos toda a parte final do fluxo de pagamentos, conectando a nossa loja a um gateway de pagamento, salvando as compras em nosso banco de dados. Além de desenvolvermos a área do cliente, para que o cliente possa editar seus dados, ver compras realizadas e sua wishlist.</p>
1	Módulo 3	Criando o Frontend	<p>Essa que será uma das maiores etapas, é onde vamos aprender a pegar um layout diretamente do Figma e vamos transformá-los em diferentes componentes e estilos.</p><p>Faremos todos os componentes com styled components, com testes, cenários no Storybook e pensando na responsividade. Com os componentes prontos, construiremos as páginas, ajustando o que for necessário para que tudo se encaixe perfeitamente.</p>
5	Módulo 2	Strapi e GraphQL	<p>Vamos iniciar nosso backend/CMS com o Strapi, aprender mais sobre sua API, como o content type builder, single types, custom components. Além de aprender a criar controllers customizados, serviços, instalar plugins de documentação e também do GraphQL, onde iremos aprender como funciona, como criar queries, filtros, mutations e mais.</p><p>Para finalizar, aprenderemos como customizar o CMS para que ele tenha a cara da loja e se torne uma solução mais interessante para o cliente.</p>
3	Módulo 6	CI e Deploy	<p>Normalmente a maioria dos cursos termina na criação do projeto, mas nunca ensina como fazer para realmente deixar em produção.</p><p>Aqui nós iremos aprender quais as necessidades do projeto e quais as soluçoes que podemos utilizar. Além disso, iremos criar uma pipeline em um CI para que tenhamos todo o processo de deploy o mais automatizado possível</p>
\.


--
-- Data for Name: components_page_pricing_boxes; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_pricing_boxes (id, total_price, number_installments, price_installment, benefits) FROM stdin;
1	415	6	48	<ul><li>Acesso aos <strong>6 módulos</strong> assim que lançados</li><li>Código de <strong>todo o projeto</strong> separado em commits</li><li>Contato <strong>direto</strong> com os instrutores via Slack</li><li><strong>Lives exclusivas</strong> durante o curso</li></ul>
\.


--
-- Data for Name: components_page_pricing_boxes_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_pricing_boxes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	3	page.button	button	\N
\.


--
-- Data for Name: components_page_questions; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_questions (id, question, answer) FROM stdin;
4	Quanto tempo tenho para fazer o curso?	<p>O curso é vitalício, faça quantas vezes quiser e quando quiser, nada de bloqueios ou pressa.</p>
1	O que preciso saber para o curso?	<p>Um conhecimento básico de JavaScript/React é necessário para maior entendimento do curso, mas todo o conteúdo será explicado em detalhes e todas as perguntas/dúvidas serão respondidas.</p>
3	Esse curso tem certificado?	<p>Sim, o curso terá certificado e você poderá baixá-lo diretamente da Udemy ao término do curso.</p>
5	Posso usar o projeto para o meu Portfólio?	<p>Definitivamente! A ideia é que vocês tenham um projeto de verdade que possam utilizar como bem entenderem.</p>
6	Quais outros cursos você tem?	<p>Tenho alguns cursos gratuitos e pagos, você pode acessar todos os cursos <a href="https://willianjusten.com.br/cursos">nesse link.</a></p>
2	Onde os vídeos serão publicados?	<p>Os vídeos serão publicados na Udemy, com o mesmo funcionamento que já existe, vídeos offline, autoplay, acelerar em 2x, aplicativo nativo e mais.</p>
\.


--
-- Data for Name: components_page_reviews; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_reviews (id, name, text) FROM stdin;
1	Henrique Albert Schmaiske	O Curso foi incrível! Gostei muito das explicações, bem claras e objetivas! Deixo a sugestão para um próximo Curso: NextJS mostrando fazer um Ecommerce. Compraria sem nem olhar o preço.
4	Mileine Souto	Sensacional! A didática do instrutor é excelente para estruturar o curso e dar o ritmo das aulas. Foi uma experiência muito enriquecedora (e divertida) construir um blog seguindo o passo-a-passo dos vídeos. Não sabia nada sobre Gatsby, GraphQL ou Netlify CMS mas consegui acompanhar todo o processo sem grandes dificuldades. Além disso, foi ótimo aprender um pouquinho mais sobre algumas práticas de desenvolvimento, como temas em React, estilização CSS in JS com styled-components e utilização do Algolia como solução de busca. Recomendo! =)
3	Alexandre Teixeira	Esse já é o terceiro curso do Will que faço, e a didática do cara é incrível! Além disso, o cara segue trazendo o que tem de mais moderno no mercado de forma bem explicada e com aplicações práticas.
2	Daniel P. de Oliveira	É incrível a forma como foi passado o conteúdo do curso, dá para ver que o Will tem um domínio impressionante sobre as ferramentas e tecnologias passadas, e mesmo eu tendo pouco conhecimento em React consegui acompanhar o curso sem muitas dificuldades. Espero que tenha mais cursos nessa linha, com certeza comprarei! Obrigado Will!
\.


--
-- Data for Name: components_page_section_abouts; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_abouts (id, title, description) FROM stdin;
1	O que iremos construir	<p>Iremos criar um e-commerce de jogos, incluindo toda a parte de pagamentos e área do cliente. Os clientes poderão fazer buscas, filtrar, adicionar ao carrinho e comprar seus jogos favoritos.</p><p>Teremos também um <strong>CMS completamente customizado</strong> para que os administradores possam adicionar produtos, categorias, plataformas, criar promoções, editar partes do site, além de emails automatizados para às vendas de cada produto.</p><p>Para criar tudo isso, iremos utilizar ferramentas muito famosas no mercado de trabalho, como ReactJS, Next, Apollo e outras coisas mais. Sempre prezando pela qualidade do código, ou seja, teremos <strong>testes em tudo!</strong></p>
\.


--
-- Data for Name: components_page_section_agenda; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_agenda (id, title, description) FROM stdin;
1	Agenda pré-lançamento	<p>Esse é um curso extremamente vivo, estaremos lançando os módulos conforme vamos terminando. Com isso, além de permitir que vocês iniciem o curso mais rápido, também irá facilitar que tenhamos um feedback mais constante sobre tudo, deixando nosso curso ainda melhor.</p><p>Para agradecer as pessoas que nos apoiarem desde o início, conforme os módulos forem sendo lançados, o desconto vai diminuindo. <strong>Ou seja, quanto mais cedo você comprar, mais barato irá pagar</strong>. Segue a agenda:</p>
\.


--
-- Data for Name: components_page_section_authors; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_authors (id, title) FROM stdin;
1	Quem somos nós
\.


--
-- Data for Name: components_page_section_authors_authors_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_authors_authors_links (id, section_authors_id, author_id, author_order) FROM stdin;
1	1	3	2
2	1	1	1
3	1	2	0
\.


--
-- Data for Name: components_page_section_concepts; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_concepts (id, title) FROM stdin;
1	Conceitos que você irá aprender
\.


--
-- Data for Name: components_page_section_concepts_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_concepts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.concepts	concepts	1
2	1	2	page.concepts	concepts	2
3	1	15	page.concepts	concepts	3
4	1	16	page.concepts	concepts	4
5	1	18	page.concepts	concepts	5
6	1	5	page.concepts	concepts	6
7	1	14	page.concepts	concepts	7
8	1	17	page.concepts	concepts	8
9	1	3	page.concepts	concepts	9
10	1	4	page.concepts	concepts	10
11	1	6	page.concepts	concepts	11
12	1	8	page.concepts	concepts	12
13	1	9	page.concepts	concepts	13
14	1	7	page.concepts	concepts	14
15	1	10	page.concepts	concepts	15
16	1	11	page.concepts	concepts	16
17	1	12	page.concepts	concepts	17
18	1	13	page.concepts	concepts	18
\.


--
-- Data for Name: components_page_section_faqs; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_faqs (id, title) FROM stdin;
1	FAQ
\.


--
-- Data for Name: components_page_section_faqs_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_faqs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.questions	questions	1
2	1	2	page.questions	questions	2
3	1	4	page.questions	questions	3
4	1	3	page.questions	questions	4
5	1	6	page.questions	questions	5
6	1	5	page.questions	questions	6
\.


--
-- Data for Name: components_page_section_modules; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_modules (id, title) FROM stdin;
1	Modulos deste curso
\.


--
-- Data for Name: components_page_section_modules_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_modules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	2	page.modules	modules	1
2	1	5	page.modules	modules	2
3	1	1	page.modules	modules	3
4	1	4	page.modules	modules	4
5	1	6	page.modules	modules	5
6	1	3	page.modules	modules	6
\.


--
-- Data for Name: components_page_section_reviews; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_reviews (id, title) FROM stdin;
1	Junte-se a mais de 200 mil alunos
\.


--
-- Data for Name: components_page_section_reviews_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_reviews_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.reviews	reviews	1
2	1	3	page.reviews	reviews	2
3	1	2	page.reviews	reviews	3
4	1	4	page.reviews	reviews	4
\.


--
-- Data for Name: components_page_section_teches; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_teches (id, title) FROM stdin;
1	Tecnologias Utiilzadas
\.


--
-- Data for Name: components_page_section_teches_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_section_teches_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.tech-icons	techIcons	1
2	1	5	page.tech-icons	techIcons	2
3	1	6	page.tech-icons	techIcons	3
4	1	2	page.tech-icons	techIcons	4
5	1	3	page.tech-icons	techIcons	5
6	1	4	page.tech-icons	techIcons	6
7	1	7	page.tech-icons	techIcons	7
8	1	8	page.tech-icons	techIcons	8
9	1	9	page.tech-icons	techIcons	9
10	1	10	page.tech-icons	techIcons	10
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
1	Github	https://github.com/guilouro
2	Twitter	https://twitter.com/guilhermelouro
3	Twitter	https://twitter.com/Willian_justen
4	Github	https://github.com/willianjusten
5	Twitter	https://twitter.com/vmaarcosp
6	Github	https://github.com/vmarcosp
7	Dribble	http://vmarcosp.dribbble.com/
\.


--
-- Data for Name: components_page_tech_icons; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.components_page_tech_icons (id, title) FROM stdin;
1	TypeScript
6	GraphQL
2	Storybook
3	Apollo
4	Jest
7	Strapi
8	NextJS
9	Cypress
10	Testing Library
5	React
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	strapi_442d7d4708.svg	\N	\N	128	129	\N	strapi_442d7d4708_cb203ac9d4	.svg	image/svg+xml	1.17	/uploads/strapi_442d7d4708_cb203ac9d4.svg	\N	local	\N	/	2023-05-20 14:36:50.767	2023-05-20 14:36:50.767	1	1
2	jest_da49922029.svg	\N	\N	123	123	\N	jest_da49922029_b4f81234be	.svg	image/svg+xml	2.78	/uploads/jest_da49922029_b4f81234be.svg	\N	local	\N	/	2023-05-20 14:36:50.771	2023-05-20 14:36:50.771	1	1
3	thumbnail_reviewer_17f000c1cd.jpeg	\N	\N	156	156	\N	thumbnail_reviewer_17f000c1cd_e4841fcc0e	.jpeg	image/jpeg	1.26	/uploads/thumbnail_reviewer_17f000c1cd_e4841fcc0e.jpeg	\N	local	\N	/	2023-05-20 14:36:50.789	2023-05-20 14:36:50.789	1	1
4	rtl_e863b3c932.svg	\N	\N	128	129	\N	rtl_e863b3c932_deadf63efb	.svg	image/svg+xml	9.62	/uploads/rtl_e863b3c932_deadf63efb.svg	\N	local	\N	/	2023-05-20 14:36:50.824	2023-05-20 14:36:50.824	1	1
5	mileine_souto_992539f184.jpeg	\N	\N	50	50	\N	mileine_souto_992539f184_b8c05b2f39	.jpeg	image/jpeg	1.21	/uploads/mileine_souto_992539f184_b8c05b2f39.jpeg	\N	local	\N	/	2023-05-20 14:36:50.826	2023-05-20 14:36:50.826	1	1
6	small_cover_c95ba36736.png	\N	\N	500	263	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_small_cover_c95ba36736_715bbf46a3.png", "hash": "thumbnail_small_cover_c95ba36736_715bbf46a3", "mime": "image/png", "name": "thumbnail_small_cover_c95ba36736.png", "path": null, "size": 15.53, "width": 245, "height": 129}}	small_cover_c95ba36736_715bbf46a3	.png	image/png	9.12	/uploads/small_cover_c95ba36736_715bbf46a3.png	\N	local	\N	/	2023-05-20 14:36:50.986	2023-05-20 14:36:50.986	1	1
7	lianker_lopes_c90c9e2872.jpeg	\N	\N	50	50	\N	lianker_lopes_c90c9e2872_9c5f6d8562	.jpeg	image/jpeg	1.41	/uploads/lianker_lopes_c90c9e2872_9c5f6d8562.jpeg	\N	local	\N	/	2023-05-20 14:36:51.031	2023-05-20 14:36:51.031	1	1
8	thumbnail_cover_c95ba36736.png	\N	\N	245	129	\N	thumbnail_cover_c95ba36736_e7d0d917f3	.png	image/png	4.37	/uploads/thumbnail_cover_c95ba36736_e7d0d917f3.png	\N	local	\N	/	2023-05-20 14:36:51.048	2023-05-20 14:36:51.048	1	1
9	guilherme_5278e405b4.png	\N	\N	396	396	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_guilherme_5278e405b4_4f4408ed30.png", "hash": "thumbnail_guilherme_5278e405b4_4f4408ed30", "mime": "image/png", "name": "thumbnail_guilherme_5278e405b4.png", "path": null, "size": 62.15, "width": 156, "height": 156}}	guilherme_5278e405b4_4f4408ed30	.png	image/png	73.26	/uploads/guilherme_5278e405b4_4f4408ed30.png	\N	local	\N	/	2023-05-20 14:36:51.176	2023-05-20 14:36:51.176	1	1
10	medium_cover_c95ba36736.png	\N	\N	750	394	{"small": {"ext": ".png", "url": "/uploads/small_medium_cover_c95ba36736_e28d68cb18.png", "hash": "small_medium_cover_c95ba36736_e28d68cb18", "mime": "image/png", "name": "small_medium_cover_c95ba36736.png", "path": null, "size": 38.27, "width": 500, "height": 263}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_medium_cover_c95ba36736_e28d68cb18.png", "hash": "thumbnail_medium_cover_c95ba36736_e28d68cb18", "mime": "image/png", "name": "thumbnail_medium_cover_c95ba36736.png", "path": null, "size": 15.14, "width": 245, "height": 129}}	medium_cover_c95ba36736_e28d68cb18	.png	image/png	14.02	/uploads/medium_cover_c95ba36736_e28d68cb18.png	\N	local	\N	/	2023-05-20 14:36:51.187	2023-05-20 14:36:51.187	1	1
11	project_440f25b520.png	\N	\N	586	447	{"small": {"ext": ".png", "url": "/uploads/small_project_440f25b520_3d3df7eb56.png", "hash": "small_project_440f25b520_3d3df7eb56", "mime": "image/png", "name": "small_project_440f25b520.png", "path": null, "size": 192.6, "width": 500, "height": 381}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_project_440f25b520_3d3df7eb56.png", "hash": "thumbnail_project_440f25b520_3d3df7eb56", "mime": "image/png", "name": "thumbnail_project_440f25b520.png", "path": null, "size": 39.86, "width": 205, "height": 156}}	project_440f25b520_3d3df7eb56	.png	image/png	52.47	/uploads/project_440f25b520_3d3df7eb56.png	\N	local	\N	/	2023-05-20 14:36:51.197	2023-05-20 14:36:51.197	1	1
12	luiz_claudio_silva_6e178a2283.jpeg	\N	\N	50	50	\N	luiz_claudio_silva_6e178a2283_9c51b3e4e9	.jpeg	image/jpeg	1.44	/uploads/luiz_claudio_silva_6e178a2283_9c51b3e4e9.jpeg	\N	local	\N	/	2023-05-20 14:36:51.192	2023-05-20 14:36:51.192	1	1
13	willian_3f15d1601b.png	\N	\N	250	250	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_willian_3f15d1601b_385801a9b9.png", "hash": "thumbnail_willian_3f15d1601b_385801a9b9", "mime": "image/png", "name": "thumbnail_willian_3f15d1601b.png", "path": null, "size": 55.19, "width": 156, "height": 156}}	willian_3f15d1601b_385801a9b9	.png	image/png	29.67	/uploads/willian_3f15d1601b_385801a9b9.png	\N	local	\N	/	2023-05-20 14:36:51.207	2023-05-20 14:36:51.207	1	1
14	apollo_e2a8694530.svg	\N	\N	130	128	\N	apollo_e2a8694530_cafd93280c	.svg	image/svg+xml	1.54	/uploads/apollo_e2a8694530_cafd93280c.svg	\N	local	\N	/	2023-05-20 14:36:51.316	2023-05-20 14:36:51.316	1	1
16	hero_illustration_86997ad966.svg	\N	\N	427	373	\N	hero_illustration_86997ad966_18bed04b73	.svg	image/svg+xml	12.61	/uploads/hero_illustration_86997ad966_18bed04b73.svg	\N	local	\N	/	2023-05-20 14:36:51.339	2023-05-20 14:36:51.339	1	1
17	nextjs_722bbe18a3.svg	\N	\N	131	128	\N	nextjs_722bbe18a3_90f825d64b	.svg	image/svg+xml	1.29	/uploads/nextjs_722bbe18a3_90f825d64b.svg	\N	local	\N	/	2023-05-20 14:36:51.349	2023-05-20 14:36:51.349	1	1
18	henrique_albert_934b240c41.jpeg	\N	\N	50	50	\N	henrique_albert_934b240c41_fb349b565b	.jpeg	image/jpeg	1.10	/uploads/henrique_albert_934b240c41_fb349b565b.jpeg	\N	local	\N	/	2023-05-20 14:36:51.389	2023-05-20 14:36:51.389	1	1
19	douglas_lopes_5c3cea8c4a.jpeg	\N	\N	50	50	\N	douglas_lopes_5c3cea8c4a_be3389e4f9	.jpeg	image/jpeg	1.14	/uploads/douglas_lopes_5c3cea8c4a_be3389e4f9.jpeg	\N	local	\N	/	2023-05-20 14:36:51.475	2023-05-20 14:36:51.475	1	1
20	ariel_dalton_d3d50ca590.jpeg	\N	\N	50	50	\N	ariel_dalton_d3d50ca590_46d11729c2	.jpeg	image/jpeg	1.04	/uploads/ariel_dalton_d3d50ca590_46d11729c2.jpeg	\N	local	\N	/	2023-05-20 14:36:51.477	2023-05-20 14:36:51.477	1	1
21	alane_ribeiro_da08475e76.jpeg	\N	\N	50	50	\N	alane_ribeiro_da08475e76_294023e37d	.jpeg	image/jpeg	1.40	/uploads/alane_ribeiro_da08475e76_294023e37d.jpeg	\N	local	\N	/	2023-05-20 14:36:51.489	2023-05-20 14:36:51.489	1	1
22	icon_512_34fb6cb7f6.png	\N	\N	512	512	{"small": {"ext": ".png", "url": "/uploads/small_icon_512_34fb6cb7f6_5530eb29bb.png", "hash": "small_icon_512_34fb6cb7f6_5530eb29bb", "mime": "image/png", "name": "small_icon_512_34fb6cb7f6.png", "path": null, "size": 116.11, "width": 500, "height": 500}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_icon_512_34fb6cb7f6_5530eb29bb.png", "hash": "thumbnail_icon_512_34fb6cb7f6_5530eb29bb", "mime": "image/png", "name": "thumbnail_icon_512_34fb6cb7f6.png", "path": null, "size": 20.39, "width": 156, "height": 156}}	icon_512_34fb6cb7f6_5530eb29bb	.png	image/png	24.90	/uploads/icon_512_34fb6cb7f6_5530eb29bb.png	\N	local	\N	/	2023-05-20 14:36:51.493	2023-05-20 14:36:51.493	1	1
23	thumbnail_willian_3f15d1601b.png	\N	\N	156	156	\N	thumbnail_willian_3f15d1601b_06d82889c2	.png	image/png	17.05	/uploads/thumbnail_willian_3f15d1601b_06d82889c2.png	\N	local	\N	/	2023-05-20 14:36:51.584	2023-05-20 14:36:51.584	1	1
24	storybook_d7b6134b45.svg	\N	\N	128	129	\N	storybook_d7b6134b45_a6c1272c0c	.svg	image/svg+xml	2.56	/uploads/storybook_d7b6134b45_a6c1272c0c.svg	\N	local	\N	/	2023-05-20 14:36:51.61	2023-05-20 14:36:51.61	1	1
39	react_791425b954.svg	\N	\N	131	129	\N	react_791425b954_289b87352b	.svg	image/svg+xml	2.23	/uploads/react_791425b954_289b87352b.svg	\N	local	\N	/	2023-05-20 14:36:52.108	2023-05-20 14:36:52.108	1	1
25	jorge_ramos_995906fcff.jpeg	\N	\N	50	50	\N	jorge_ramos_995906fcff_9793dc35cf	.jpeg	image/jpeg	1.00	/uploads/jorge_ramos_995906fcff_9793dc35cf.jpeg	\N	local	\N	/	2023-05-20 14:36:51.617	2023-05-20 14:36:51.617	1	1
28	graphql_20c1bf23e2.svg	\N	\N	129	128	\N	graphql_20c1bf23e2_0e663d2c7c	.svg	image/svg+xml	2.84	/uploads/graphql_20c1bf23e2_0e663d2c7c.svg	\N	local	\N	/	2023-05-20 14:36:51.763	2023-05-20 14:36:51.763	1	1
29	thumbnail_project_440f25b520.png	\N	\N	205	156	\N	thumbnail_project_440f25b520_477bba09dd	.png	image/png	12.04	/uploads/thumbnail_project_440f25b520_477bba09dd.png	\N	local	\N	/	2023-05-20 14:36:51.861	2023-05-20 14:36:51.861	1	1
32	karoline_medeiros_cecb15095a.jpeg	\N	\N	50	50	\N	karoline_medeiros_cecb15095a_e2bb0403f0	.jpeg	image/jpeg	1.52	/uploads/karoline_medeiros_cecb15095a_e2bb0403f0.jpeg	\N	local	\N	/	2023-05-20 14:36:51.909	2023-05-20 14:36:51.909	1	1
33	logo_74e2fdc755.svg	\N	\N	256	56	\N	logo_74e2fdc755_0034c64852	.svg	image/svg+xml	7.11	/uploads/logo_74e2fdc755_0034c64852.svg	\N	local	\N	/	2023-05-20 14:36:51.979	2023-05-20 14:36:51.979	1	1
36	alexandre_teixeira_3477db86cc.jpeg	\N	\N	50	50	\N	alexandre_teixeira_3477db86cc_c89c720c50	.jpeg	image/jpeg	1.14	/uploads/alexandre_teixeira_3477db86cc_c89c720c50.jpeg	\N	local	\N	/	2023-05-20 14:36:52.004	2023-05-20 14:36:52.004	1	1
37	small_icon_512_34fb6cb7f6.png	\N	\N	500	500	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_small_icon_512_34fb6cb7f6_1e5d3bc37a.png", "hash": "thumbnail_small_icon_512_34fb6cb7f6_1e5d3bc37a", "mime": "image/png", "name": "thumbnail_small_icon_512_34fb6cb7f6.png", "path": null, "size": 20.55, "width": 156, "height": 156}}	small_icon_512_34fb6cb7f6_1e5d3bc37a	.png	image/png	24.27	/uploads/small_icon_512_34fb6cb7f6_1e5d3bc37a.png	\N	local	\N	/	2023-05-20 14:36:52.037	2023-05-20 14:36:52.037	1	1
38	typescript_8c2d3e5d4f.svg	\N	\N	128	129	\N	typescript_8c2d3e5d4f_6333572f9f	.svg	image/svg+xml	1.84	/uploads/typescript_8c2d3e5d4f_6333572f9f.svg	\N	local	\N	/	2023-05-20 14:36:52.097	2023-05-20 14:36:52.097	1	1
41	thumbnail_marcos_4c630b4166.png	\N	\N	157	156	\N	thumbnail_marcos_4c630b4166_30665d726e	.png	image/png	17.38	/uploads/thumbnail_marcos_4c630b4166_30665d726e.png	\N	local	\N	/	2023-05-20 14:36:52.184	2023-05-20 14:36:52.184	1	1
44	thumbnail_icon_512_34fb6cb7f6.png	\N	\N	156	156	\N	thumbnail_icon_512_34fb6cb7f6_471d8ad3ff	.png	image/png	5.63	/uploads/thumbnail_icon_512_34fb6cb7f6_471d8ad3ff.png	\N	local	\N	/	2023-05-20 14:36:52.238	2023-05-20 14:36:52.238	1	1
26	thumbnail_icon_192_8eab90e746.png	\N	\N	156	156	\N	thumbnail_icon_192_8eab90e746_2754c179ae	.png	image/png	6.20	/uploads/thumbnail_icon_192_8eab90e746_2754c179ae.png	\N	local	\N	/	2023-05-20 14:36:51.69	2023-05-20 14:36:51.69	1	1
30	small_project_440f25b520.png	\N	\N	500	381	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_small_project_440f25b520_b7e1ef9bd2.png", "hash": "thumbnail_small_project_440f25b520_b7e1ef9bd2", "mime": "image/png", "name": "thumbnail_small_project_440f25b520.png", "path": null, "size": 40.32, "width": 205, "height": 156}}	small_project_440f25b520_b7e1ef9bd2	.png	image/png	48.01	/uploads/small_project_440f25b520_b7e1ef9bd2.png	\N	local	\N	/	2023-05-20 14:36:51.867	2023-05-20 14:36:51.867	1	1
35	cypress_3aa76eb266.svg	\N	\N	130	129	\N	cypress_3aa76eb266_cc29777269	.svg	image/svg+xml	1.73	/uploads/cypress_3aa76eb266_cc29777269.svg	\N	local	\N	/	2023-05-20 14:36:52	2023-05-20 14:36:52	1	1
40	typescript_b6c016631d.svg	\N	\N	128	129	\N	typescript_b6c016631d_721b798fee	.svg	image/svg+xml	1.84	/uploads/typescript_b6c016631d_721b798fee.svg	\N	local	\N	/	2023-05-20 14:36:52.11	2023-05-20 14:36:52.11	1	1
42	daniel_oliveira_22ceef05a5.jpeg	\N	\N	50	50	\N	daniel_oliveira_22ceef05a5_0ca71ff223	.jpeg	image/jpeg	1.10	/uploads/daniel_oliveira_22ceef05a5_0ca71ff223.jpeg	\N	local	\N	/	2023-05-20 14:36:52.228	2023-05-20 14:36:52.228	1	1
27	large_cover_c95ba36736.png	\N	\N	1000	525	{"small": {"ext": ".png", "url": "/uploads/small_large_cover_c95ba36736_8c2f5d427b.png", "hash": "small_large_cover_c95ba36736_8c2f5d427b", "mime": "image/png", "name": "small_large_cover_c95ba36736.png", "path": null, "size": 37.56, "width": 500, "height": 263}, "medium": {"ext": ".png", "url": "/uploads/medium_large_cover_c95ba36736_8c2f5d427b.png", "hash": "medium_large_cover_c95ba36736_8c2f5d427b", "mime": "image/png", "name": "medium_large_cover_c95ba36736.png", "path": null, "size": 64.76, "width": 750, "height": 394}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_large_cover_c95ba36736_8c2f5d427b.png", "hash": "thumbnail_large_cover_c95ba36736_8c2f5d427b", "mime": "image/png", "name": "thumbnail_large_cover_c95ba36736.png", "path": null, "size": 15.22, "width": 245, "height": 129}}	large_cover_c95ba36736_8c2f5d427b	.png	image/png	19.83	/uploads/large_cover_c95ba36736_8c2f5d427b.png	\N	local	\N	/	2023-05-20 14:36:51.757	2023-05-20 14:36:51.757	1	1
31	icon_192_8eab90e746.png	\N	\N	192	192	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_icon_192_8eab90e746_42ef423c16.png", "hash": "thumbnail_icon_192_8eab90e746_42ef423c16", "mime": "image/png", "name": "thumbnail_icon_192_8eab90e746.png", "path": null, "size": 20.35, "width": 156, "height": 156}}	icon_192_8eab90e746_42ef423c16	.png	image/png	5.76	/uploads/icon_192_8eab90e746_42ef423c16.png	\N	local	\N	/	2023-05-20 14:36:51.879	2023-05-20 14:36:51.879	1	1
34	marcos_4c630b4166.png	\N	\N	252	251	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_marcos_4c630b4166_fb639410f2.png", "hash": "thumbnail_marcos_4c630b4166_fb639410f2", "mime": "image/png", "name": "thumbnail_marcos_4c630b4166.png", "path": null, "size": 56.65, "width": 157, "height": 156}}	marcos_4c630b4166_fb639410f2	.png	image/png	39.80	/uploads/marcos_4c630b4166_fb639410f2.png	\N	local	\N	/	2023-05-20 14:36:51.987	2023-05-20 14:36:51.987	1	1
43	reviewer_17f000c1cd.jpeg	\N	\N	300	300	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_reviewer_17f000c1cd_8ea925e655.jpeg", "hash": "thumbnail_reviewer_17f000c1cd_8ea925e655", "mime": "image/jpeg", "name": "thumbnail_reviewer_17f000c1cd.jpeg", "path": null, "size": 1.26, "width": 156, "height": 156}}	reviewer_17f000c1cd_8ea925e655	.jpeg	image/jpeg	2.64	/uploads/reviewer_17f000c1cd_8ea925e655.jpeg	\N	local	\N	/	2023-05-20 14:36:52.233	2023-05-20 14:36:52.233	1	1
45	cover_c95ba36736.png	\N	\N	1200	630	{"large": {"ext": ".png", "url": "/uploads/large_cover_c95ba36736_a047556f68.png", "hash": "large_cover_c95ba36736_a047556f68", "mime": "image/png", "name": "large_cover_c95ba36736.png", "path": null, "size": 85.57, "width": 1000, "height": 525}, "small": {"ext": ".png", "url": "/uploads/small_cover_c95ba36736_a047556f68.png", "hash": "small_cover_c95ba36736_a047556f68", "mime": "image/png", "name": "small_cover_c95ba36736.png", "path": null, "size": 35.43, "width": 500, "height": 263}, "medium": {"ext": ".png", "url": "/uploads/medium_cover_c95ba36736_a047556f68.png", "hash": "medium_cover_c95ba36736_a047556f68", "mime": "image/png", "name": "medium_cover_c95ba36736.png", "path": null, "size": 58.06, "width": 750, "height": 394}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_cover_c95ba36736_a047556f68.png", "hash": "thumbnail_cover_c95ba36736_a047556f68", "mime": "image/png", "name": "thumbnail_cover_c95ba36736.png", "path": null, "size": 15.04, "width": 245, "height": 129}}	cover_c95ba36736_a047556f68	.png	image/png	16.34	/uploads/cover_c95ba36736_a047556f68.png	\N	local	\N	/	2023-05-20 14:36:52.33	2023-05-20 14:36:52.33	1	1
15	thumbnail_guilherme_5278e405b4.png		\N	156	156	\N	thumbnail_guilherme_5278e405b4_2523bc8e9c	.png	image/png	18.28	/uploads/thumbnail_guilherme_5278e405b4_2523bc8e9c.png	\N	local	\N	/	2023-05-20 14:36:51.328	2023-05-20 14:41:27.891	1	1
46	Screenshot 2023-05-20 at 11.56.39.png	\N	\N	322	198	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Screenshot_2023_05_20_at_11_56_39_0c24ec1dfd.png", "hash": "thumbnail_Screenshot_2023_05_20_at_11_56_39_0c24ec1dfd", "mime": "image/png", "name": "thumbnail_Screenshot 2023-05-20 at 11.56.39.png", "path": null, "size": 9.73, "width": 245, "height": 151}}	Screenshot_2023_05_20_at_11_56_39_0c24ec1dfd	.png	image/png	1.72	/uploads/Screenshot_2023_05_20_at_11_56_39_0c24ec1dfd.png	\N	local	\N	/	2023-05-20 14:57:16.813	2023-05-20 14:57:16.813	1	1
47	logo.svg	\N	\N	256	56	\N	logo_3d52e6edce	.svg	image/svg+xml	7.11	/uploads/logo_3d52e6edce.svg	\N	local	\N	/	2023-05-20 15:02:15.389	2023-05-20 15:02:15.389	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	15	1	api::author.author	photo	1
2	13	2	api::author.author	photo	1
3	34	3	api::author.author	photo	1
139	16	2	page.header	image	1
140	30	1	page.section-about	image	1
141	40	1	page.tech-icons	icon	1
142	24	2	page.tech-icons	icon	1
143	28	6	page.tech-icons	icon	1
144	2	4	page.tech-icons	icon	1
145	1	7	page.tech-icons	icon	1
147	17	8	page.tech-icons	icon	1
148	35	9	page.tech-icons	icon	1
146	14	3	page.tech-icons	icon	1
149	4	10	page.tech-icons	icon	1
150	39	5	page.tech-icons	icon	1
151	36	3	page.reviews	photo	1
152	5	4	page.reviews	photo	1
153	18	1	page.reviews	photo	1
154	42	2	page.reviews	photo	1
155	33	1	api::landing-page.landing-page	logo	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-05-07 20:03:51.619	2023-05-07 20:03:51.619	\N	\N
\.


--
-- Data for Name: landing_pages; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.landing_pages (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-05-16 23:59:20.509	2023-05-20 15:35:40.247	\N	1	1
\.


--
-- Data for Name: landing_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.landing_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
3	1	2	page.header	header	\N
5	1	1	page.section-about	sectionAbout	\N
6	1	1	page.section-tech	sectionTech	\N
13	1	1	page.section-concepts	sectionConcepts	\N
18	1	1	page.section-modules	sectionModules	\N
24	1	1	page.section-agenda	sectionAgenda	\N
31	1	1	page.pricing-box	pricingBox	\N
39	1	1	page.section-authors	sectionAuthors	\N
48	1	1	page.section-reviews	sectionReviews	\N
58	1	1	page.section-faq	sectionFaq	\N
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"author","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"photo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"displayName":"socialLinks","type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"author","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"photo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"displayName":"socialLinks","type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"author","connection":"default","uid":"api::author.author","apiName":"author","globalId":"Author","actions":{},"lifecycles":{}},"api::landing-page.landing-page":{"kind":"singleType","collectionName":"landing_pages","info":{"singularName":"landing-page","pluralName":"landing-pages","displayName":"landingPage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"logo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"header":{"displayName":"header","type":"component","repeatable":false,"component":"page.header","required":true},"sectionAbout":{"displayName":"sectionAbout","type":"component","repeatable":false,"component":"page.section-about","required":true},"sectionTech":{"displayName":"sectionTech","type":"component","repeatable":false,"component":"page.section-tech","required":true},"sectionConcepts":{"displayName":"sectionConcepts","type":"component","repeatable":false,"component":"page.section-concepts","required":true},"sectionModules":{"displayName":"sectionModules","type":"component","repeatable":false,"component":"page.section-modules","required":true},"sectionAgenda":{"displayName":"sectionAgenda","type":"component","repeatable":false,"component":"page.section-agenda","required":true},"pricingBox":{"displayName":"pricingBox","type":"component","repeatable":false,"component":"page.pricing-box","required":true},"sectionAuthors":{"displayName":"sectionAuthors","type":"component","repeatable":false,"component":"page.section-authors","required":true},"sectionReviews":{"displayName":"sectionReviews","type":"component","repeatable":false,"component":"page.section-reviews","required":true},"sectionFaq":{"displayName":"sectionFaq","type":"component","repeatable":false,"component":"page.section-faq","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"landing_pages","info":{"singularName":"landing-page","pluralName":"landing-pages","displayName":"landingPage","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"logo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"header":{"displayName":"header","type":"component","repeatable":false,"component":"page.header","required":true},"sectionAbout":{"displayName":"sectionAbout","type":"component","repeatable":false,"component":"page.section-about","required":true},"sectionTech":{"displayName":"sectionTech","type":"component","repeatable":false,"component":"page.section-tech","required":true},"sectionConcepts":{"displayName":"sectionConcepts","type":"component","repeatable":false,"component":"page.section-concepts","required":true},"sectionModules":{"displayName":"sectionModules","type":"component","repeatable":false,"component":"page.section-modules","required":true},"sectionAgenda":{"displayName":"sectionAgenda","type":"component","repeatable":false,"component":"page.section-agenda","required":true},"pricingBox":{"displayName":"pricingBox","type":"component","repeatable":false,"component":"page.pricing-box","required":true},"sectionAuthors":{"displayName":"sectionAuthors","type":"component","repeatable":false,"component":"page.section-authors","required":true},"sectionReviews":{"displayName":"sectionReviews","type":"component","repeatable":false,"component":"page.section-reviews","required":true},"sectionFaq":{"displayName":"sectionFaq","type":"component","repeatable":false,"component":"page.section-faq","required":true}},"kind":"singleType"},"modelType":"contentType","modelName":"landing-page","connection":"default","uid":"api::landing-page.landing-page","apiName":"landing-page","globalId":"LandingPage","actions":{},"lifecycles":{}}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
15	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
16	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
18	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
21	plugin_i18n_default_locale	"en"	string	\N	\N
22	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
24	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]]},"isComponent":true}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"email","size":6},{"name":"username","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]],"list":["id","username","email","confirmed"]}}	object	\N	\N
17	plugin_upload_metrics	{"weeklySchedule":"9 44 10 * * 2","lastWeeklyUpdate":1684233849065}	object	\N	\N
25	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","button"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"button","size":12}],[{"name":"image","size":6}]]},"isComponent":true}	object	\N	\N
26	plugin_content_manager_configuration_components::page.section-about	{"uid":"page.section-about","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","image"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6}]]},"isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_components::page.concepts	{"uid":"page.concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]]},"isComponent":true}	object	\N	\N
27	plugin_content_manager_configuration_components::page.section-tech	{"uid":"page.section-tech","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"techIcons":{"edit":{"label":"techIcons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"techIcons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","techIcons"],"edit":[[{"name":"title","size":6}],[{"name":"techIcons","size":12}]]},"isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_components::page.section-concepts	{"uid":"page.section-concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"concepts":{"edit":{"label":"concepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"concepts","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","concepts"],"edit":[[{"name":"title","size":6}],[{"name":"concepts","size":12}]]},"isComponent":true}	object	\N	\N
28	plugin_content_manager_configuration_components::page.tech-icons	{"uid":"page.tech-icons","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","title"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}]]},"isComponent":true}	object	\N	\N
38	plugin_content_manager_configuration_components::page.reviews	{"uid":"page.reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","photo","text"],"edit":[[{"name":"name","size":6},{"name":"photo","size":6}],[{"name":"text","size":6}]]},"isComponent":true}	object	\N	\N
31	plugin_content_manager_configuration_components::page.modules	{"uid":"page.modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":12}]]},"isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_components::page.section-modules	{"uid":"page.section-modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"modules":{"edit":{"label":"modules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"modules","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","modules"],"edit":[[{"name":"title","size":6}],[{"name":"modules","size":12}]]},"isComponent":true}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::landing-page.landing-page	{"uid":"api::landing-page.landing-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"header","searchable":false,"sortable":false}},"sectionAbout":{"edit":{"label":"sectionAbout","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAbout","searchable":false,"sortable":false}},"sectionTech":{"edit":{"label":"sectionTech","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionTech","searchable":false,"sortable":false}},"sectionConcepts":{"edit":{"label":"sectionConcepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionConcepts","searchable":false,"sortable":false}},"sectionModules":{"edit":{"label":"sectionModules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionModules","searchable":false,"sortable":false}},"sectionAgenda":{"edit":{"label":"sectionAgenda","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAgenda","searchable":false,"sortable":false}},"pricingBox":{"edit":{"label":"pricingBox","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pricingBox","searchable":false,"sortable":false}},"sectionAuthors":{"edit":{"label":"sectionAuthors","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAuthors","searchable":false,"sortable":false}},"sectionReviews":{"edit":{"label":"sectionReviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionReviews","searchable":false,"sortable":false}},"sectionFaq":{"edit":{"label":"sectionFaq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionFaq","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","createdAt","updatedAt"],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"sectionAbout","size":12}],[{"name":"sectionTech","size":12}],[{"name":"sectionConcepts","size":12}],[{"name":"sectionModules","size":12}],[{"name":"sectionAgenda","size":12}],[{"name":"pricingBox","size":12}],[{"name":"sectionAuthors","size":12}],[{"name":"sectionReviews","size":12}],[{"name":"sectionFaq","size":12}]]}}	object	\N	\N
37	plugin_content_manager_configuration_components::page.section-authors	{"uid":"page.section-authors","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"authors":{"edit":{"label":"authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"authors","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","authors"],"edit":[[{"name":"title","size":6},{"name":"authors","size":6}]]},"isComponent":true}	object	\N	\N
41	plugin_content_manager_configuration_components::page.section-faq	{"uid":"page.section-faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questions","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","questions"],"edit":[[{"name":"title","size":6}],[{"name":"questions","size":12}]]},"isComponent":true}	object	\N	\N
39	plugin_content_manager_configuration_components::page.section-reviews	{"uid":"page.section-reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"reviews":{"edit":{"label":"reviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reviews","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","reviews"],"edit":[[{"name":"title","size":6}],[{"name":"reviews","size":12}]]},"isComponent":true}	object	\N	\N
34	plugin_content_manager_configuration_components::page.section-agenda	{"uid":"page.section-agenda","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}]]},"isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_components::page.pricing-box	{"uid":"page.pricing-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"totalPrice":{"edit":{"label":"totalPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalPrice","searchable":true,"sortable":true}},"numberInstallments":{"edit":{"label":"numberInstallments","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"numberInstallments","searchable":true,"sortable":true}},"priceInstallment":{"edit":{"label":"priceInstallment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"priceInstallment","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"benefits","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}}},"layouts":{"list":["id","totalPrice","numberInstallments","priceInstallment"],"edit":[[{"name":"totalPrice","size":4},{"name":"numberInstallments","size":4},{"name":"priceInstallment","size":4}],[{"name":"benefits","size":12}],[{"name":"button","size":12}]]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]]},"isComponent":true}	object	\N	\N
36	plugin_content_manager_configuration_content_types::api::author.author	{"uid":"api::author.author","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"socialLinks":{"edit":{"label":"socialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialLinks","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","role"],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"socialLinks","size":12}],[{"name":"description","size":6}]]}}	object	\N	\N
40	plugin_content_manager_configuration_components::page.questions	{"uid":"page.questions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":false,"sortable":false}}},"layouts":{"list":["id","question"],"edit":[[{"name":"question","size":6}],[{"name":"answer","size":12}]]},"isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
14	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors","indexes":[{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"landing_pages","indexes":[{"name":"landing_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"landing_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"landing_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"landing_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_concepts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_headers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_modules","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_pricing_boxes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"total_price","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number_installments","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"price_installment","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"benefits","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_questions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_reviews","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_abouts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_agenda","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_authors","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_concepts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_faqs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_modules","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_reviews","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_teches","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_social_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_tech_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors_components","indexes":[{"name":"authors_field_index","columns":["field"],"type":null},{"name":"authors_component_type_index","columns":["component_type"],"type":null},{"name":"authors_entity_fk","columns":["entity_id"]},{"name":"authors_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"authors_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"landing_pages_components","indexes":[{"name":"landing_pages_field_index","columns":["field"],"type":null},{"name":"landing_pages_component_type_index","columns":["component_type"],"type":null},{"name":"landing_pages_entity_fk","columns":["entity_id"]},{"name":"landing_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"landing_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"landing_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_headers_components","indexes":[{"name":"components_page_headers_field_index","columns":["field"],"type":null},{"name":"components_page_headers_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_headers_entity_fk","columns":["entity_id"]},{"name":"components_page_headers_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_headers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_headers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_pricing_boxes_components","indexes":[{"name":"components_page_pricing_boxes_field_index","columns":["field"],"type":null},{"name":"components_page_pricing_boxes_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_pricing_boxes_entity_fk","columns":["entity_id"]},{"name":"components_page_pricing_boxes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_pricing_boxes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_pricing_boxes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_authors_authors_links","indexes":[{"name":"components_page_section_authors_authors_links_fk","columns":["section_authors_id"]},{"name":"components_page_section_authors_authors_links_inv_fk","columns":["author_id"]},{"name":"components_page_section_authors_authors_links_unique","columns":["section_authors_id","author_id"],"type":"unique"},{"name":"components_page_section_authors_authors_links_order_fk","columns":["author_order"]}],"foreignKeys":[{"name":"components_page_section_authors_authors_links_fk","columns":["section_authors_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_authors","onDelete":"CASCADE"},{"name":"components_page_section_authors_authors_links_inv_fk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"section_authors_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_concepts_components","indexes":[{"name":"components_page_section_concepts_field_index","columns":["field"],"type":null},{"name":"components_page_section_concepts_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_concepts_entity_fk","columns":["entity_id"]},{"name":"components_page_section_concepts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_section_concepts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_concepts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_faqs_components","indexes":[{"name":"components_page_section_faqs_field_index","columns":["field"],"type":null},{"name":"components_page_section_faqs_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_faqs_entity_fk","columns":["entity_id"]},{"name":"components_page_section_faqs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_section_faqs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_faqs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_modules_components","indexes":[{"name":"components_page_section_modules_field_index","columns":["field"],"type":null},{"name":"components_page_section_modules_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_modules_entity_fk","columns":["entity_id"]},{"name":"components_page_section_modules_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_section_modules_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_modules","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_reviews_components","indexes":[{"name":"components_page_section_reviews_field_index","columns":["field"],"type":null},{"name":"components_page_section_reviews_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_reviews_entity_fk","columns":["entity_id"]},{"name":"components_page_section_reviews_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_section_reviews_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_reviews","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_teches_components","indexes":[{"name":"components_page_section_teches_field_index","columns":["field"],"type":null},{"name":"components_page_section_teches_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_teches_entity_fk","columns":["entity_id"]},{"name":"components_page_section_teches_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_page_section_teches_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_teches","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-05-19 11:46:52.306	2a4d33bb22a650dffaee2d98cd20a544
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-05-07 20:03:51.484	2023-05-07 20:03:51.484	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-05-07 20:03:51.484	2023-05-07 20:03:51.484	\N	\N
3	plugin::users-permissions.auth.connect	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
4	plugin::users-permissions.auth.callback	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
5	plugin::users-permissions.auth.register	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
6	plugin::users-permissions.auth.forgotPassword	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
7	plugin::users-permissions.auth.resetPassword	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2023-05-07 20:03:51.529	2023-05-07 20:03:51.529	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	2
3	4	2	1
4	3	2	2
5	5	2	3
6	6	2	3
7	7	2	3
8	8	2	4
9	9	2	5
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-05-07 20:03:51.463	2023-05-07 20:03:51.463	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-05-07 20:03:51.475	2023-05-07 20:03:51.475	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi_user
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 109, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 109, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: authors_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.authors_components_id_seq', 7, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.authors_id_seq', 3, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 3, true);


--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 18, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 13, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 2, true);


--
-- Name: components_page_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_modules_id_seq', 6, true);


--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 6, true);


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 1, true);


--
-- Name: components_page_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_questions_id_seq', 6, true);


--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 4, true);


--
-- Name: components_page_section_abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_abouts_id_seq', 1, true);


--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);


--
-- Name: components_page_section_authors_authors_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_authors_authors_links_id_seq', 3, true);


--
-- Name: components_page_section_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_authors_id_seq', 1, true);


--
-- Name: components_page_section_concepts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_concepts_components_id_seq', 162, true);


--
-- Name: components_page_section_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_concepts_id_seq', 1, true);


--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 18, true);


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);


--
-- Name: components_page_section_modules_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_modules_components_id_seq', 48, true);


--
-- Name: components_page_section_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_modules_id_seq', 1, true);


--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 16, true);


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);


--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 110, true);


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 7, true);


--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 10, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.files_id_seq', 47, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 155, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 78, true);


--
-- Name: landing_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 14, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 9, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 9, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_user
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: authors_components authors_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: authors_components authors_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_concepts components_page_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_modules components_page_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes components_page_pricing_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_questions components_page_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);


--
-- Name: components_page_reviews components_page_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_abouts components_page_section_abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_abouts
    ADD CONSTRAINT components_page_section_abouts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_agenda components_page_section_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_authors_authors_links components_page_section_authors_authors_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_authors_authors_links components_page_section_authors_authors_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_unique UNIQUE (section_authors_id, author_id);


--
-- Name: components_page_section_authors components_page_section_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors
    ADD CONSTRAINT components_page_section_authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts_components components_page_section_concepts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts components_page_section_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts
    ADD CONSTRAINT components_page_section_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_concepts_components components_page_section_concepts_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs components_page_section_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_section_modules_components components_page_section_modules_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules components_page_section_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules
    ADD CONSTRAINT components_page_section_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_modules_components components_page_section_modules_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews components_page_section_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_section_teches_components components_page_section_teches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches components_page_section_teches_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches_components components_page_section_teches_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_tech_icons components_page_tech_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: landing_pages_components landing_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);


--
-- Name: landing_pages landing_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);


--
-- Name: landing_pages_components landing_pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: authors_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX authors_component_type_index ON public.authors_components USING btree (component_type);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX authors_entity_fk ON public.authors_components USING btree (entity_id);


--
-- Name: authors_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX authors_field_index ON public.authors_components USING btree (field);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: components_page_headers_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_headers_component_type_index ON public.components_page_headers_components USING btree (component_type);


--
-- Name: components_page_headers_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_headers_entity_fk ON public.components_page_headers_components USING btree (entity_id);


--
-- Name: components_page_headers_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_headers_field_index ON public.components_page_headers_components USING btree (field);


--
-- Name: components_page_pricing_boxes_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_pricing_boxes_component_type_index ON public.components_page_pricing_boxes_components USING btree (component_type);


--
-- Name: components_page_pricing_boxes_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_pricing_boxes_entity_fk ON public.components_page_pricing_boxes_components USING btree (entity_id);


--
-- Name: components_page_pricing_boxes_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_pricing_boxes_field_index ON public.components_page_pricing_boxes_components USING btree (field);


--
-- Name: components_page_section_authors_authors_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_authors_authors_links_fk ON public.components_page_section_authors_authors_links USING btree (section_authors_id);


--
-- Name: components_page_section_authors_authors_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_authors_authors_links_inv_fk ON public.components_page_section_authors_authors_links USING btree (author_id);


--
-- Name: components_page_section_authors_authors_links_order_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_authors_authors_links_order_fk ON public.components_page_section_authors_authors_links USING btree (author_order);


--
-- Name: components_page_section_concepts_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_concepts_component_type_index ON public.components_page_section_concepts_components USING btree (component_type);


--
-- Name: components_page_section_concepts_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_concepts_entity_fk ON public.components_page_section_concepts_components USING btree (entity_id);


--
-- Name: components_page_section_concepts_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_concepts_field_index ON public.components_page_section_concepts_components USING btree (field);


--
-- Name: components_page_section_faqs_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_faqs_component_type_index ON public.components_page_section_faqs_components USING btree (component_type);


--
-- Name: components_page_section_faqs_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_faqs_entity_fk ON public.components_page_section_faqs_components USING btree (entity_id);


--
-- Name: components_page_section_faqs_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_faqs_field_index ON public.components_page_section_faqs_components USING btree (field);


--
-- Name: components_page_section_modules_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_modules_component_type_index ON public.components_page_section_modules_components USING btree (component_type);


--
-- Name: components_page_section_modules_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_modules_entity_fk ON public.components_page_section_modules_components USING btree (entity_id);


--
-- Name: components_page_section_modules_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_modules_field_index ON public.components_page_section_modules_components USING btree (field);


--
-- Name: components_page_section_reviews_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_reviews_component_type_index ON public.components_page_section_reviews_components USING btree (component_type);


--
-- Name: components_page_section_reviews_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_reviews_entity_fk ON public.components_page_section_reviews_components USING btree (entity_id);


--
-- Name: components_page_section_reviews_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_reviews_field_index ON public.components_page_section_reviews_components USING btree (field);


--
-- Name: components_page_section_teches_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_teches_component_type_index ON public.components_page_section_teches_components USING btree (component_type);


--
-- Name: components_page_section_teches_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_teches_entity_fk ON public.components_page_section_teches_components USING btree (entity_id);


--
-- Name: components_page_section_teches_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX components_page_section_teches_field_index ON public.components_page_section_teches_components USING btree (field);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: landing_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX landing_pages_component_type_index ON public.landing_pages_components USING btree (component_type);


--
-- Name: landing_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX landing_pages_created_by_id_fk ON public.landing_pages USING btree (created_by_id);


--
-- Name: landing_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX landing_pages_entity_fk ON public.landing_pages_components USING btree (entity_id);


--
-- Name: landing_pages_field_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX landing_pages_field_index ON public.landing_pages_components USING btree (field);


--
-- Name: landing_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX landing_pages_updated_by_id_fk ON public.landing_pages USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_user
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors_components authors_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_entity_fk FOREIGN KEY (entity_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_page_headers_components components_page_headers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;


--
-- Name: components_page_section_authors_authors_links components_page_section_authors_authors_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_fk FOREIGN KEY (section_authors_id) REFERENCES public.components_page_section_authors(id) ON DELETE CASCADE;


--
-- Name: components_page_section_authors_authors_links components_page_section_authors_authors_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_authors_authors_links
    ADD CONSTRAINT components_page_section_authors_authors_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: components_page_section_concepts_components components_page_section_concepts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_concepts_components
    ADD CONSTRAINT components_page_section_concepts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_concepts(id) ON DELETE CASCADE;


--
-- Name: components_page_section_faqs_components components_page_section_faqs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;


--
-- Name: components_page_section_modules_components components_page_section_modules_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_modules_components
    ADD CONSTRAINT components_page_section_modules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_modules(id) ON DELETE CASCADE;


--
-- Name: components_page_section_reviews_components components_page_section_reviews_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_section_teches_components components_page_section_teches_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: landing_pages landing_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: landing_pages_components landing_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;


--
-- Name: landing_pages landing_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

