
% Samples
B = [2 5 12];
A = [1 4 14 20];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [100];
A = [1 100];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 0];
A = [1 100];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

% Query

B = [2];
A = [1 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 0];
A = [1 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1];
A = [1 3 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 0];
A = [1 3 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 0 0];
A = [1 3 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 0];
A = [1 2 10];
figure; pzplot(tf(B, A));
figure; freqs(B, A);

B = [1 -3 2];
A = [1 3 2];
figure; pzplot(tf(B, A));
figure; freqs(B, A);