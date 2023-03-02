import unittest
import fpcalc

class TestRecipeReturn(unittest.TestCase):

    def test_italian(self):
        recipes = fpcalc.get_recipes("hudsongriffith@gmail.com")
        self.assertEqual(recipes['status'], 'success')
        self.assertEqual(recipes['recipe_result'], 'Creamy Tortellini Soup with Sausage')

    def test_mexican(self):
        recipes = fpcalc.get_recipes("michael.t@gmail.com")
        self.assertEqual(recipes['status'], 'success')
        self.assertEqual(recipes['recipe_result'], 'One-Skillet Mexican Quinoa')

    def test_nonexistent_user(self):
        with self.assertRaises(IndexError):
            fpcalc.get_recipes("nonexist0000000@gmail.com")

if __name__ == '__main__':
    unittest.main()