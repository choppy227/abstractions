CREATE TABLE IF NOT EXISTS erc20.tokens (
	contract_address bytea UNIQUE,
	symbol text,
	decimals integer
);

BEGIN;
DELETE FROM erc20.tokens *;


COPY erc20.tokens (contract_address, symbol, decimals) FROM stdin;
\\x4200000000000000000000000000000000000006	WETH	18
\\xda10009cbd5d07dd0cecc66161fc93d7c9000da1	DAI	18
\\x68f180fcce6836688e9084f035309e29bf0a2095	WBTC	8
\\x94b008aa00579c1307b0ef2c499ad98a8ce58e58	USDT	6
\\x8700daec35af8ff88c16bdf0418774cb3d7599b4	SNX	18
\\x350a791Bfc2C21F9Ed5d10980Dad2e2638ffa7f6	LINK	18
\\xb548f63d4405466b36c0c0ac3318a22fdcec711a	RGT	18
\\xab7badef82e9fe11f6f33f87bc9bc2aa27f2fcb5	MKR	18
\\x6fd9d7ad17242c41f7131d257212c54a0e816691	UNI	18
\\x7fb688ccf682d58f86d7e38e03f9d22e7705448b	RAI	18
\\x7f5c764cbc14f9669b88837ca1490cca17c31607	USDC	6
\\x8c6f28f2F1A3C87F0f938b96d27520d9751ec8d9	sUSD	18
\\xe405de8f52ba7559f9df3c368500b6e6ae6cee49	sETH	18
\\xc5db22719a06418028a40a9b5e9a7c02959d0d08	sLINK	18
\\x298b9b95708152ff6968aafd889c6586e9169f1d	sBTC	18
\\x25D8039bB044dC227f741a9e381CA4cEAE2E6aE8	hUSDC	6
\\x2057c8ecb70afd7bee667d76b4cd373a325b1a20	hUSDT	6
\\x56900d66d74cb14e3c86895789901c9135c95b16	hDAI	18
\\xe38faf9040c7f09958c638bbdb977083722c5156	hETH	18
\\x3666f603cc164936c1b87e207f36beba4ac5f18a	hUSDC	6
\\xa492d3596e8391e376d4f5a5cba5c077b890b094	hWBTC	8
\\x5da345c942cf804b306d552d343f92b69160b5df	HOP-LP-USDC	18
\\x2e17b8193566345a2dd467183526dedc42d2d5a8	HOP-LP-USDC	18
\\xf753a50fc755c6622bbcaa0f59f0522f264f006e	HOP-LP-USDT	18
\\x22d63a26c730d49e5eab461e4f5de1d8bdf89c92	HOP-LP-DAI	18
\\x5C2048094bAaDe483D0b1DA85c3Da6200A88a849	HOP-LP-ETH	18
\\x07ce97eb3f375901d26ec1e32144292318839802	HOP-LP-WBTC	18
\\x60daec2fc9d2e0de0577a5c708bcadba1458a833	bathDAI	18
\\xb0be5d911e3bd4ee2a8706cf1fac8d767a550497	bathETH	18
\\x7571cc9895d8e997853b1e0a1521ebd8481aa186	bathWBTC	18
\\xe0e112e8f33d3f437d1f895cbb1a456836125952	bathUSDC	18
\\xffbd695bf246c514110f5dae3fa88b8c2f42c411	bathUSDT	18
\\xeb5f29afaaa3f44eca8559c3e8173003060e919f	bathSNX	18
\\x8f69783db37905f026cf62223c9957ae0ca90a38	UEPC	0
\\x96db852d93c2fea0f447d6ec22e146e4e09caee6	JPYC	18
\\x8f69ee043d52161fd29137aedf63f5e70cd504d5	DOG	18
\\x11b6b63515ab0d04a4b28a316486820cf5012ddf	f6-USDC	18
\\x7c17611ed67d562d1f00ce82eebd39cb7b595472	THIRM	18
\\xe0bb0d3de8c10976511e5030ca403dbf4c25165b	0xBTC	8
\\xb04095d45a98dbda07564d124b3cdb7f0d88c696	Demo	18
\\x588abc030b08819c4c284189ce269a8fb4efe439	quotMKRquot	18
\\xe3c332a5dce0e1d9bc2cc72a68437790570c28a4	VEE	18
\\xb27e3eab7526bf721ea8029bfcd3fdc94c4f8b5b	ODOGE	18
\\xdeaddeaddeaddeaddeaddeaddeaddeaddead0000	ETH	18
\\x9bcef72be871e61ed4fbbc7630889bee758eb81d	rETH	18
\\xc40f949f8a4e094d1b49a23ea9241d289b7b2819	LUSD	18
\\xe88d846b69020680b2deeea58511636250c42707	OVM-TEST	18
\\xf98dcd95217e15e05d8638da4c91125e59590b07	KROM	18
\\xc7b04dc5a2644522a0c58c107346b5e3a63600b0	SACRO	18
\.


COMMIT;

CREATE INDEX IF NOT EXISTS tokens_contract_address_decimals_idx ON erc20.tokens USING btree (contract_address) INCLUDE (decimals);
CREATE INDEX IF NOT EXISTS tokens_symbol_decimals_idx ON erc20.tokens USING btree (symbol) INCLUDE (decimals);
