SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'ef6f8325-76c7-4708-9fa6-8d358f46e60a', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"danielghirasim@gmail.com","user_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","user_phone":""}}', '2025-06-30 15:03:24.4787+00', ''),
	('00000000-0000-0000-0000-000000000000', '63c64bc2-5b13-4a18-81a5-c58743c44e87', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 15:14:04.702828+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8f7b66a-0a7d-4d47-9f55-1369c1b00a8a', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 15:15:29.352383+00', ''),
	('00000000-0000-0000-0000-000000000000', '7858a85b-9bc5-436c-999c-e4ea9dc4c043', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 21:37:56.824164+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a222cfa-d3ac-4718-bd98-b9c5cc117b40', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-06-30 21:37:56.824656+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ba660ae-308d-49d8-b17d-91f37222b8b0', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:38:04.089126+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c62d3700-6e9b-4873-a3e9-981b76af09db', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:38:42.783003+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de1695f3-bb30-40f5-a015-74d75e56dfef', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:46:34.20953+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fcaabac-c0f8-44bb-859d-8ea2af4bc879', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-30 21:51:16.553013+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a66a1491-13f4-450d-8e0a-f6cbf9d0383b', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:52:02.729963+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c5b2e40-2ff3-4d24-89c8-0e070d79f82f', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-30 21:52:19.714022+00', ''),
	('00000000-0000-0000-0000-000000000000', '140dd712-6ca8-4d71-9f5f-6cc75886f20c', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:52:22.900534+00', ''),
	('00000000-0000-0000-0000-000000000000', '6a204802-5c5c-4728-aaca-4c950b354dde', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-30 21:58:39.073165+00', ''),
	('00000000-0000-0000-0000-000000000000', '8589962b-5d12-4132-8103-ff76f5ac282b', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 21:58:41.822087+00', ''),
	('00000000-0000-0000-0000-000000000000', '41aee4a6-6fd7-4bc8-b7cc-e9f1bcea6fd5', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-06-30 22:06:27.428708+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c192c17b-08c4-4303-a6f7-9d72a01f71b3', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-06-30 22:06:31.389048+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff247f41-137a-4e38-a53b-5a918e5b7c7a', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-01 07:37:36.042824+00', ''),
	('00000000-0000-0000-0000-000000000000', '2ffbcb7d-7f9a-44e3-a6b4-8a4e2b5772b0', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-01 07:37:36.044778+00', ''),
	('00000000-0000-0000-0000-000000000000', '10339ad1-640d-41b5-a054-ed32d77818b0', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 08:02:09.214428+00', ''),
	('00000000-0000-0000-0000-000000000000', '185e2c79-adf2-4219-8abd-bdda791feb15', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 08:02:16.945264+00', ''),
	('00000000-0000-0000-0000-000000000000', '3551355e-cf69-499a-91b7-9a5abfca6e5f', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-01 09:23:36.946765+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e40a8c94-36f0-4092-b13e-703597f920f5', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-01 09:23:36.949474+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac194e4a-3201-41a2-ac89-0e8d4f9d242f', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 09:26:38.164233+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ac3d228-2b5c-463a-9624-c8867abbbbb1', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 09:26:55.819937+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e5a84c03-0422-4eb3-a32d-8fb2f143b5f9', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 09:27:00.110711+00', ''),
	('00000000-0000-0000-0000-000000000000', '432e92dd-d3ba-41dd-bb7c-2190b4794874', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 09:27:16.068391+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cea7b848-d1ae-4022-a3f1-429bc6f4c579', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 09:27:24.019686+00', ''),
	('00000000-0000-0000-0000-000000000000', '536f43c6-6318-4f38-a238-66a0df55680a', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 11:13:36.5278+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2c6b8c1-b1b3-4c82-93f5-5f17d53a5b5d', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 11:49:22.659814+00', ''),
	('00000000-0000-0000-0000-000000000000', '79234ab2-4834-46b9-8778-8deba49f5460', '{"action":"user_signedup","actor_id":"e4237f39-3ea0-4bc2-b9a2-311b65c6bf23","actor_username":"poqyw@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:03:04.257796+00', ''),
	('00000000-0000-0000-0000-000000000000', '586ff606-3fc5-4acb-aa1c-e0c3c440b956', '{"action":"login","actor_id":"e4237f39-3ea0-4bc2-b9a2-311b65c6bf23","actor_username":"poqyw@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:03:04.259849+00', ''),
	('00000000-0000-0000-0000-000000000000', '2745d3d8-f1a5-4576-b6ad-4dc4d6902244', '{"action":"user_recovery_requested","actor_id":"e4237f39-3ea0-4bc2-b9a2-311b65c6bf23","actor_username":"poqyw@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:03:04.267872+00', ''),
	('00000000-0000-0000-0000-000000000000', '70a6ce70-bc00-4d38-85ea-d2022c8c786e', '{"action":"login","actor_id":"e4237f39-3ea0-4bc2-b9a2-311b65c6bf23","actor_username":"poqyw@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:03:31.776229+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bffe0937-70b9-458c-8c4a-f5eeca0decf1', '{"action":"user_signedup","actor_id":"e20c21ee-89a1-470d-b2fb-84cdb6b44703","actor_username":"riquzawuqo@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:05:13.514257+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a354f0db-b17c-47db-8041-cf8b05d07ec3', '{"action":"login","actor_id":"e20c21ee-89a1-470d-b2fb-84cdb6b44703","actor_username":"riquzawuqo@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:05:13.582429+00', ''),
	('00000000-0000-0000-0000-000000000000', '737c905c-33a3-49b9-b491-b967ec925c19', '{"action":"user_recovery_requested","actor_id":"e20c21ee-89a1-470d-b2fb-84cdb6b44703","actor_username":"riquzawuqo@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:05:13.595068+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be0e0e07-87f8-461f-af72-df0c9629ab43', '{"action":"login","actor_id":"e20c21ee-89a1-470d-b2fb-84cdb6b44703","actor_username":"riquzawuqo@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:05:32.724643+00', ''),
	('00000000-0000-0000-0000-000000000000', '89f607c1-3a63-419c-b426-d9981c187440', '{"action":"user_signedup","actor_id":"6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5","actor_username":"cowohulog@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:07:25.702803+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e1ba1b40-a5b2-4e6e-b152-5f81b58e0707', '{"action":"login","actor_id":"6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5","actor_username":"cowohulog@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:07:25.705034+00', ''),
	('00000000-0000-0000-0000-000000000000', '996f18bf-8522-46ba-aeb5-92f56b8012a0', '{"action":"user_recovery_requested","actor_id":"6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5","actor_username":"cowohulog@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:07:25.710075+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e7a308af-fcce-454e-ba2b-7d689e43aef3', '{"action":"login","actor_id":"6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5","actor_username":"cowohulog@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:07:30.581495+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1191ff7-a375-4bc5-a318-6bd8b12aebad', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"poqyw@mailinator.com","user_id":"e4237f39-3ea0-4bc2-b9a2-311b65c6bf23","user_phone":""}}', '2025-07-01 12:08:08.810248+00', ''),
	('00000000-0000-0000-0000-000000000000', '94ca16a2-149e-4c9c-abf9-cc8ca461f93a', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"cowohulog@mailinator.com","user_id":"6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5","user_phone":""}}', '2025-07-01 12:08:08.812225+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8d5d3ee-748c-4d7b-beca-ba26b1465dd0', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"riquzawuqo@mailinator.com","user_id":"e20c21ee-89a1-470d-b2fb-84cdb6b44703","user_phone":""}}', '2025-07-01 12:08:08.823481+00', ''),
	('00000000-0000-0000-0000-000000000000', '9d82f95d-e75a-456f-afe7-c3a6a2be16dc', '{"action":"user_signedup","actor_id":"75a4e7f1-35bd-4614-85ea-fb338771390e","actor_username":"cymyba@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:08:27.891166+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd4e2358-5111-483a-8b19-0f1c5f1da501', '{"action":"login","actor_id":"75a4e7f1-35bd-4614-85ea-fb338771390e","actor_username":"cymyba@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:08:27.893212+00', ''),
	('00000000-0000-0000-0000-000000000000', '21cc1d0d-2075-4fb5-8fd8-e965760442bc', '{"action":"user_recovery_requested","actor_id":"75a4e7f1-35bd-4614-85ea-fb338771390e","actor_username":"cymyba@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:08:27.898126+00', ''),
	('00000000-0000-0000-0000-000000000000', '2a6d8ea8-b235-4030-8cee-6f2bddf9742e', '{"action":"login","actor_id":"75a4e7f1-35bd-4614-85ea-fb338771390e","actor_username":"cymyba@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:08:36.788014+00', ''),
	('00000000-0000-0000-0000-000000000000', '4823f6e2-1440-435e-9f50-43c5529a1b17', '{"action":"user_signedup","actor_id":"743d516d-6c64-47a6-947d-c0607251b0c7","actor_username":"xykuh@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:10:02.935041+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dd3907ec-f0a5-42ce-871c-61e6e6c00770', '{"action":"login","actor_id":"743d516d-6c64-47a6-947d-c0607251b0c7","actor_username":"xykuh@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:10:02.937994+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad361f13-318e-4aa3-bbaa-6ba3760e3ac6', '{"action":"user_recovery_requested","actor_id":"743d516d-6c64-47a6-947d-c0607251b0c7","actor_username":"xykuh@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:10:02.942536+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ecac0a0-cd91-4421-8eb3-38ae5c701ab6', '{"action":"login","actor_id":"743d516d-6c64-47a6-947d-c0607251b0c7","actor_username":"xykuh@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:10:13.640743+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd31a9d4a-6819-4287-9138-ec1a44e7a156', '{"action":"user_signedup","actor_id":"41458274-1a7e-4346-8dd0-763bbed29a42","actor_username":"wilodex@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:13:12.847126+00', ''),
	('00000000-0000-0000-0000-000000000000', '2be66d35-e5ac-4da8-b93f-76e780ddd493', '{"action":"login","actor_id":"41458274-1a7e-4346-8dd0-763bbed29a42","actor_username":"wilodex@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:13:12.851767+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ea37668-6b66-4f5a-924f-a39d4b5c2740', '{"action":"user_recovery_requested","actor_id":"41458274-1a7e-4346-8dd0-763bbed29a42","actor_username":"wilodex@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:13:12.872077+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3908a61-cc2f-484f-b993-d7026b7915c7', '{"action":"login","actor_id":"41458274-1a7e-4346-8dd0-763bbed29a42","actor_username":"wilodex@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:13:18.047219+00', ''),
	('00000000-0000-0000-0000-000000000000', '92cac5c7-c3d8-4673-a23a-1744da8a856d', '{"action":"user_signedup","actor_id":"4b0be4c2-0abb-4bd5-9049-2bc14be5411a","actor_username":"fiqyzodene@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:16:31.680346+00', ''),
	('00000000-0000-0000-0000-000000000000', '28ae65ee-2fd9-4ff5-bf75-cd8c0d461561', '{"action":"login","actor_id":"4b0be4c2-0abb-4bd5-9049-2bc14be5411a","actor_username":"fiqyzodene@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:16:31.684321+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed9421e7-e5d8-4f8e-8960-77b690f30acb', '{"action":"user_recovery_requested","actor_id":"4b0be4c2-0abb-4bd5-9049-2bc14be5411a","actor_username":"fiqyzodene@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:16:31.699397+00', ''),
	('00000000-0000-0000-0000-000000000000', '6ebd9a3d-5ae2-42b7-933a-0ddb1bb587ae', '{"action":"login","actor_id":"4b0be4c2-0abb-4bd5-9049-2bc14be5411a","actor_username":"fiqyzodene@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:16:35.360806+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6aaa63b-8008-4f7e-86c4-8098f31e90a1', '{"action":"user_signedup","actor_id":"84a93212-c261-4960-9844-21830ca8e288","actor_username":"zyli@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:19:34.840888+00', ''),
	('00000000-0000-0000-0000-000000000000', '57626918-d972-46a3-91c9-34a0eb899917', '{"action":"login","actor_id":"84a93212-c261-4960-9844-21830ca8e288","actor_username":"zyli@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:19:34.84245+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd9ec16e2-fce4-47de-824e-34a447fef012', '{"action":"user_recovery_requested","actor_id":"84a93212-c261-4960-9844-21830ca8e288","actor_username":"zyli@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:19:34.847344+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a90d61ce-5226-4ef5-8e1b-7ffc4d7f511b', '{"action":"login","actor_id":"84a93212-c261-4960-9844-21830ca8e288","actor_username":"zyli@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:19:38.348506+00', ''),
	('00000000-0000-0000-0000-000000000000', '012df15f-f32e-46ef-ad12-e70fd3745bd6', '{"action":"user_signedup","actor_id":"a8275e48-293d-49d6-af3c-420d646b1dcc","actor_username":"sanatate@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:22:45.320835+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a11caa9a-b36c-4932-af92-2844c8413ec7', '{"action":"login","actor_id":"a8275e48-293d-49d6-af3c-420d646b1dcc","actor_username":"sanatate@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:22:45.32286+00', ''),
	('00000000-0000-0000-0000-000000000000', '8de6ed0f-ce56-43bc-be28-d24adbfd614a', '{"action":"user_recovery_requested","actor_id":"a8275e48-293d-49d6-af3c-420d646b1dcc","actor_username":"sanatate@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:22:45.327196+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b9d2cc3-ef0f-4ee6-9880-3eda80c574d5', '{"action":"login","actor_id":"a8275e48-293d-49d6-af3c-420d646b1dcc","actor_username":"sanatate@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:22:49.81738+00', ''),
	('00000000-0000-0000-0000-000000000000', '69c26cf5-3c40-469b-a738-c22132758c22', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"cymyba@mailinator.com","user_id":"75a4e7f1-35bd-4614-85ea-fb338771390e","user_phone":""}}', '2025-07-01 12:23:46.673285+00', ''),
	('00000000-0000-0000-0000-000000000000', '51316c93-a62a-46b6-baa1-434cfd614d0a', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"xykuh@mailinator.com","user_id":"743d516d-6c64-47a6-947d-c0607251b0c7","user_phone":""}}', '2025-07-01 12:23:46.677907+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e16504f0-d385-40bc-b6ff-d55a5c5a18e4', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"wilodex@mailinator.com","user_id":"41458274-1a7e-4346-8dd0-763bbed29a42","user_phone":""}}', '2025-07-01 12:23:46.683484+00', ''),
	('00000000-0000-0000-0000-000000000000', '203c2151-1b88-45ef-9b4d-8df07ff45e28', '{"action":"login","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:37:25.058315+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ffa412e1-59e7-42ff-b8b4-d0c1a238f67a', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"fiqyzodene@mailinator.com","user_id":"4b0be4c2-0abb-4bd5-9049-2bc14be5411a","user_phone":""}}', '2025-07-01 12:23:46.69054+00', ''),
	('00000000-0000-0000-0000-000000000000', '45d6a012-0be6-4b5b-a61f-ce63f01f4560', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"zyli@mailinator.com","user_id":"84a93212-c261-4960-9844-21830ca8e288","user_phone":""}}', '2025-07-01 12:23:46.691933+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de898fdb-5004-4741-b1a1-3e68f8f3f2dd', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sanatate@gmail.com","user_id":"a8275e48-293d-49d6-af3c-420d646b1dcc","user_phone":""}}', '2025-07-01 12:23:46.692516+00', ''),
	('00000000-0000-0000-0000-000000000000', 'abcb3e70-4e64-441f-a200-fc741f7e44d2', '{"action":"user_signedup","actor_id":"465274b1-3903-4fb1-948c-19a06b679738","actor_username":"qyzyne@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 12:24:28.101348+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b256be7-bcd6-4b85-90f2-826b31f2bb6e', '{"action":"login","actor_id":"465274b1-3903-4fb1-948c-19a06b679738","actor_username":"qyzyne@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 12:24:28.103555+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b780db02-119d-4f60-92d8-1bfd01070d07', '{"action":"user_recovery_requested","actor_id":"465274b1-3903-4fb1-948c-19a06b679738","actor_username":"qyzyne@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 12:24:28.109566+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8b936cb-b573-4291-8f3c-19eb4fcb97f7', '{"action":"login","actor_id":"465274b1-3903-4fb1-948c-19a06b679738","actor_username":"qyzyne@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 12:24:33.831368+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e8065fb4-296f-458c-bb63-fecc246a9f96', '{"action":"user_signedup","actor_id":"9f98a004-1daf-4394-bd65-a249ca5d157d","actor_username":"maqakata@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:01:30.932735+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a445e25-e6ac-42e9-b32c-db7226db3cc9', '{"action":"login","actor_id":"9f98a004-1daf-4394-bd65-a249ca5d157d","actor_username":"maqakata@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:01:30.936532+00', ''),
	('00000000-0000-0000-0000-000000000000', '0fc06796-47a5-4d92-88e2-5ae192d62085', '{"action":"user_recovery_requested","actor_id":"9f98a004-1daf-4394-bd65-a249ca5d157d","actor_username":"maqakata@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:01:30.94635+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc72a4e3-2e3c-4026-a555-6ff56d58c672', '{"action":"login","actor_id":"9f98a004-1daf-4394-bd65-a249ca5d157d","actor_username":"maqakata@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:01:33.657692+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e9f26dc-5658-4b7c-a7bc-75bd0638d945', '{"action":"user_signedup","actor_id":"1101d80f-2ef3-4d69-9965-601c016ae381","actor_username":"xyxeq@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:14:10.954345+00', ''),
	('00000000-0000-0000-0000-000000000000', '25b18683-baea-4a9c-8f01-732e3d18b590', '{"action":"login","actor_id":"1101d80f-2ef3-4d69-9965-601c016ae381","actor_username":"xyxeq@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:14:10.958068+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e8108a1-74a2-433e-8b79-f6a001525112', '{"action":"user_recovery_requested","actor_id":"1101d80f-2ef3-4d69-9965-601c016ae381","actor_username":"xyxeq@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:14:10.965915+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a52d260f-333e-42ec-a130-d393f2becccc', '{"action":"login","actor_id":"1101d80f-2ef3-4d69-9965-601c016ae381","actor_username":"xyxeq@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:14:12.944123+00', ''),
	('00000000-0000-0000-0000-000000000000', '66b61c34-ed27-40e9-b409-3e629ea4dea6', '{"action":"user_signedup","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:15:29.464028+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be6fbb9e-9906-4ce3-a6f1-6bfa729d8a1d', '{"action":"login","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:15:29.466772+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f140538-0e01-48b9-98ff-e914c706ddfb', '{"action":"user_recovery_requested","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:15:29.474883+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ad32362d-b147-4ab4-826a-ab2138b446dd', '{"action":"login","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:15:33.346619+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aad5ca6a-b368-4413-9dd8-509a0627af56', '{"action":"login","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-01 13:15:33.691974+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf886b22-63f2-4a95-9b5a-b62e8f4a7281', '{"action":"logout","actor_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","actor_username":"nufipa@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:17:33.697389+00', ''),
	('00000000-0000-0000-0000-000000000000', '7dc9db45-1cb6-40b3-a085-713d2836aaaa', '{"action":"user_signedup","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:17:36.520899+00', ''),
	('00000000-0000-0000-0000-000000000000', '848c9927-9db1-4c47-bf48-eefde56e4705', '{"action":"login","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:17:36.523383+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff24e996-07a2-4a5c-ba87-2de8e15ec0c8', '{"action":"user_recovery_requested","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:17:36.531138+00', ''),
	('00000000-0000-0000-0000-000000000000', '87cf6302-1264-465b-a513-d413729e9af1', '{"action":"login","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:17:38.90547+00', ''),
	('00000000-0000-0000-0000-000000000000', '1fff103c-1cc9-45b8-8bad-df0848ebd8a2', '{"action":"login","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-01 13:17:39.241918+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c1da8a7-fd01-437c-86e2-6349ca3b981c', '{"action":"logout","actor_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","actor_username":"cufomo@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:37:17.844687+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dfd96dcc-e039-49fa-95c7-5847236769a9', '{"action":"user_signedup","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:37:21.146115+00', ''),
	('00000000-0000-0000-0000-000000000000', '56a3ad90-e057-4640-a5fb-59632798f017', '{"action":"login","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:37:21.150308+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9db72e6-78b9-4ccd-a75e-edf94ea5eff2', '{"action":"user_recovery_requested","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:37:21.155274+00', ''),
	('00000000-0000-0000-0000-000000000000', '8f1e0b98-ee15-4d0c-bbff-3e121f93f232', '{"action":"login","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-01 13:37:25.418619+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b12cedfc-01a9-4a27-a2ba-112534e6da27', '{"action":"logout","actor_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","actor_username":"syhepofoce@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:40:55.463219+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ed25b54-81ae-495d-983c-b44919be8756', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:40:58.07639+00', ''),
	('00000000-0000-0000-0000-000000000000', '6355274c-0d95-4b7f-9559-86c3d6004787', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:41:06.726835+00', ''),
	('00000000-0000-0000-0000-000000000000', '195ef3d8-7df0-42a9-a080-7ef6a1b7d33f', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:41:13.912636+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c625475d-170c-4fdf-850a-d55ed10e502a', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:41:15.375018+00', ''),
	('00000000-0000-0000-0000-000000000000', '1dc1f9c8-bdcd-4333-8db0-d9e0fe1f6e86', '{"action":"user_signedup","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2025-07-01 13:41:20.311541+00', ''),
	('00000000-0000-0000-0000-000000000000', '49d243f6-334e-45ba-ae67-64db2697cb06', '{"action":"login","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 13:41:20.3143+00', ''),
	('00000000-0000-0000-0000-000000000000', '4bc0473d-1f17-4b01-bd37-526b2f157ee6', '{"action":"user_recovery_requested","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 13:41:20.319381+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a5c5b4a-def4-429c-a54e-9c9687ae9567', '{"action":"login","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 13:41:23.959612+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e2f8ed54-069b-46c2-9a47-ff526267cb7a', '{"action":"login","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-07-01 13:41:24.320066+00', ''),
	('00000000-0000-0000-0000-000000000000', '04641d4c-b2cf-4a6e-9200-84e42260c115', '{"action":"logout","actor_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","actor_username":"vukorago@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 14:13:22.945194+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a4ec714-4c54-4fcf-b58f-362fcbb66dd6', '{"action":"user_recovery_requested","actor_id":"28c6afb7-82b8-4494-b44f-a7ced8d1b5fd","actor_username":"sizurytuma@mailinator.com","actor_via_sso":false,"log_type":"user"}', '2025-07-01 14:49:40.273024+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b06848c-2996-45f0-9852-a2fbb479a2f7', '{"action":"user_signedup","actor_id":"28c6afb7-82b8-4494-b44f-a7ced8d1b5fd","actor_username":"sizurytuma@mailinator.com","actor_via_sso":false,"log_type":"team"}', '2025-07-01 14:50:00.620809+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e3d9e1d4-d320-489d-9b89-28624d9c6167', '{"action":"logout","actor_id":"28c6afb7-82b8-4494-b44f-a7ced8d1b5fd","actor_username":"sizurytuma@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 14:50:42.039118+00', ''),
	('00000000-0000-0000-0000-000000000000', '01fba015-1fd3-473c-84f4-ddc679d67702', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vabaxe@mailinator.com","user_id":"65a8d111-46ed-40be-91a4-d5100331fbf7","user_phone":""}}', '2025-07-01 14:57:59.601012+00', ''),
	('00000000-0000-0000-0000-000000000000', '148c968f-f0cb-459f-aee1-f4c034efc1b6', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"karodeqisa@mailinator.com","user_id":"d0b79069-b55d-468c-9590-2ab52c9f926f","user_phone":""}}', '2025-07-01 14:57:59.607493+00', ''),
	('00000000-0000-0000-0000-000000000000', '0b48c550-f693-4498-b03e-b69e10b2a412', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"maqakata@mailinator.com","user_id":"9f98a004-1daf-4394-bd65-a249ca5d157d","user_phone":""}}', '2025-07-01 14:57:59.609961+00', ''),
	('00000000-0000-0000-0000-000000000000', '38f9dd3b-70f6-4993-8104-24e2556fdc52', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"syzow@mailinator.com","user_id":"4a1eec0d-5c1e-48b6-8ef2-a0d7bea3b312","user_phone":""}}', '2025-07-01 14:57:59.615203+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6dfd151-ffe7-483f-bd2b-7d3a4da8d61d', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"qyzyne@mailinator.com","user_id":"465274b1-3903-4fb1-948c-19a06b679738","user_phone":""}}', '2025-07-01 14:57:59.616729+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c5591c5a-4064-4e55-932b-1b0e98738764', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"hunebubuh@mailinator.com","user_id":"3b36a44c-a989-420b-812a-dc4d9832bb2b","user_phone":""}}', '2025-07-01 14:57:59.617194+00', ''),
	('00000000-0000-0000-0000-000000000000', '4b2f17e4-783a-436a-b533-beef1d0e59b8', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"xyxeq@mailinator.com","user_id":"1101d80f-2ef3-4d69-9965-601c016ae381","user_phone":""}}', '2025-07-01 14:57:59.624691+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0e156b8-fbce-4410-ac22-05ba9cc7a3a9', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"nufipa@mailinator.com","user_id":"9392ff09-b130-4375-b822-cd4d0fe5cfb8","user_phone":""}}', '2025-07-01 14:57:59.640337+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c12d04ea-0d5f-4839-bba0-3cc7edfee8f9', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"cufomo@mailinator.com","user_id":"1b962231-689b-4238-bbac-2ef4374a1e0f","user_phone":""}}', '2025-07-01 14:57:59.647845+00', ''),
	('00000000-0000-0000-0000-000000000000', '92c0260a-8547-4dfd-a31d-42540aad38d7', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vukorago@mailinator.com","user_id":"2bbbbd59-7319-4f0c-8c11-14552b4d0eb8","user_phone":""}}', '2025-07-01 14:57:59.649363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3834a29-3fce-4f76-a95f-828884e75a79', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"syhepofoce@mailinator.com","user_id":"2f905d8d-98d8-4d29-a3e4-031b93299bf9","user_phone":""}}', '2025-07-01 14:57:59.660379+00', ''),
	('00000000-0000-0000-0000-000000000000', '21bd0399-ca71-4967-a2b8-403b1883d4eb', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"dawihizy@mailinator.com","user_id":"f8b8784e-56be-4342-bf33-e60fe7f64674","user_phone":""}}', '2025-07-01 14:57:59.660431+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbbf471f-8017-4b90-88fb-a14ab4b8567b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"sizurytuma@mailinator.com","user_id":"28c6afb7-82b8-4494-b44f-a7ced8d1b5fd","user_phone":""}}', '2025-07-01 14:57:59.662086+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a7b8791-d109-4f44-b2cd-b6425f0d8697', '{"action":"user_signedup","actor_id":"0c18ac0b-629d-492e-ad6c-e3d6f8ab3cd2","actor_username":"vinoro@mailinator.com","actor_via_sso":false,"log_type":"team"}', '2025-07-01 15:02:21.908891+00', ''),
	('00000000-0000-0000-0000-000000000000', '672584f1-c405-44df-8d23-511fa270c3b8', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-01 21:59:13.785409+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e6d2b5df-0185-431a-85f4-5badf7d2a883', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 22:04:43.572065+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a458b531-bd2f-4b94-9fd5-068e1bf47daa', '{"action":"user_signedup","actor_id":"6c9fbb43-fdfa-4d6c-8368-0f2de9276588","actor_username":"hubeha@mailinator.com","actor_via_sso":false,"log_type":"team"}', '2025-07-01 22:21:47.20714+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b9b95996-5cd1-45ed-923d-d0557cc99984', '{"action":"logout","actor_id":"6c9fbb43-fdfa-4d6c-8368-0f2de9276588","actor_username":"hubeha@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-01 22:21:49.08151+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ef554fc-f537-40ee-af70-003b00c08cad', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 07:47:18.061014+00', ''),
	('00000000-0000-0000-0000-000000000000', '25162330-b66e-43ae-bdd9-82a591122e8a', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:47:33.126765+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ef17107-983b-4812-967b-31ee53b437fc', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:48:42.080842+00', ''),
	('00000000-0000-0000-0000-000000000000', '5b6c5643-e424-4a87-a176-867c4532d47c', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 07:48:49.13127+00', ''),
	('00000000-0000-0000-0000-000000000000', '2acc4ade-e192-40d9-b029-84e9e49d8d88', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:48:58.406311+00', ''),
	('00000000-0000-0000-0000-000000000000', '22697269-5c4f-495d-8119-9018e27b12f8', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:53:03.750039+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c74b766-d7be-411b-b5e7-e867c3d7b95c', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 07:53:08.289036+00', ''),
	('00000000-0000-0000-0000-000000000000', '74f70608-9829-4adf-8332-52a9f754c027', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:53:23.287436+00', ''),
	('00000000-0000-0000-0000-000000000000', '4fd70e57-27fe-4dbe-a9e8-956dd4b840dc', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:57:28.40905+00', ''),
	('00000000-0000-0000-0000-000000000000', '96bf8fce-4d34-40f7-a5f6-f6eff9bcc217', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 07:57:32.776347+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a69d147-58f6-43e8-a6b5-44895e020982', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 07:57:52.253761+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac59fed9-b80f-4cd8-b93a-9aa57181eb5e', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 08:04:43.171039+00', ''),
	('00000000-0000-0000-0000-000000000000', '20007ceb-2799-4913-af1b-5e1b2d18564e', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:04:52.509851+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c8480e6-c327-45b0-8e51-4b44109edb67', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:07:47.0233+00', ''),
	('00000000-0000-0000-0000-000000000000', '168d1065-5d25-496d-ad95-4442351196e3', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:11:32.896421+00', ''),
	('00000000-0000-0000-0000-000000000000', '9daf19df-8ced-4451-a16b-59c08ea8d7c3', '{"action":"user_signedup","actor_id":"52c2f84e-d1fa-46d2-a085-bc133226907f","actor_username":"vatoj@mailinator.com","actor_via_sso":false,"log_type":"team"}', '2025-07-02 08:18:37.202899+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c66b6402-bb1e-4098-a8cd-1c643ed010fb', '{"action":"logout","actor_id":"52c2f84e-d1fa-46d2-a085-bc133226907f","actor_username":"vatoj@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 08:18:40.318527+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b581ac7-2576-4d5f-84e7-a8d8c4b85b24', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:18:44.027679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed05dd9f-6504-42e0-a6fb-5dde108b03f1', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 08:18:58.251503+00', ''),
	('00000000-0000-0000-0000-000000000000', '2c96d94d-2783-4e98-a451-7d8dd0c770ab', '{"action":"user_updated_password","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:19:03.724155+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b695a247-7448-4498-8cf9-fc9df32344ac', '{"action":"user_modified","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 08:19:03.724519+00', ''),
	('00000000-0000-0000-0000-000000000000', '5aaca4ac-836a-426f-8779-5c42e2930ecb', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 08:19:06.772163+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8370d6b-709c-426f-a331-237d44fe3e0a', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 08:19:19.646751+00', ''),
	('00000000-0000-0000-0000-000000000000', '44755902-9513-41ad-b532-c616208bb564', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 11:26:00.96016+00', ''),
	('00000000-0000-0000-0000-000000000000', '2042bcd9-a5b8-4309-93d6-96eabd31888e', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 11:26:00.965915+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c0f42e2-5d51-4d4e-bffe-b1bfac5eda72', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 12:14:40.761114+00', ''),
	('00000000-0000-0000-0000-000000000000', 'feb1660a-5252-4fef-93c2-04d21988910d', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 12:14:45.190345+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ff44a035-32d4-4e70-bd25-3987dca42994', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"rypug@mailinator.com","user_id":"4887081d-a00f-44f8-9685-a6143cea4fe1","user_phone":""}}', '2025-07-02 12:18:23.351916+00', ''),
	('00000000-0000-0000-0000-000000000000', '0aea40e8-80d4-42bb-b683-03a2b800ef92', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"bodyboty@mailinator.com","user_id":"ab0c988e-d0d1-4bdf-8626-e9c9ee7f2b3a","user_phone":""}}', '2025-07-02 12:18:23.360094+00', ''),
	('00000000-0000-0000-0000-000000000000', '1a97ed84-4432-4192-ab65-aeabe728b83b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vatoj@mailinator.com","user_id":"52c2f84e-d1fa-46d2-a085-bc133226907f","user_phone":""}}', '2025-07-02 12:18:23.363319+00', ''),
	('00000000-0000-0000-0000-000000000000', '40ce2ace-8778-492a-b3b2-4a529f299240', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"nuqimyzedi@mailinator.com","user_id":"826ba5d1-7506-4370-ab61-53ab77e36dfa","user_phone":""}}', '2025-07-02 12:18:23.363665+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b37f0856-802e-4d42-9cf2-b0aec35fbe6b', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jemajyrase@mailinator.com","user_id":"e185cfc9-5411-4653-815a-7ccf5d56ddf5","user_phone":""}}', '2025-07-02 12:18:23.369875+00', ''),
	('00000000-0000-0000-0000-000000000000', '9fb18386-db13-472b-9668-2fdce385f76e', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"cygyqehog@mailinator.com","user_id":"a23d086d-c6f1-4ac6-8a0e-7586d558b1eb","user_phone":""}}', '2025-07-02 12:18:23.371298+00', ''),
	('00000000-0000-0000-0000-000000000000', '7adf8218-641e-4b74-a17b-be34a2bfac61', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"wuvuxem@mailinator.com","user_id":"96d47044-60a7-4abc-95cf-71d2ae34e9c3","user_phone":""}}', '2025-07-02 12:18:23.381575+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bc66715b-718f-49de-91a5-c195d0850f65', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"vinoro@mailinator.com","user_id":"0c18ac0b-629d-492e-ad6c-e3d6f8ab3cd2","user_phone":""}}', '2025-07-02 12:18:23.39548+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aecf5aeb-9bec-4054-baeb-f0766035daed', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"hubeha@mailinator.com","user_id":"6c9fbb43-fdfa-4d6c-8368-0f2de9276588","user_phone":""}}', '2025-07-02 12:18:23.395469+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd509ee26-633c-48f3-8645-b0158904d6ea', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"hecec@mailinator.com","user_id":"dacfbd7c-8bbb-4264-b843-d28f66181c68","user_phone":""}}', '2025-07-02 12:18:23.404514+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a172ec4c-e110-44a8-abc0-6bd53952d0ad', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test@gmail.com","user_id":"16ae3004-99ca-4e86-99ba-d6caa11dbdf0","user_phone":""}}', '2025-07-02 12:18:23.406081+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a50c1ea6-ceb6-4668-a2e0-5e111f03587c', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 13:30:28.088807+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f2d3344c-b2c2-44d1-ad6e-4d7fc2c8c757', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 13:30:28.090402+00', ''),
	('00000000-0000-0000-0000-000000000000', '86e771b8-16d1-48ed-9f91-9acffb47bb36', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 19:11:36.282363+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e98f06e9-ab02-4235-8305-3f323c6f79da', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-02 19:11:36.292093+00', ''),
	('00000000-0000-0000-0000-000000000000', '44f3df06-6fc0-45b8-bd37-5276bd60543a', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 19:57:29.074495+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c78c406-6ab4-489d-b98c-9845903178d8', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:01:18.900208+00', ''),
	('00000000-0000-0000-0000-000000000000', '01465ac2-5260-4cf6-b152-e6e45c4d9d49', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:01:20.297745+00', ''),
	('00000000-0000-0000-0000-000000000000', '2fb0280d-5627-4fa7-80e8-252a8ff208b6', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:41:28.507494+00', ''),
	('00000000-0000-0000-0000-000000000000', '12e02ed9-e16e-4820-90f1-8e72e12bbad4', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:42:07.317704+00', ''),
	('00000000-0000-0000-0000-000000000000', '201fdfe3-0f0c-4c31-ad37-3a78a8af225f', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:44:15.340646+00', ''),
	('00000000-0000-0000-0000-000000000000', '2cbb9195-46ce-443b-936a-ccb2fb8d3cc6', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:46:01.205558+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae26cf9e-e3c1-4b4f-b1e6-6e3864e21edb', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:47:13.984399+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba012d19-74b2-47cf-986e-b2e6bc3a2290', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:47:16.404385+00', ''),
	('00000000-0000-0000-0000-000000000000', '4e4cbb9a-6f3c-461b-b1a9-4cf6d7ef2781', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:51:47.465432+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cb923dfa-7806-4da1-ad49-9154376cbfbe', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:53:01.652733+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a93436f9-9d10-4d44-9e66-2613c3f39d10', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 20:53:27.263239+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3988976-9bc7-4945-909b-1e7c323153df', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 20:54:09.821396+00', ''),
	('00000000-0000-0000-0000-000000000000', '7e46e56f-4a67-4b81-abb3-3b72fd83b2a8', '{"action":"user_signedup","actor_id":"f6cf805c-2c77-4e93-bc3a-46d668cb9b26","actor_username":"xowu@mailinator.com","actor_via_sso":false,"log_type":"team"}', '2025-07-02 21:01:24.356075+00', ''),
	('00000000-0000-0000-0000-000000000000', '5561b4df-dc45-4202-863a-3d539d81feac', '{"action":"logout","actor_id":"f6cf805c-2c77-4e93-bc3a-46d668cb9b26","actor_username":"xowu@mailinator.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 21:01:27.9918+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ac92a722-04e5-43b9-b4ad-d94c341356ce', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:01:35.058486+00', ''),
	('00000000-0000-0000-0000-000000000000', '06764ba4-a3cc-4d33-aaa1-852743f803d2', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 21:01:49.396586+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a3cd7fad-4c03-4049-ad95-e4f57e57750e', '{"action":"user_updated_password","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:01:57.475665+00', ''),
	('00000000-0000-0000-0000-000000000000', '30fff862-163c-42e8-8dad-6145b5f38204', '{"action":"user_modified","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:01:57.476051+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f47e4eb1-8c19-41b1-9aad-43c77ff23e55', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 21:04:58.449434+00', ''),
	('00000000-0000-0000-0000-000000000000', '98a73d20-da05-40eb-9998-3133ec4f0660', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:05:03.487612+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a513645-380e-47af-b5b3-62a9cd5f0264', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 21:05:17.671504+00', ''),
	('00000000-0000-0000-0000-000000000000', '45c321d8-a25d-4430-a878-0ed87245292c', '{"action":"user_updated_password","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:05:53.074146+00', ''),
	('00000000-0000-0000-0000-000000000000', '069778c8-41d1-4f20-945a-512b8f638be6', '{"action":"user_modified","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-02 21:05:53.074645+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c071872a-1cfd-498f-912f-c187144f2b59', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 21:11:09.986892+00', ''),
	('00000000-0000-0000-0000-000000000000', '84578bb4-41dc-41f0-8e21-b1c0a2ef15c5', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 21:36:38.120494+00', ''),
	('00000000-0000-0000-0000-000000000000', '90b74860-dd97-460a-8674-d4317d1eb301', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 22:06:28.649281+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd5074e80-bff5-4255-8de5-76179d6ee142', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 22:06:32.831895+00', ''),
	('00000000-0000-0000-0000-000000000000', '904b8b0c-9fcf-46a8-9f20-33ad2a886b11', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-02 22:18:53.316491+00', ''),
	('00000000-0000-0000-0000-000000000000', '4865bf00-ea24-4c9c-8c01-706c571f5c7b', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-02 22:18:59.391258+00', ''),
	('00000000-0000-0000-0000-000000000000', '46cd0fe2-d4cc-4edd-af23-8e15ef1cc648', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 07:03:30.49438+00', ''),
	('00000000-0000-0000-0000-000000000000', '8b43ce9e-3faa-4d4d-94ed-81150dcfc627', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 07:03:30.547283+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a0ae428-3a8a-470f-96a7-18c113dc1e91', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 16:15:58.57793+00', ''),
	('00000000-0000-0000-0000-000000000000', '5c2a408f-a1dd-4fe0-a630-c9110c8de6e6', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 16:15:58.578821+00', ''),
	('00000000-0000-0000-0000-000000000000', '310c5afb-67c7-4517-9072-7b5b677b99c7', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 16:16:04.728606+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ccaccb42-44c8-4719-b091-a01f99cca404', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-03 16:16:04.75914+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fe272c02-bc46-46cf-9ebf-71d69f272c3c', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-03 16:33:56.551388+00', ''),
	('00000000-0000-0000-0000-000000000000', '83a3406b-8a4c-4c52-95fb-ac83d5daa19f', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"xowu@mailinator.com","user_id":"f6cf805c-2c77-4e93-bc3a-46d668cb9b26","user_phone":""}}', '2025-07-03 16:34:05.254505+00', ''),
	('00000000-0000-0000-0000-000000000000', '72db7f04-8183-493c-91fe-de49d874159f', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-03 16:34:18.734661+00', ''),
	('00000000-0000-0000-0000-000000000000', '71a49b77-c821-4f44-aa7c-c6308312a182', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-03 16:55:07.098514+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fab04b76-d068-4d60-b089-720b24ef2d37', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-03 16:55:19.387345+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f0898b13-b700-493b-9d73-a1c474632585', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 04:59:49.969071+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c71fea34-4f55-4b5d-b181-bd483ff41a9c', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 04:59:49.970702+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3e0d520-ff61-4499-9802-1996f091e632', '{"action":"token_refreshed","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 06:15:34.445978+00', ''),
	('00000000-0000-0000-0000-000000000000', '1065df39-aa05-4e89-8fc2-7af7b4e637af', '{"action":"token_revoked","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-07-04 06:15:34.449306+00', ''),
	('00000000-0000-0000-0000-000000000000', '035f1962-c13e-4723-9604-d9d77f351e14', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:22:40.033048+00', ''),
	('00000000-0000-0000-0000-000000000000', '47127cce-4ba2-44bf-b4d5-27e6ff813699', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:25:28.200975+00', ''),
	('00000000-0000-0000-0000-000000000000', 'db4ed3df-e448-436b-ba50-c1eefe953ade', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:28:01.205074+00', ''),
	('00000000-0000-0000-0000-000000000000', '140c300a-2065-4a91-b76b-c8b6e380ccee', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:28:09.268681+00', ''),
	('00000000-0000-0000-0000-000000000000', '278fa75d-8d06-486f-afba-4f38f2c54032', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:28:10.141556+00', ''),
	('00000000-0000-0000-0000-000000000000', '141648ef-7fbe-4c1d-9de8-3e0d4152566f', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:28:34.7688+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ebef603e-ab0a-42cc-bb8d-b26b6ca2f221', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:28:35.523595+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ce7432be-7044-4b84-85dc-a3830376079a', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:28:38.693558+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ca892468-d2e4-420a-bf3a-5e2d1af05bd2', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:28:39.984544+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f94bdb72-be4c-4e5a-a19d-c37f754bc0e0', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:28:47.744358+00', ''),
	('00000000-0000-0000-0000-000000000000', '0a3f28d9-e414-4e9e-bb98-732080448515', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:32:08.132025+00', ''),
	('00000000-0000-0000-0000-000000000000', '32c56ec2-4a20-4d0c-a10b-cee3080210bc', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:32:53.028583+00', ''),
	('00000000-0000-0000-0000-000000000000', '19e6409c-0329-47db-91ae-9fb41f5be528', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:33:14.16669+00', ''),
	('00000000-0000-0000-0000-000000000000', '2131c7e1-2749-4130-b78e-29f080f686ad', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:33:17.291685+00', ''),
	('00000000-0000-0000-0000-000000000000', '29a881ec-4993-4994-aab0-102144118906', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:33:56.879968+00', ''),
	('00000000-0000-0000-0000-000000000000', '2adaec77-ceb3-4303-a34f-a158bdbd62a5', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:34:03.317036+00', ''),
	('00000000-0000-0000-0000-000000000000', '4ccccd86-7166-4415-b27d-f4a8f30bf4c8', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:35:32.610628+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bfd9157c-23a1-4a13-bc45-c4b9b955dc64', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:35:48.535053+00', ''),
	('00000000-0000-0000-0000-000000000000', '2d43ff4b-d3b5-4360-ac9c-da755829374d', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:38:47.354942+00', ''),
	('00000000-0000-0000-0000-000000000000', '82b36928-783e-4d97-b8e3-ca63baabd1de', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-04 06:39:01.181265+00', ''),
	('00000000-0000-0000-0000-000000000000', '204f3981-e91a-4742-bec0-1f969a3f62a8', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:39:30.766521+00', ''),
	('00000000-0000-0000-0000-000000000000', '6402dd97-c849-43e7-bf25-c045a87ef9ad', '{"action":"logout","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-07-04 06:41:10.061621+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b334172b-3c52-4ed1-a559-cde6c359cfe3', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-04 06:41:14.656264+00', ''),
	('00000000-0000-0000-0000-000000000000', '9b3039d1-e100-4884-9e09-3119d12bf609', '{"action":"user_recovery_requested","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-07-04 06:41:56.122768+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c8418d5b-a4d2-4a8c-ba9b-758d930301a4', '{"action":"login","actor_id":"bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1","actor_username":"danielghirasim@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-07-04 06:45:20.230542+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('ee95f3f8-4de3-4f77-a824-761f7c0b60e6', 'e4237f39-3ea0-4bc2-b9a2-311b65c6bf23', '2f148b6e-1001-47ce-bc10-38b44c04982e', 's256', '6fg6ccArtxELhDut7FbzADnkjpU1dFbtSE8u2iW0Kk4', 'magiclink', '', '', '2025-07-01 12:03:04.265328+00', '2025-07-01 12:03:31.778596+00', 'magiclink', '2025-07-01 12:03:31.778577+00'),
	('6625277a-d8be-4130-ac70-9b7e8bb9b92f', 'e20c21ee-89a1-470d-b2fb-84cdb6b44703', 'faac596c-7340-4153-83b0-d0b8fee17c1e', 's256', 'Ohm3Pf-Rw3sHRZy-kreAxD5kzVtvbuRbc2pO4yxPrVk', 'magiclink', '', '', '2025-07-01 12:05:13.590939+00', '2025-07-01 12:05:32.726853+00', 'magiclink', '2025-07-01 12:05:32.726793+00'),
	('2e4133d2-8c32-49ee-b615-d60cb15077ec', '6d0fa95c-ded4-41d8-9a49-3c9af6fe01a5', '43ea6b0f-d8aa-4199-b7fb-e87894922b48', 's256', '1cT47CKGmTCVYqdjbINGybjRDlEKX2sv0tqYMBsmRSo', 'magiclink', '', '', '2025-07-01 12:07:25.709186+00', '2025-07-01 12:07:30.584015+00', 'magiclink', '2025-07-01 12:07:30.583995+00'),
	('a6a53646-7d76-466f-ae0a-4aa9af010d15', '75a4e7f1-35bd-4614-85ea-fb338771390e', '528cfb04-7caa-48af-a044-363c92534fff', 's256', 'h2ECYNSBafezYHjDf0BLstRq8YKvGwdQy-V8GPZo_EI', 'magiclink', '', '', '2025-07-01 12:08:27.897197+00', '2025-07-01 12:08:36.789489+00', 'magiclink', '2025-07-01 12:08:36.789467+00'),
	('dbde70e0-d60d-40ff-8595-0fe048800b1a', '743d516d-6c64-47a6-947d-c0607251b0c7', 'edd0e8ef-5633-4740-b857-01a9819c4943', 's256', 'YESKiYs9ZoDd01a2VfTFuQB6KOOI6OivJalSP4VkgGA', 'magiclink', '', '', '2025-07-01 12:10:02.94175+00', '2025-07-01 12:10:13.64225+00', 'magiclink', '2025-07-01 12:10:13.642233+00'),
	('bc5ebb9c-950d-4069-85d5-c539f03135d2', '41458274-1a7e-4346-8dd0-763bbed29a42', '60a6e4a6-76ae-4a05-a0b2-5d37973c97c4', 's256', '3mq6aX_Wz5AY8G4lMpnYWprBUqOUFuh15s28gIKdXwU', 'magiclink', '', '', '2025-07-01 12:13:12.870605+00', '2025-07-01 12:13:18.049558+00', 'magiclink', '2025-07-01 12:13:18.049536+00'),
	('5c5ba252-71da-4c5d-b07f-3f6d0d4e893f', '4b0be4c2-0abb-4bd5-9049-2bc14be5411a', '5aba6125-8913-4a22-9e9e-15ce5fc55eb1', 's256', 'lDSdL8qiMqKJlMbg5NiJGHavGMi4MaoUwmXJZTls85Y', 'magiclink', '', '', '2025-07-01 12:16:31.697673+00', '2025-07-01 12:16:35.362611+00', 'magiclink', '2025-07-01 12:16:35.362594+00'),
	('e3146d36-80f6-4099-a345-30ec685eb43a', '84a93212-c261-4960-9844-21830ca8e288', '931512bd-e90d-412e-843b-ec236b4e83a4', 's256', '_VCMSN5OVjV2LCepHDQJmoSg1s3mmnzGnGDHGurcXEE', 'magiclink', '', '', '2025-07-01 12:19:34.846507+00', '2025-07-01 12:19:38.350276+00', 'magiclink', '2025-07-01 12:19:38.350258+00'),
	('40966888-055e-4139-a1f3-4ac04f8b1e98', 'a8275e48-293d-49d6-af3c-420d646b1dcc', 'a06d9bc4-0d4b-4c38-b301-2b156cfb0649', 's256', 'J969roltOL9knFBVuDpSBmZRQ05KmACoiah3AvL3ixc', 'magiclink', '', '', '2025-07-01 12:22:45.326536+00', '2025-07-01 12:22:49.820385+00', 'magiclink', '2025-07-01 12:22:49.820363+00'),
	('8c3c8f28-962a-470c-8dee-00abc249cdb7', '465274b1-3903-4fb1-948c-19a06b679738', 'a0552a02-9650-4e49-87c4-c041966d22cc', 's256', 'O3Vw7pN7qvHhES_UOzlhYPxQNn6QZKR2JZrQPW-n4zE', 'magiclink', '', '', '2025-07-01 12:24:28.108776+00', '2025-07-01 12:24:33.832992+00', 'magiclink', '2025-07-01 12:24:33.832974+00'),
	('16d5619c-82fa-480c-811e-085d69daa260', '9f98a004-1daf-4394-bd65-a249ca5d157d', '6655a0b7-e311-4a1a-948c-54f2f691d4a9', 's256', 'p1tsHxUQj86uPr3ANL3gtJ59r0GAWim7SNaoTHoBA3U', 'magiclink', '', '', '2025-07-01 13:01:30.945176+00', '2025-07-01 13:01:33.659288+00', 'magiclink', '2025-07-01 13:01:33.659258+00'),
	('3690b9b6-ecb8-43e9-ab5d-df0ccf55dd94', '1101d80f-2ef3-4d69-9965-601c016ae381', '67c9ef1b-d7a0-43ae-8f4a-f74ca7a82b20', 's256', 'aI4uarOBgTgdkpBt1z7OtYaYXjcpwK95gEgdxG4Fo7A', 'magiclink', '', '', '2025-07-01 13:14:10.964751+00', '2025-07-01 13:14:12.946785+00', 'magiclink', '2025-07-01 13:14:12.946764+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', 'authenticated', 'authenticated', 'danielghirasim@gmail.com', '$2a$10$iFf3QWpBItEonmoZlzvz9u5zvzibDEERs/XOpZKlDBb27jC2lsqWC', '2025-06-30 15:03:24.480461+00', NULL, '', NULL, '750f226b8f2f0d509f060c052e0f8e4a0bc35d07d502f53ee83f4cef', '2025-07-04 06:41:56.122268+00', '', '', NULL, '2025-07-04 06:45:20.231859+00', '{"tenants": ["packt", "oddmonkey"], "provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-06-30 15:03:24.47471+00', '2025-07-04 06:45:20.234351+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', '{"sub": "bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1", "email": "danielghirasim@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-06-30 15:03:24.477176+00', '2025-06-30 15:03:24.477476+00', '2025-06-30 15:03:24.477476+00', 'bc417083-a2c0-4379-b517-9088ca12bbc7');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('05c5ffb0-18f1-449b-a849-1881fcc990dc', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', '2025-07-04 06:45:20.232011+00', '2025-07-04 06:45:20.232011+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('05c5ffb0-18f1-449b-a849-1881fcc990dc', '2025-07-04 06:45:20.2347+00', '2025-07-04 06:45:20.2347+00', 'password', 'ec268242-ece3-4ce9-a9ea-86023e9a1c40');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") VALUES
	('6a6db272-3a38-49c9-8a59-8e79dd18bb83', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', 'recovery_token', '750f226b8f2f0d509f060c052e0f8e4a0bc35d07d502f53ee83f4cef', 'danielghirasim@gmail.com', '2025-07-04 06:41:56.125773', '2025-07-04 06:41:56.125773');


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 147, 'pncp5akhxhdg', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1', false, '2025-07-04 06:45:20.233071+00', '2025-07-04 06:45:20.233071+00', NULL, '05c5ffb0-18f1-449b-a849-1881fcc990dc');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."service_users" ("id", "created_at", "full_name", "supabase_user") VALUES
	(1, '2025-07-02 12:46:29.47627+00', 'Daniel Ghirasim', 'bcb385f8-e6b7-4b68-ba10-e3f1f6ea0ca1');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenants" ("id", "created_at", "name", "domain") VALUES
	('packt', '2025-07-02 12:28:48.246513+00', 'Packt Publishing', 'packt.local'),
	('activenode', '2025-07-02 12:29:12.684739+00', 'activenode Education', 'activenode.learn'),
	('oddmonkey', '2025-07-02 12:29:30.828654+00', 'OddMonkey Inc', 'oddmonkey.inc');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2025-07-02 13:04:34.253538+00', 1, 'packt'),
	(2, '2025-07-02 13:04:44.515888+00', 1, 'oddmonkey');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 147, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
