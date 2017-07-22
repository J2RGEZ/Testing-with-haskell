import TestExample
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
  describe "Addition" $ do
    it "1 + 1 is greater than 1" $ do
      (1 + 1) > 1 `shouldBe` True
    it "2 + 2 is 4" $ do
      (2 + 2) `shouldBe` 4
    it "15 divided by 3 is 5" $ do
      dividedBy 15 3 `shouldBe` (5, 0)
    it "22 divided by 5 is 4, remainder 2" $ do
      dividedBy 22 5 `shouldBe` (4,2)
    --PROPERTY Test
    it "x + 1 is always greater than x" $ do
      property $ \x -> x + 1 > (x :: Int)
