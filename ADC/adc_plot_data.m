clear all, close all, clc
v1 = csvread('data_raw-stm32_05.txt');

plot(v1, 'pg-');
grid on;