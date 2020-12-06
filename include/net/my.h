extern char face_addr[16];
//extern int set_my_rto = 0;

static inline int is_adhoc(struct tcp_sock *tp)
{
	char sip[16];
	snprintf(sip, 16, "%pI4", &((struct inet_sock *)tp)->inet_saddr);
	return strcmp(sip, face_addr);
}
