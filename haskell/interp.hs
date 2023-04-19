
-- Floating-point Approximation (II)
-- 6 kyu
-- 04 / 20 / 2023
interp :: (Double -> Double) -> Double -> Double -> Int -> [Double]
interp f l u n = map (\n -> fromInteger (floor $ f n * 100) / 100) (init [l, (l+diff) .. u])
         where diff = (u - l) / fromIntegral n