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
\\x6d5f5317308C6fE7D6CE16930353a8Dfd92Ba4D7	ABI	9
\\xc3fdbadc7c795ef1d6ba111e06ff8f16a20ea539	ADDY	18
\\x9a71012b13ca4d3d0cdc72a177df3ef03b0e76a3	BAL	18
\\x2f800db0fdb5223b3c3f354886d907a671414a7f	BCT	18
\\x92868a5255c628da08f550a858a802f5351c5223	BRIDGE	18
\\xea4040b21cb68afb94889cb60834b13427cfc4eb	camAAVE	18
\\xe6c23289ba5a9f0ef31b8eb36241d5c800889b7b	camDAI	18
\\xba6273a78a23169e01317bd0f6338547f869e8df	camWBTC	8
\\x0470cd31c8fcc42671465880ba81d631f0b76c1d	camWETH	18
\\x7068ea5255cb05931efa8026bd04b18f3deb8b0b	camWMATIC	18
\\x8505b9d2254a7ae468c0e9dd10ccea3a837aef5c	COMP	18
\\x172370d5cd63279efa6d502dab29171933a610af	CRV	18
\\x8f3cf7ad23cd3cadbd9735aff958023239c6a063	DAI	18
\\xef938b6da8576a896f6E0321ef80996F4890f9c4	DG	18
\\x85955046df4668e1dd369d2de9f3aeb98dd2a369	DPI	18
\\xf28164a485b0b2c90639e47b0f377b4a438a16b1	dQUICK	18
\\x65ad6a2288b2dd23e466226397c8f5d1794e58fc	GFX	18
\\x385eeac5cb85a38a9a07a70c73e0a3271cfb54a7	GHST	18
\\x5fe2b58c013d7601147dcdd68c143a77499f5531	GRT	18
\\xc6C855AD634dCDAd23e64DA71Ba85b8C51E5aD7c	ICE	18
\\x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39	LINK	18
\\xa3fa99a148fa48d14ed51d610c367c61876997f1	miMATIC	18
\\xf501dd45a1198c2e1b5aef5314a68b9006d842e0	MTA	18
\\xd838290e877e0188a4a44700463419ed96c16107	NCT	18
\\x1796ae0b0fa4862485106a0de9b654efe301d0b2	PMON	18
\\x580a84c73811e1839f75d86d75d88cca0c241ff4	QI	18
\\x831753dd7087cac61ab5644b308642cc1c33dc13	QUICK	18
\\x45c32fa6df82ead1e2ef74d17b76547eddfaff89	FRAX	18
\\x104592a158490a9228070e0a8e5343b499e125d0	FRAX (POS)	18
\\x1a3acf6d19267e2d3e7f898f42803e90c9219062	FRAXS	18
\\x3e121107f6f22da4911079845a470757af4e1a1b	FRAXS (POS)	18
\\xdbf31df14b66535af65aac99c32e9ea844e14501	renBTC	8
\\x7d60f21072b585351dfd5e8b17109458d97ec120	sdam3CRV	18
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
\\xc6480da81151b2277761024599e8db2ad4c388c8	xDG	18
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
\\xe840b73e5287865eec17d250bfb1536704b43b21	imUSD	18
\\xdd2af2e723547088d3846841fbdcc6a8093313d6	GOGO	18
\\x1599fE55Cda767b1F631ee7D414b41F5d6dE393d 	MILK	18
\\x767058F11800FBA6A682E73A6e79ec5eB74Fac8c 	jGBP	18
\\xbD1463F02f61676d53fd183C2B19282BFF93D099 	jCHF	18
\\xa926db7a4cc0cb1736d5ac60495ca8eb7214b503 	jSGD	18
\\x486880FB16408b47f928F472f57beC55AC6089d1 	jPHP	18
\\x8ca194A3b22077359b5732DE53373D4afC11DeE3 	jCAD	18
\\x8343091F2499FD4b6174A46D067A920a3b851FF9 	jJPY	18
\\xE6d222caAed5F5DD73A9713AC91C95782e80ACBf 	jCOP	18
\\x197e5d6ccff265ac3e303a34db360ee1429f5d1a 	jSEK	18
\\xCB7F1Ef7246D1497b985f7FC45A1A31F04346133 	jAUD	18
\\x4e3Decbb3645551B8A19f0eA1678079FCB33fB4c	jEUR	18
\\xa0E390e9ceA0D0e8cd40048ced9fA9EA10D71639	DSLA	18
\\x2934b36ca9A4B31E633C5BE670C8C8b28b6aA015	THX	18
\\x84526c812D8f6c4fD6C1a5B68713AFF50733E772	jCNY	18
\\xADAC33f543267c4D59a8c299cF804c303BC3e4aC	MIMO	18
\\xe0b52e49357fd4daf2c15e02058dce6bc0057db4	agEUR	18
\\xe111178a87a3bff0c8d18decba5798827539ae99	EURS	2
\\xA1c57f48F0Deb89f569dFbE6E2B7f46D33606fD4	MANA	18
\\xfe712251173A2cd5F5bE2B46Bb528328EA3565E1	MVI	18
\\x42435F467D33e5C4146a4E8893976ef12BBCE762	DEFI5	18
\\x9fB83c0635De2E815fd1c21b3a292277540C2e8d	BUSD	18
\\x9c2C5fd7b07E95EE044DDeba0E97a665F142394f	1INCH	18
\\xA649325Aa7C5093d12D6F98EB4378deAe68CE23F	BNB	18
\\x24834BBEc7E39ef42f4a75EAF8E5B6486d3F0e57	LUNA	18
\\xc6d54d2f624bc83815b49d9c2203b1330b841ca0	SAND	18
\\x0000000000000000000000000000000000001010	MATIC	18
\\x229b1b6c23ff8953d663c4cbb519717e323a0a84	BLOK	18
\\xede1b77c0ccc45bfa949636757cd2ca7ef30137f	WFIL	18
\\xbbba073c31bf03b8acf7c28ef0738decf3695683	SAND	18
\\x3cef98bb43d732e2f285ee605a8158cde967d219	BAT	18
\\x71b821aa52a49f32eed535fca6eb5aa130085978	0xBTC	8
\\xcf32822ff397ef82425153a9dcb726e5ff61dca7	GMEE	18
\\x8a953cfe442c5e8855cc6c61b1293fa648bae472	PolyDoge	18
\\xaaa5b9e6c589642f98a1cda99b9d024b8407285a	TITAN	18
\\x70c006878a5a50ed185ac4c87d837633923de296	REVV	18
\\xfbdd194376de19a88118e84e279b977f165d01b8	BIFI	18
\\x6ab6d61428fde76768d7b45d8bfeec19c6ef91a8	ANY	18
\\x52ede6bba83b7b4ba1d738df0df713d6a2036b71	0xMR	18
\\xe0339c80ffde91f3e20494df88d4206d86024cdf	ELON	18
\\xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97	DFYN	18
\\x692597b009d13c4049a947cab2239b7d6517875f	UST	18
\\x3ad707da309f3845cd602059901e39c4dcd66473	ETH2x-FLI-P	18
\\x9719d867a500ef117cc201206b8ab51e794d3f82	maUSDC	6
\\x5d47baba0d66083c52009271faf3f50dcc01023c	BANANA	18
\\x4e78011ce80ee02d2c3e649fb657e45898257815	KLIMA	9
\\x20d3922b4a1a8560e1ac99fba4fade0c849e2142	maWETH	18
\\xd85d1e945766fea5eda9103f918bd915fbca63e6	CEL	4
\\x55b1a124c04a54eefdefe5fa2ef5f852fb5f2f26	ETHM	18
\\x1d607faa0a51518a7728580c238d912747e71f7a	DATA	18
\\x8765f05adce126d70bcdf1b0a48db573316662eb	PLA	18
\\x348e62131fce2f4e0d5ead3fe1719bc039b380a9	PYR	18
\\xd55fce7cdab84d84f2ef3f99816d765a2a94a509	CHAIN	18
\\x25788a1a171ec66da6502f9975a15b609ff54cf6	POOL	18
\\xb140665dde25c644c6b418e417c930de8a8a6ac9	ATRI	0
\\xdae5f1590db13e3b40423b5b5c5fbf175515910b	maUSDT	6
\\xaa9654becca45b5bdfa5ac646c939c62b527d394	DINO	18
\\x61299774020da444af134c82fa83e3810b309991	RNDR	18
\\x2b9e7ccdf0f4e5b24757c1e1a80e311e34cb10c7	MASK	18
\\xcbce9f77921c2e90522d438df4c5582f4c617768	AGAcr	18
\\xce829a89d4a55a63418bcc43f00145adef0edb8e	renDOGE	8
\\x2ab4f9ac80f33071211729e45cfc346c1f8446d5	CGG	18
\\x034b2090b579228482520c589dbd397c53fc51cc	VISION	18
\\x6ddb31002abc64e1479fc439692f7ea061e78165	COMBO	18
\\xe0b22e0037b130a9f56bbb537684e6fa18192341	maDAI	18
\\xd93f7e271cb87c23aaa73edc008a79646d1f9912	SOL	9
\\xd8ca34fd379d9ca3c6ee3b3905678320f5b45195	gOHM	18
\\xf287d97b6345bad3d88856b26fb7c0ab3f2c7976	MATIC2x-FLI-P	18
\\xd6ca869a4ec9ed2c7e618062cdc45306d8dbbc14	BTC2x-FLI-P	18
\\xd0660cd418a64a1d44e9214ad8e459324d8157f1	WOOFY	12
\\xaee24d5296444c007a532696aada9de5ce6cafd0	SWD	18
\\xa9536b9c75a9e0fae3b56a96ac8edf76abc91978	PECO	18
\\xa2ca40dbe72028d3ac78b5250a8cb8c404e7fb8c	FEAR	18
\\x8c92e38eca8210f4fcbf17f0951b198dd7668292	DHT	18
\\x8bb30e0e67b11b978a5040144c410e1ccddcba30	ZCN	10
\\x840195888db4d6a99ed9f73fcd3b225bb3cb1a79	SX	18
\\x752d59604d72b6dc44196f4a39a3f07779417407	mETHMOON	18
\\x51869836681bce74a514625c856afb697a013797	GENESIS	18
\\x4e830f67ec499e69930867f9017aeb5b3f629c73	ODDZ	18
\\x23d29d30e35c5e8d321e1dc9a8a61bfd846d4c5c	HEX	8
\\x1c954e8fe737f99f68fa1ccda3e51ebdb291948c	KNC	18
\\x1b815d120b3ef02039ee11dc2d33de7aa4a8c603	WOO	18
\\x130ce4e4f76c2265f94a961d70618562de0bb8d2	iBTC-FLI-P	18
\\x11cd37bb86f65419713f30673a480ea33c826872	WETH	18
\\xE06Bd4F5aAc8D0aA337D13eC88dB6defC6eAEefE	IXT	18
\\x9c78ee466d6cb57a4d01fd887d2b5dfb2d46288f	MUST	18
\\xb3b681dee0435ecc0a508e40b02b3c9068d618cd	YAM	18
\\xce899f26928a2b21c6a2fddd393ef37c61dba918	MOCA	18
\\xc004e2318722ea2b15499d6375905d75ee5390b8	KOM	8
\\x64afdf9e28946419e325d801fb3053d8b8ffdc23	MEEB	18
\\xf153eff70dc0bf3b085134928daeea248d9b30d0	xMARK	9
\\xcd7361ac3307d1c5a46b63086a90742ff44c63b3	RAIDER	18
\\x2e4b0fb46a46c90cb410fe676f24e466753b469f	UMBR	18
\\x7fbc10850cae055b27039af31bd258430e714c62	UBT	8
\\x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4	ROUTE	18
\\x3a3df212b7aa91aa0402b9035b098891d276572b	FISH	18
\\x957d1ad5214468332c5e6c00305a25116f9a46bb	NOIA	18
\\x361a5a4993493ce00f61c32d4ecca5512b82ce90	SDT	18
\\x430ef9263e76dae63c84292c3409d61c598e9682	PYR	18
\\x7c28f627ea3aec8b882b51eb1935f66e5b875714	PAINT	18
\\x8d1566569d5b695d44a9a234540f68d393cdc40d	GAME	18
\.


COMMIT;

CREATE INDEX IF NOT EXISTS tokens_contract_address_decimals_idx ON erc20.tokens USING btree (contract_address) INCLUDE (decimals);
CREATE INDEX IF NOT EXISTS tokens_symbol_decimals_idx ON erc20.tokens USING btree (symbol) INCLUDE (decimals);
