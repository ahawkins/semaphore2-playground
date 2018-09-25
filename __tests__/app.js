const supertest = require('supertest');
const app = require('../app');

it('works', async function() {
  return supertest(app)
    .get('/')
    .expect(200)
    .then(function(response) {
      expect(response.text).toBe('Hello World');
    });
});
