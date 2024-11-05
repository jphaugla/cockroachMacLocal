CREATE TABLE public.stock (id UUID primary key default gen_random_uuid()
                          ,item JSONB);
