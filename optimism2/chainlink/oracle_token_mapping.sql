CREATE TABLE IF NOT EXISTS chainlink.oracle_token_mapping (
	feed_name text,
	proxy bytea,
	underlying_token_address bytea,
	extra_decimals numeric,
		PRIMARY KEY (proxy,underlying_token_address, extra_decimals)
);

BEGIN;
DELETE FROM chainlink.oracle_token_mapping *;

COPY chainlink.oracle_token_mapping (feed_name, proxy, underlying_token_address, extra_decimals) FROM stdin;
AAVE / USD	\\x338ed6787f463394D24813b297401B9F05a8C9d1	\\x76FB31fb4af56892A25e32cFC43De717950c9278	0
AAVE / USD	\\x338ed6787f463394D24813b297401B9F05a8C9d1	\\x00B8D5a5e1Ac97Cb4341c4Bc4367443c8776e8d9	0
BTC / USD	\\xD702DD976Fb76Fffc2D3963D037dfDae5b04E593	\\x68f180fcCe6836688e9084f035309E29Bf0A2095	0
BTC / USD	\\xD702DD976Fb76Fffc2D3963D037dfDae5b04E593	\\x298B9B95708152ff6968aafd889c6586e9169f1D	0
CRV / USD	\\xbD92C6c284271c227a1e0bF1786F468b539f51D9	\\x0994206dfE8De6Ec6920FF4D779B0d950605Fb53	0
DAI / USD	\\x8dBa75e83DA73cc766A7e5a0ee71F656BAb470d6	\\xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1	0
ETH / USD	\\x13e3Ee699D1909E989722E753853AE30b17e08c5	\\xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000	0
ETH / USD	\\x13e3Ee699D1909E989722E753853AE30b17e08c5	\\x4200000000000000000000000000000000000006	0
ETH / USD	\\x13e3Ee699D1909E989722E753853AE30b17e08c5	\\xE405de8F52ba7559f9df3C368500B6E6ae6Cee49	0
EUR / USD	\\x3626369857A10CcC6cc3A6e4f5C2f5984a519F20	\\xFBc4198702E81aE77c06D58f81b629BDf36f0a71	0
LINK / USD	\\xCc232dcFAAE6354cE191Bd574108c1aD03f86450	\\x350a791Bfc2C21F9Ed5d10980Dad2e2638ffa7f6	0
LINK / USD	\\xCc232dcFAAE6354cE191Bd574108c1aD03f86450	\\xc5Db22719A06418028A40A9B5E9A7c02959D0d08	0
MATIC / USD	\\x0ded608AFc23724f614B76955bbd9dFe7dDdc828	\\x81DDfAc111913d3d5218DEA999216323B7CD6356	0
SNX / USD	\\x2FCF37343e916eAEd1f1DdaaF84458a359b53877	\\x8700dAec35aF8Ff88c16BdF0418774CB3D7599B4	0
SOL / USD	\\xC663315f7aF904fbbB0F785c32046dFA03e85270	\\x8b2F7Ae8cA8EE8428B6D76dE88326bB413db2766	0
Total Marketcap USD	\\x15772F61e4cDC81c7C1c6c454724CE9c7065A6fF	\\x530ab34385ca1d134ffd33d267f5a2788d645039	10
UNI / USD	\\x11429eE838cC01071402f21C219870cbAc0a59A0	\\x6fd9d7AD17242c41f7131d257212c54A0e816691	0
UNI / USD	\\x11429eE838cC01071402f21C219870cbAc0a59A0	\\xf5a6115Aa582Fd1BEEa22BC93B7dC7a785F60d03	0
USDC / USD	\\x16a9FA2FDa030272Ce99B29CF780dFA30361E0f3	\\x7F5c764cBc14f9669B88837ca1490cCa17c31607	0
USDT / USD	\\xECef79E109e997bCA29c1c0897ec9d7b03647F5E	\\x94b008aA00579c1307B0EF2c499aD98a8ce58e58	0
AVAX / USD	\\x5087Dc69Fd3907a016BD42B38022F7f024140727	\\xB2b42B231C68cbb0b4bF2FFEbf57782Fd97D3dA4	0
SUSD / USD	\\x7f99817d87baD03ea21E05112Ca799d715730efe	\\x8c6f28f2F1A3C87F0f938b96d27520d9751ec8d9	0
SOL / USD	\\xC663315f7aF904fbbB0F785c32046dFA03e85270	\\x95FFfb13856D2BE739a862f9b645573e5C838bdD	0
LUNA / USD	\\xab164949E0db4A6B6877E1EB2045Ad3af3cF2259	\\x19F0622903A977A24bB47521732E6291002a4edE	0
AVAX / USD	\\x5087Dc69Fd3907a016BD42B38022F7f024140727	\\x522439fb1da6db24f18baab1782486b55fe3a7b6	0
OP / USD	\\x0D276FC14719f9292D5C1eA2198673d1f4269246	\\x4200000000000000000000000000000000000042	0
PERP / USD	\\xA12CDDd8e986AF9288ab31E58C60e65F2987fB13	\\x9e1028F5F1D5eDE59748FFceE5532509976840E0	0
FRAX / USD	\\xc7D132BeCAbE7Dcc4204841F33bae45841e41D9C	\\x2E3D870790dC77A83DD1d18184Acc7439A53f475	0
FXS / USD	\\xB9B16330671067B1b062B9aC2eFd2dB75F03436E	\\x67ccea5bb16181e7b4109c9c2143c24a1c2205be	0
INR / USD	\\x5535e67d8f99c8ebe961E1Fc1F6DDAE96FEC82C9	\\xa3A538EA5D5838dC32dde15946ccD74bDd5652fF	0
\.



COMMIT;

CREATE INDEX IF NOT EXISTS chainlink_oracle_token_mapping_idx ON chainlink.oracle_token_mapping (proxy,underlying_token_address,extra_decimals);
