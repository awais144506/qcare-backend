-- Ensure the 'hospital' table exists
CREATE TABLE IF NOT EXISTS hospital
(
    id          UUID PRIMARY KEY,
    name        VARCHAR(255)        NOT NULL,
    address     VARCHAR(255)        NOT NULL,
    phone       VARCHAR(50)         NOT NULL,
    sub_domain   VARCHAR(255) UNIQUE NOT NULL,
    email       VARCHAR(255) UNIQUE NOT NULL,
    status      VARCHAR(20)         NOT NULL,
    created_at  TIMESTAMP           NOT NULL,
    updated_at  TIMESTAMP           NOT NULL
);

------------------------------------------------------------
-- Seed Data (Fixed UUID Lengths)
------------------------------------------------------------

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'f3c1e2d4-9a7b-4a23-8ccb-9b61be23aa01',
       'Shaukat Khanum Memorial Cancer Hospital',
       'Johar Town, Lahore',
       '+92-42-3590-5000',
       'skmch',
       'info@skmch.org.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'f3c1e2d4-9a7b-4a23-8ccb-9b61be23aa01');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'a7e9f21b-2cd1-4468-b52c-1476338fa102',
       'Aga Khan University Hospital',
       'Stadium Road, Karachi',
       '+92-21-3493-0051',
       'agakhan',
       'contact@aku.edu',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'a7e9f21b-2cd1-4468-b52c-1476338fa102');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'de59fb3a-0e84-43e8-a8d0-f6b2ec8b6f03',
       'Punjab Institute of Cardiology',
       'Jail Road, Lahore',
       '+92-42-9920-3020',
       'pic',
       'info@pic.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'de59fb3a-0e84-43e8-a8d0-f6b2ec8b6f03');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'b3189b77-22b3-49ed-94e2-545e4ebc6704',
       'Services Hospital Lahore',
       'Ghaus-ul-Azam Road, Lahore',
       '+92-42-9920-9350',
       'services',
       'contact@serviceshospital.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'b3189b77-22b3-49ed-94e2-545e4ebc6704');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'c8fb5698-cc09-46fc-8bb1-6e5d0eb0ef05',
       'Lady Reading Hospital',
       'Peshawar Cantt, Peshawar',
       '+92-91-921-1441',
       'lrh',
       'info@lrh.gov.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'c8fb5698-cc09-46fc-8bb1-6e5d0eb0ef05');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '9fd2d40a-9b74-46d1-862c-c8cfe9ac2b06',
       'Holy Family Hospital',
       'Satellite Town, Rawalpindi',
       '+92-51-9290-300',
       'holyfamily',
       'contact@holyfamily.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '9fd2d40a-9b74-46d1-862c-c8cfe9ac2b06');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'fae0af24-5282-4a9c-9e91-77d66c828707',
       'Nishtar Hospital Multan',
       'Nishtar Road, Multan',
       '+92-61-9210-270',
       'nishtar',
       'info@nhm.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'fae0af24-5282-4a9c-9e91-77d66c828707');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'e4f55d9a-0c66-4fbb-82bc-106f741bb908',
       'Jinnah Hospital Lahore',
       'Usmani Road, Lahore',
       '+92-42-9923-1440',
       'jinnah',
       'contact@jhl.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'e4f55d9a-0c66-4fbb-82bc-106f741bb908');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '506cb51e-2240-49ad-8788-2ef3fdf1bb09',
       'Punjab Institute of Neurosciences',
       'Ferozepur Road, Lahore',
       '+92-42-9920-6260',
       'pins',
       'info@pins.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '506cb51e-2240-49ad-8788-2ef3fdf1bb09');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '710fc1cd-9f33-43a9-b71e-af6bc0c3aa10',
       'Civil Hospital Karachi',
       'Baba-e-Urdu Road, Karachi',
       '+92-21-9921-5750',
       'civilkarachi',
       'contact@chk.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '710fc1cd-9f33-43a9-b71e-af6bc0c3aa10');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '39b3f2f1-c541-48e6-a4fa-4b36636d9901',  -- FIXED: Removed last '1'
       'Benazir Bhutto Hospital',
       'Murree Road, Rawalpindi',
       '+92-51-9290-300',
       'bbh',
       'info@bbh.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '39b3f2f1-c541-48e6-a4fa-4b36636d9901');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'd1a29e5c-1c33-4c05-9da9-d66d6e8c1211',  -- FIXED: Removed last '2'
       'Gulab Devi Chest Hospital',
       'Ferozepur Road, Lahore',
       '+92-42-9923-1230',
       'gulabdevi',
       'contact@gulabdevi.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'd1a29e5c-1c33-4c05-9da9-d66d6e8c1211');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT 'a0f9fab3-577a-4fc3-b6cb-07459f909b21',  -- FIXED: Removed last '3'
       'Bolan Medical Complex Hospital',
       'Quetta Cantt, Quetta',
       '+92-81-921-3070',
       'bmc',
       'info@bmc.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = 'a0f9fab3-577a-4fc3-b6cb-07459f909b21');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '1f6df43a-91b2-41a2-8ad0-2f6c7bbc3b21',  -- FIXED: Removed last '4'
       'Bahawal Victoria Hospital',
       'Circular Road, Bahawalpur',
       '+92-62-925-5430',
       'bvh',
       'contact@bvh.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '1f6df43a-91b2-41a2-8ad0-2f6c7bbc3b21');

INSERT INTO hospital (id, name, address, phone, sub_domain, email, status, created_at, updated_at)
SELECT '77b78024-df1d-4c9d-829d-d6e2cb554215',
       'Sheikh Zayed Hospital',
       'University Avenue, Rahim Yar Khan',
       '+92-68-9230-166',
       'sheikhzayed',
       'info@szhrk.pk',
       'ACTIVE',
       NOW(),
       NOW()
WHERE NOT EXISTS (SELECT 1 FROM hospital WHERE id = '77b78024-df1d-4c9d-829d-d6e2cb554215');