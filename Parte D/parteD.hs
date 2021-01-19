-- Mostre, em Haskell, que 3*a e a + a + a são isomórficos.

-- Demonstação:

-- 2*a = a + a
-- (2, a) = Either a a
-- (Bool, a) = Either a a

-- 3*a = a + a + a
-- (3, a) = Either a (Either a a)
-- (Either Bool (), a) = Either a (Either a a )

ida :: (Either Bool (), a) -> Either a (Either a a)
-- travei aqui...
ida _ = undefined

volta :: Either a (Either a a ) -> (Either Bool (), a)
-- travei aqui...
volta _ = undefined