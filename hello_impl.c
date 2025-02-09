extern int IncVec (double *vector, int n) {
	int i;
	for (i = 0; i < n; ++i) {
		vector[i] = vector[i] + 1;
	}
	return i;
}
