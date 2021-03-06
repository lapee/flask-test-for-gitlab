import unittest

from helloworld import app


class BasicTestCase(unittest.TestCase):
    def test_index(self):
        tester = app.test_client(self)
        response = tester.get('/', content_type='html/text')
        self.assertEqual(response.data, b'Hello pooq')

if __name__ == '__main__':
    unittest.main()