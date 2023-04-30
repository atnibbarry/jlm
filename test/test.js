const app = require('../app');
const supertest = require('supertest');
const { expect } = require('chai');

const assert = require('assert');

describe('Test de réussite', function() {
  it('devrait réussir', function() {
    assert.equal(2+2, 4);
  });
});

