const request = require('supertest');
const express = require('express');
const app = require('../app');

describe('GET /', () => {
    it('Debe responder con el mensaje de Hola Mundo', async () => {
        const res = await request(app).get('/');
        expect(res.statusCode).toBe(200);
        expect(res.text).toContain('Hola Mundo desde Express ITLA');
    });
});
