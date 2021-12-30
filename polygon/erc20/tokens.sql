CREATE TABLE IF NOT EXISTS erc20.tokens (
	contract_address bytea UNIQUE,
	symbol text,
	decimals integer
);

BEGIN;
DELETE FROM erc20.tokens *;


COPY erc20.tokens (contract_address, symbol, decimals) FROM stdin;
\\x2a93172c8dccbfbc60a39d56183b7279a2f647b4	$DG	18
\\xd6df932a45c0f255f85145f286ea0b292b21c90b	AAVE	18
\\xc3fdbadc7c795ef1d6ba111e06ff8f16a20ea539	ADDY	18
\\x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3	BAL	18
\\x92868a5255c628da08f550a858a802f5351c5223	BRIDGE	18
\\x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c	COMP	18
\\x172370d5cd63279efa6d502dab29171933a610af	CRV	18
\\x8f3cf7ad23cd3cadbd9735aff958023239c6a063	DAI	18
\\x85955046df4668e1dd369d2de9f3aeb98dd2a369	DPI	18
\\x65ad6a2288b2dd23e466226397c8f5d1794e58fc	GFX	18
\\x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7	GHST	18
\\x5fe2b58c013d7601147dcdd68c143a77499f5531	GRT	18
\\x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39	LINK	18
\\xa3fa99a148fa48d14ed51d610c367c61876997f1	miMATIC	18
\\xf501dd45a1198c2e1b5aef5314a68b9006d842e0	MTA	18
\\x1796ae0b0fa4862485106a0de9b654efe301d0b2	PMON	18
\\x580a84c73811e1839f75d86d75d88cca0c241ff4	QI	18
\\x831753dd7087cac61ab5644b308642cc1c33dc13	QUICK	18
\\xdbf31df14b66535af65aac99c32e9ea844e14501	renBTC	8
\\x50b728d8d964fd00c2d0aad81718b71311fef68a	SNX	18
\\x9e2d266d6c90f6c0d80a88159b15958f7135b8af	SSX	18
\\x0b3f868e0be5597d5db7feb59e1cadbb0fdda50a	SUSHI	18
\\xdf7837de1f2fa4631d716cf2502f8b230f1dcc32	TEL	2
\\x8eef5a82e6aa222a60f009ac18c24ee12dbf4b41	TXL	18
\\xa6516f07c5fc7169fca3149b188c37ca617f1d41	ULTI	18
\\xb33eaad8d922b1083446dc23f610c2567fb5180f	UNI	18
\\x2791bca1f2de4661ed88a30c99a7a9449aa84174	USDC	6
\\xc2132d05d31c914a87c6611c10748aeb04b58e8f	USDT	6
\\x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6	WBTC	8
\\x7ceb23fd6bc0add59e62ac25578270cff1b9f619	WETH	18
\\x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270	WMATIC	18
\\xda537104d6a5edd53c6fbba9a898708e465260b6	YFI	18
\\x1a13F4Ca1d028320A707D99520AbFefca3998b7F	amUSDC	6
\\x60D55F02A771d515e077c9C2403a1ef324885CeC	amUSDT	6
\\x1ee6470cd75d5686d0b2b90c0305fa46fb0c89a1	idleUSDCYield	18
\\x42d61d766b85431666b39b89c43011f24451bff6	PSP	18
\\x1d2a0E5EC8E5bBDCA5CB219e649B565d8e5c3360	amAAVE	18
\\x27F8D03b3a2196956ED754baDc28D73be8830A6e	amDAI	18
\\x5c2ed810328349100A66B82b78a1791B101C9D61	amWBTC	8
\\x28424507fefb6f7f8E9D3860F56504E4e5f5f390	amWETH	18
\\x8dF3aad3a84da6b69A4DA8aeC3eA40d9091B2Ac4	amWMATIC	18
\\x1c313e9d0d826662F5CE692134D938656F681350	variableDebtmAAVE	18
\\x75c4d1Fb84429023170086f06E682DcbBF537b7d	variableDebtmDAI	18
\\x248960A9d75EdFa3de94F7193eae3161Eb349a12	variableDebtmUSDC	6
\\x8038857FD47108A07d1f6Bf652ef1cBeC279A2f3	variableDebtmUSDT	6
\\xF664F50631A6f0D72ecdaa0e49b0c019Fa72a8dC	variableDebtmWBTC	8
\\xeDe17e9d79fc6f9fF9250D9EEfbdB88Cc18038b5	variableDebtmWETH	18
\\x59e8E9100cbfCBCBAdf86b9279fa61526bBB8765	variableDebtmWMATIC	18
\.


COMMIT;

CREATE INDEX IF NOT EXISTS tokens_contract_address_decimals_idx ON erc20.tokens USING btree (contract_address) INCLUDE (decimals);
CREATE INDEX IF NOT EXISTS tokens_symbol_decimals_idx ON erc20.tokens USING btree (symbol) INCLUDE (decimals);
