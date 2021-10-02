/* eslint-disable no-undef */
const computation = require('../src/computation');

describe('test computation.js', () => {
  describe('test sum function', () => {
    test('should test sum default parameter values', () => {
      expect(computation.sum()).toBe(0);
    });

    test('should test sum actual values', () => {
      expect(computation.sum(1, 1)).toBe(2);
    });
  });

  describe('test difference function', () => {
    test('should test difference default parameter values', () => {
      expect(computation.difference()).toBe(0);
    });

    test('should test difference actual values', () => {
      expect(computation.difference(2, 1)).toBe(1);
    });
  });

  describe('test multiply function', () => {
    test('should test multiply default parameter values', () => {
      expect(computation.multiply()).toBe(0);
    });

    test('should test multiply actual values', () => {
      expect(computation.multiply(2, 1)).toBe(2);
    });
  });
});
