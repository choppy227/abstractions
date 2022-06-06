CREATE SCHEMA IF NOT EXISTS ovm2;

CREATE TABLE IF NOT EXISTS ovm2.contract_creator_address_list (

  creator_address  bytea NOT NULL,
  project text,
        PRIMARY KEY (creator_address)
);


BEGIN;
DELETE FROM ovm2.contract_creator_address_list *;

COPY ovm2.contract_creator_address_list (creator_address,project) FROM stdin;
\\x932607335869cff6349ef450e74c83a3b871a9ff	Lyra V1
\\x41a742d0cb523b0c313518309ade763fb609da25	Lyra V1
\\x924ac9910c09a0215b06458653b30471a152022f	Hop Protocol
\\xfefec7d3eb14a004029d278393e6ab8b46fb4fca	Hop Protocol
\\x0e0e3d2c5c292161999474247956ef542cabf8dd	Hop Protocol
\\x3c0ffaca566fccfd9cc95139fef6cba143795963	Hop Protocol
\\xec4b41af04cf917b54aeb6df58c0f8d78895b5ef	Hop Protocol
\\x7ed52863829ab99354f3a0503a622e82acd5f7d3	Rari
\\x44045fd5d3840fec51b76fb6a87cbcda735a8629	Slingshot
\\x3204ac6f848e05557c6c7876e09059882e07962f	Rubicon
\\xee4f7b6c39e7e87af01fb9e4cee0c893ff4d63f2	OneInch
\\x11799622f4d98a24514011e8527b969f7488ef47	OneInch
\\x74886e43273e66da073d26d91cdb4f0eb91fc420	OneInch
\\x7a3d05c70581bd345fe117c06e45f9669205384f	Rainbow
\\x075da589886ba445d7c7e81c472059de7ae65250	Maker
\\x395ec94bf3e3dcd3afbd82cd03197731411e396b	Synthetix
\\x3c05b1239b223c969540fefc0270227a2b00e047	Synthetix
\\x6c9fc64a53c1b71fb3f9af64d1ae3a4931a5f4e9	Uniswap V3
\\xdead1cb30b3ca13cd67d1d6f4e2790d12484fdd8	Chainlink
\\x03863f6ad36f1fcd908517e3c56c6b3fd3f50752	Chainlink
\\x1e4e0e7dd2a854ea15f4ee852abb78a99c86357c	Uniswap V3
\\xced01e7617bf6052a71154daa6d50d8b243f1b26	Uniswap V3
\\xd640037fa41436326e4a0e3fd0511aad83d2345c	Xchain
\\x1b9dfc56e38b0f92448659c114e2347bd803911c	Celer
\\x9a8f92a830a5cb89a3816e3d267cb7791c16b04d	Across
\\x155b15a7e9ff0e34ceaf2439589d5c661adc9493	Connext
\\xc715aa67866a2fef297b12cb26e953481aed2df4	dHedge
\\xf8c3875bfa461a38532fedf90453985901c55114	Dope Wars
\\x42d4cb9514710d8b90e790aa80ac3cc635b66589	Optimistic Bunnies
\\xda32bd8e86575f827f0d36272f703d5370c06152	OptiPunks
\\x0af91fa049a7e1894f480bfe5bba20142c6c29a9	Synapse
\\x22cdc93f53ee3f6b8ad66fad6f98915a5349950e	Synapse
\\xa67b7147dce20d6f25fd9abfbcb1c3ca74e11f0b	Synapse
\\xa9e90579eb086bcda910dd94041ffe041fb4ac89	Synapse
\\xa430a8a6911e8de02acfe835eb1d5539a58cee94	Flux Protocol
\\x0e860f44d73f9fdbaf5e9b19afc554bf3c8e8a57	Poly Network
\\xe1cb04a0fa36ddd16a06ea828007e35e1a3cbc37	Gnosis Safe
\\x914d7fec6aac8cd542e72bca78b30650d45643d7	Gnosis Safe
\\xab0d90fde397a4362acbe1d3a1c17f24b5b53266	Gnosis Safe
\\x3e579180cf01f0e2abf6ff4d566b7891fbf9b868	BitBTC Protocol
\\xd15d5d0f5b1b56a4daef75cfe108cb825e97d015	Superfluid
\\xbabe61887f1de2713c6f97e567623453d3c79f67	CurveFi
\\x7eeac6cddbd1d0b8af061742d41877d7f707289a	CurveFi
\\x763b9dba40c3d03507df454823fe03517f84a5ab	WePiggy
\\x85671317830357f40188aa6a55e96a3338eb4d7d	Volmex
\\xee9801669c6138e84bd50deb500827b776777d28	O3 Swap
\\xe37da1e4632b94e601ac015be8db554e0456b01a	EtherOrcs
\\x849a19c0746fb0d335e02dec0d0b3e057e585176	Perpetual Protocol
\\x6c3f14da26556585706c02af737a44e67dc6954d	Go Pocket
\\x27b2458658f036838c2050b2b35e874e57fe4789	Diamondfoot NFT
\\x98ab60422568db7d58623c69cb41d29c9dea1ce6	NiftyKit
\\x644b37ea8027b81ef1bdcd10ac0a78ea8532b7c8	Nuke Vaults
\\xb56238d0225c7e6155591916167c138a4be2babc	tdao
\\xf3315a3e482a96b8c327674b7a16151dcd899a9a	FeestArb
\\x4b49652fbf286b3da10e44442c38134d841159ef	universexyz
\\xe5cd62ac8d2ca2a62a04958f07dd239c1ffe1a9e	Unlock Protocol
\\x47c8f1db1df960b2ff00b240038576098277e8da	Kwenta
\\xf2cafb99992ce6a49f948b452c783614808612d1	WePiggy
\\x6275d233a12b7cc747e41543878c31b604d0bae1	Test xidian
\\xbc0895f9d50ddcad909f7089fc642e59006a9460	thirdweb
\\x80898b704baa55e7e37f1128fc6ae5836661f54a	Pika Protocol
\\x69bdb276a17dd90f9d3a545944ccb20e593ae8e3	Set Protocol
\\x3af9fe35d280ada5a5edb1bef3ed872a3231d73c	POA
\\x39e5351e6ce3c4b19b8b0a2f5c82c511782457be	Aktionariat
\\xa8e8affc55e6ab42ba4a3e19cb5a3c7adcf0407b	Pods
\\x304c736acd582fc72db1ddff12fc368a685a5897	KratosDAO
\\x6fdbcdb16027b86ab0fa5846e53b1b0952b4580c	Rentable
\\xc0fcf8403e10b65f1d18f1b81b093004b1127275	88mph
\\x082443883d739faea9bfd590ab550f7184f050c9	Composable Finance
\\x420220b72bbd307db8615e7aa0eadca399cf2fc0	handlefi
\\x2cc3befb75e5b9c04eb90f8167c5c8c8523c30eb	RaptureLabs
\\x0022ec3dd352bf214a9d936081f10ffac66455e1	Terrae
\\x558ef269bcc4cc9f2e14e3f4301231fbeb85d95f	BarnBridge
\\x6861d375afa2c9e5f7d82c176fb50ea70356740a	HungryBunz
\\xafd618064739a2820f5f80c2585563a8af0e6871	SupDucks
\\xab0b18523e8fe8cbf947c55632e8ab5ce936ae8c	Gridzoneio
\\x9f60699ce23f1ab86ec3e095b477ff79d4f409ad	InstaDapp
\\x7754c0584372d29510c019136220f91e25a8f706	FNDZ
\\x88888887c3ebd4a33e34a15db4254c74c75e5d4a	Stability
\\x99910e7d8895248320744b6f9a49f8afb1ad8b31	iOS DeFi Wallet
\\x9d59cf867ec98b67ab05b7f482eb38baf3884058	CST
\\x057fcd7bd66e0b0e7cbf387d12b2a49a20d30922	EPNS
\\xfaed87bc8a4721442d501bb190bd767a0d34c84b	Optimistic Loogies
\\x992dac69827a200ba112a0303fe8f79f03c37d9d	ETHDubai
\\x7126c3c6d04e4a2a89e2b1589a96d37724be9e39	Tally
\\x697ef32b4a3f5a4c39de1cb7563f24ca7bfc5947	Insula
\\x54054ea2db6edc336cb87966815fd66cc337f224	Keep3r Network
\\x3dff16210a6c9ffb7ee50c6eb21bb6675b86adf4	YIN Finance
\\xc7f73196a301948866f457add5eadb961fe05fb3	YIN Finance
\\xe4379a25a0db888e19ec2c14416fe68a62aca5cc	WPSmartContractscom
\\x4816506e22004f8ce02963f5cd9703afb1c394d4	FIDIS FI25 Crypto Index
\\x5b0f8d8f47e3fdf7ee1c337abca19dbba98524e6	Gardens
\\xdbaabc182e5fcebf216c353a3ebe32cdb7390094	Kromatikafinance
\\x74888d40a3523397500afebac92152f4617997b3	realityeth
\\x2c6d58c52accf2a04138c76ee11c1b5a100ef6a5	OptiMarket
\\xef31d75a2f85cfdd9032158a2ceb773c84d79192	dHedge
\\x9841484a4a6c0b61c4eea71376d76453fd05ec9c	Thales
\\x8314125c8b68af2afd0d151eb4a551e88128a2ae	Thales
\\xde6d6f23aabbdc9469c8907ece7c379f98e4cb75	dForce
\\x1b5caa1d3a1582a438e4cd93ee7a7e0e4d5624fb	Uniswap V3
\\xc73567e09e1774f6e9e5f1f9de7fd0c3c4ce94fa	NFT for my bro
\\xa71405f7d11734f03f2616b93eaed22604c978bf	Mean Finance
\\x0f5b021bb7300a83b7ff74fe39b56908fc0929c3	The Cyber Inu
\\xfdd9c344a52ace735564f1dc1ec19bd507dd5037	TRDEFI
\\xfe64a36b1465dfac28e93add6d8c5ecca816a7d0	HomepageDAO
\\x80094b8ef0b5762661e6ba3daf9d8acb5b0620e6	Imbue
\\x962193e0101ab216f362435a276b22e2172fc847	Gladiaxy
\\x876db660de545a14aa14bb6069e5b369cc233241	18Decimal
\\x4862eb1658b72555934b91bf9aee142849e736b9	Yeti
\\xa28f0249ec1d48a0022792ec8e708020cb27c815	Crypto Sigma Males NFT
\\x000f05552f24850e75793d38c2bd0cbd249a9ff4	RigoBlock
\\x287bd66753f0ca8e9c2171d782df39e4c28cfd65	Poly Network
\\x037a9d5dd0fd9bc48d699f1010b9ec68bb839e34	CyberFrens
\\x74e5189d4258eaf1236d4fd1454225c0a4b54907	PelicanSwap
\\xd4fb8e266a490103b0515e22c99d6643a288a455	DefiYield
\\xc602aaf1b61fdf7834c4138cd96400738d298807	AllianceBridge
\\x7a68685e4d5d67322a26db639c62ac1460823905	zeroex
\\xdef1c0ded9bec7f1a1670819833240f027b25eff	zeroex
\\xe750ad66de350f8110e305fb78ec6a9f594445e3	zeroex
\\xf8ebddd333b3ab285906fd5eb603b17ecd18266f	zeroex
\\x60908c4037cbb8f3aa040d9fb668ab36280eb871	zeroex
\\x8602ee2f8aaeb671e409b26d48e36dd8cc3b7ed7	ZipSwap
\\xf7c1daf7443d7307df13c81f5f0328d4c7803e7b	BoringDAO
\\x38e63793993ae54be374d129f34a3faf2c382e97	TokenFunder
\\xbb6e024b9cffacb947a71991e386681b1cd1477d	Tornado Cash
\\x512472840327530ea03cce6f58966b221f3a8b6a	Perpetual Protocol
\\x56cf1fa9185e42e90205e955e299f33b6204da59	DoraHacks
\\x6336cf6f9a7abb9efa86c04ac29541f015dd58b1	XmasBook
\\xb5bb09ecaecb7fca6c837ab706ce321b3a3dd949	VaultDefi
\\x6a932f0ae2a7a49fb24b70c8eef6ec0808163345	PhotoDAO
\\x5b9319b2cd3d702ba12398c8e7515979276c038d	PhotoDAO
\\x9986ee0c3eea15dcf8642b56179652f9589b95db	OpenOcean
\\x992ebe8be326ea0cd7d30a98740d9899612330bb	Band Protocol
\\x6a885bd0086368b56dbf2005bb72bbcc5fd7e2b9	Band Protocol
\\x21ffcbdbdd2c0f59d779cf8f1fd0a87b5f84bc44	OctoFinance
\\x8c1fd2de219c98f5f88620422e36a8a32f83324e	opengsn
\\x892e04f20f9d7118917d7f94850c3c9423120c32	Teahouse
\\x9972d940c9a23f84fcf92867d18f28d75d010e5e	Mask Network?
\\x74f85fe5538dbfcf3b46399e121c3ba83f695f91	TokenPocket
\\xcf85a70d88d14d157c50aa61999f7808027a15d6	Animal Coloring Books
\\x2596b971ee0de4532566c59fa394c0d29f21d224	OE Ape
\\xec1557a67d4980c948cd473075293204f4d280fd	Quixotic
\\x7856f2a12a7a18b4a115d295f548434a9b078fa1	Aelin
\\xdbeabb16b017d321cbaa00c7412ce76d08ec2fc1	BitBTC Protocol
\\xc22834581ebc8527d974f8a1c97e1bea4ef910bc	Gnosis Safe
\\x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34	Socket
\\xfd8c6ebe0d284f9d2c9665f17bba47032259e907	Connext
\\x83bc3055649f9a829bebeccbc86e090d6a157161	Chainlink
\\x2ae8831a00b3ebd603c0028b317cf30e578a4a3c	Perpetual Protocol
\\x0c16527ec6d017541568f1998fda2b3c24b81977	CatDAO
\\xf9ce0b68f4baa50bd30128a01c5297e2b46a6428	CircusDAO
\\xd9cbe784df2ae03ea0e22335bb5cd7fcb42a0e32	Gelato
\\x88215a2794ddc031439c72922ec8983bde831c78	Arrakis Finance
\\x11978d32619cfefc2e7c75a70ef8beb077b503ca	Frax Finance
\\x68d03de837cc395ec34c61c078fa901468a3bb29	Frax Finance
\\x4707ddf20584a1df862403e7e0cc77c33330dca0	Bongswap
\\x0aa8aa45b1eb8ccdd2c742e7db796b0a589b86b5	Perpetual Protocol
\\x97b62cd23a04be0e0dc4a5f03ddbd0addc8ba29a	Band Protocol
\\xf6839085f692bde6a8062573e3da35e7e947c21e	InstaDapp
\\x26ed8119c45e3871df446a13f7fdc9e2c527dacd	InstaDapp
\\x5bdb37d0ddea3a90f233c7b7f6b9394b6b2eef34	Saddle Finance
\\xde910777c787903f78c89e7a0bf7f4c435cbb1fe	Synthetix
\\xb9bac083c6a968fe5d63e9e2337312f1a40c710a	Circular Art
\\x332b9e15db0c413de6f88b278b0016de3af005a0	Pegasus Finance
\\xfeebd6b860d4f33ec03014af0ee0a35ce8d6fd97	Pegasus Finance
\\xe48a5173ade669651120cb5e99e6fe140d4d73da	Mean Finance
\\xe69d24dd645d3d6a9985665dc0d5f8d57597e915	BitBTC Protocol
\\x35a9f94af726f07b5162df7e828cc9dc8439e7d0	BtcMirror
\\x294cb241ebf6fe95bbb76071c7cda8dd62eb138e	Cryptex
\\xa2e00fbd1e9315f490ae356f69c1f6624e2ed992	Nuke Vaults
\\x5befa2d163e40e148df83921e1cc59e044df5471	XDao
\\x03238279fa90dca3a02a65113f290cea01d48d87	Mirror
\\x6eb3783165e3e9bf6f3b463524738a2147be08ff	Clipper
\\x7a4535c67f2617d2590617666295c46c9f044f0d	Set Protocol
\\x71d024c31a1324496b9f69533618cefd09770010	Pilgrim Protocol
\\x89dea587db263d8c82bc63c2ae2b6f4784c418d9	OptiMarket
\\x057c75c9b1072be82ddd90b64501f525a9a300e7	Chainlink
\\xfa9da51631268a30ec3ddd1ccbf46c65fad99251	Multichain
\\x3976d5b90cfa0a0cc4d62983455ff6a6909f0f18	Dentacoin
\\x5ce7d83f7aaac17a0ad40540b37fc7a0b688ff44	Olympus
\\x5777aa6f437399af6cef2fce0be8d4b4ed7c7232	Umbra
\\xb16a11442878d6f1ef202ae63233a7c13e98fd7f	Hundred Finance
\\x7a1285a7381a3099bfe6706549859316e6f90e6a	Aave
\\xc841a5fb20d2395316ff9d7cfa2032ab51e70f00	BitBTC Protocol
\\xfadcbe6735146c6839e2748a371450a4540e12f3	Dentacoin
\\xf663a1d22ec5cec99c4bb404ec3e948895afcd73	Chainlink
\\x8286dc6df929c4bfa4f6951cab4dae2ec02d4d72	Hundred Finance
\\xc36142c497053c42bdaa14737bf80e71daa984c5	InstaDapp
\\xf125ccc0a0332ba7b51a601d0975ac44cc3b5655	InstaDapp
\\x161b29d1919d4e06b53ee449376181b5082b30b9	Zerion
\\xfd0bd19e849493f77d8f77ed026520c1368102bd	Layer2DAO
\\xbc577bddeb479eeabadf5303a1221cf84c074ea7	xToken
\\xaa2e0c5c85acb7717e58060ab3c96d2b184ee07c	Arrakis Finance
\\xd82fbd545f8205f67006309773b2e065c6764ee5	Superfluid
\\x9f403140bc0574d7d36ea472b82daa1bbd4ef327	Layer Zero
\\x1dd2560c3c818ed81208f2e6bc042c241dc9b22e	ChainShot
\\x4365f8e70cf38c6ca67de41448508f2da8825500	Aave
\\xae0b890a625a87c23a1fccdefb4c26a798719f17	Aave
\\x1d7c6783328c145393e84fb47a7f7c548f5ee28d	Stargate Finance
\\x0298f4332e3857631385b39766325058a93e249f	Sabiler
\\xb29050965a5ac70ab487aa47546cdcbc97dae45d	Punk Domains
\\x83a15cb9781458b421ad11def469586242cd06cb	Superfluid
\\x8b1727d9322e7bb82e87018f0a4f0d60a3d0866d	Superfluid
\\xcc59c42d05bd66fe22fba27016f783af43f68fa7	Aktionariat
\\x322d58b9e75a6918f7e7849aee0ff09369977e08	DeFi Saver
\\x3527a204a5260a0e36ca695312379370328e4e6c	Mirror
\\x820f92c1b3ad8e962e6c6d9d7caf2a550aec46fb	Tipcc
\\xaa270c9cf88e3806bfa1e3cd983f34af339a7ffc	Synapse
\\xb00b19938346b745ccb3fc4fad946de0caa724a2	Router Protocol
\\xb00bc9e04698a3315b6038225a2e9e42d63c7669	Router Protocol
\\x9f76043b23125024ce5f0fb4ae707482107dd2a8	Polynomial Protocol
\\x6ece61d29b90642941c41240da924690da145696	Stargate Finance
\\x57ade2f6723dea166d17694a576403ba9750762d	Mirror
\\xacfe4511ce883c14c4ea40563f176c3c09b4c47c	Pickle Finance
\\xc9424ba7e09a46f50f8aa89203c61149091adbcd	LayerZero
\\x473ab11a7b649064ee50b255b5b14dfe284a0373	Chainlink
\\x954e3eb8de035ec1bc8fe8fa0091d5b87ab17d47	LiFi
\\x079a889eb69013d451ecf45377258948116e2b3e	tofuNFT
\\xe00eaa2787a8830a485153b7bf508bc781e4a220	QiDao
\\xb49a6213da096f72c6f83c63a68f43caabb113ad	KEVoLUTION
\\x14719476c596fce28d381bd3ac12c3ce4698a1e9	Raid Project
\\xeb10511109053787b3ed6cc02d5cb67a265806cc	Party Panda
\\x919124f5f5135d3020a0b075412679755545f7c5	Curvefi
\\x244a807084a3eb9fd5fe88aa0b13aec8401577bd	dLab
\\xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c	WardenSwap
\\xbb73463b88b0cb9681f176d6d43a12c2fea2c237	DeFiHelper
\\x386a28709a31532d4f68b06fd28a27e4ea378364	DODO
\\x817b4eab0e595801f382f531e36245ebcd401452	Pegasus Finance
\\xb7eb3f6a9abcae7559484fb126b8f872781cf9dd	Nested
\\x4fbe899d37fb7514adf2f41b0630e018ec275a0c	Beethoven X
\\x3d64fb8a2fFd08C186e8060aA57c8011D8b999cC	Beethoven X
\\x697A71353A4BC1eb1356763018a229c27a3fbA0C	Beethoven X
\\xADE38bd2E8D5A52E60047AfFe6E595bB5E61923A	Gamma
\\x9c5a87452d4FAC0cbd53BDCA580b20A45526B3AB	Niftyswap
\\x669dcFd6C2c0B267DDa08E9478E3e2c9Def8b7f2	Putty
\\xf87BC5535602077d340806D71f805EA9907a843D	Sushi
\\xE8bc44AE4bA6EDDB88C8c087fD9b479Dff729850	Hashflow
\\x2AfAeCA15Ac8A62E9bfa3EAF0285315AbAEcf334	Elk Finance
\\x111617795C52555D45cF100D0cBF01c82E157E81	Elk Finance
\\xF220eA963D27Ebe782f09403017B29692A4fC4aE	Elk Finance
\\x8b5F94a2c2e23eE8cC0Ff56872aF973243eF7628	ChainHop
\\x00778C4222c7d837cbfe4C1539AD10c127eC1C1F	Celer
\\xbac4edFAB0FFBD3344B163fAd587F07261c6CD7E	Backed
\\x4a27c059FD7E383854Ea7DE6Be9c390a795f6eE3	Backed
\\x5b0390bccCa1F040d8993eB6e4ce8DeD93721765	Tarot Finance
\\xCDf41a135C65d0013393B3793F92b4FAF31032d0	Gelato
\\xbA3C7B0b8f29b41F0E841c1ffB1Bda8B605830dA	DefiSaver
\\x0000000000933edea24f198114758e45BF9B9f14	Mean Finance
\\x98D93988b17caDdeC301aC40E805c565F2D5925B	Optimistic Loogies
\\xc0DE1436C4E247F8652476A0B9ff55699801e1d0	Velodrome
\\xab1ef74D2C461e95f4b658ca1f94aC519ad80BA2	OP
\\x9983D8cDEAf7872501628229d311E2F7Df396aDd	EvoDefi
\.

COMMIT;
CREATE UNIQUE INDEX CONCURRENTLY IF NOT EXISTS contract_creator_address_list_addr_uniq_idx ON ovm2.contract_creator_address_list (creator_address);
CREATE UNIQUE INDEX CONCURRENTLY IF NOT EXISTS contract_creator_address_list_addr_proj_uniq_idx ON ovm2.contract_creator_address_list (creator_address,project);
