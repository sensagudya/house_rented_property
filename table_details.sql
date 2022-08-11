#create table named property

CREATE TABLE IF NOT EXISTS public.property
(
    unit_number integer NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    type character(99999) COLLATE pg_catalog."default",
    view character(99999) COLLATE pg_catalog."default",
    location character(99999) COLLATE pg_catalog."default" NOT NULL,
    price integer NOT NULL,
    min_night integer DEFAULT 1,
    CONSTRAINT property_pkey PRIMARY KEY (unit_number)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.property
    OWNER to postgres;

#insert data to table property

INSERT INTO property (unit_number,name,type,view,location,price,min_night)
VALUES ('96423','Mindo House','house','city','Yogyakarta','250','7'),
('13984','Serenity Cottage','cottage','beach','Bali','156','4'),
('685432','Conestoga House','cabin','lake','Tahoma','156','4'),
('76232','Luxury Manhattan Apt with Modern Decor','apartment','city','New York','250','30'),
('31356','Spectacular Large House with Pool Table and Hot Tub','house',NULL,'Lake Tahoe','357','5'),
('32658','Luxury 5 Bedroom Hawaiian Villa','villa','beach','Poipu','4500','5'),
('79521','1 Bedroom Condo with Sunny Exposure','condominium',NULL,'Miami','105','2'),
('16834','Affordable Condo with Remodeled Kitchen','condominium','beach','Miami','90','3')
