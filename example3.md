#from Chris' worked_example

#Blobs in the commit that fixes the vulnerability:
````
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2b
92fe84214967012e951f7aee5bcee9977c426eef;9c28b015e4191677167ae7dbfa72d481524837df
92fe84214967012e951f7aee5bcee9977c426eef;be72b3049eb13cb1efc271cc64cff8b7d8546589
````

#Vulnerable Blobs (parents of the file from the fixed commit)
```
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2b | cut -d\; -f 2 | ~/lookup/getValues -f b2ob | cut -d\; -f 2
9c28b015e4191677167ae7dbfa72d481524837df;d1f1d81253f45f8e02e314f654a3abd888d1506e
be72b3049eb13cb1efc271cc64cff8b7d8546589;34192214d601d692013a1ae3811ae4e5bdfeff5c
be72b3049eb13cb1efc271cc64cff8b7d8546589;3ac7f37230db50b228f4a83e9392a747df0b81f7
```

# looking at the first vulnerable blob:
```
./find_duplicates.sh d1f1d81253f45f8e02e314f654a3abd888d1506e

1.
commit = 0069453c527b4339f1ea6b3ebe55f16bf776c4f3
head_commit = 84221d2a554343f42eda9e1315bf306d1cadf801
Blob in head commit: YES
pathname = RTOS/RioTOS/src/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = rsrg_polymcu
proj_url = https://github.com/rsrg/polymcu
2.
commit = 04e35d0ca0194805994aaee0cde682d26b4dd1e8
head_commit = 88218f94d5177ee1fb3afcd3ef8b29ed86c3e22a
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
3.
commit = 0893042f644cc1c6f8cbdebf48ee38dd1e577349
head_commit = 561f3136e4c51ffc7add63e973818ffedb79f507
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = MBesuden_Calculation-language
proj_url = https://github.com/MBesuden/Calculation-language
4.
commit = 091f2fe1ccdca6fc6e0d9cf1e1f6680d90fdf767
head_commit = 0bad42c167bf2da6c56ab592a1de069ba36d85f6
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
5.
commit = 0b7791a67a90ae30818da9bdac74860fb3d30bf6
head_commit = 0b7791a67a90ae30818da9bdac74860fb3d30bf6
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
6.
commit = 187c4805289a9593fc9515109b9fa5b9b50fb439
head_commit = 187c4805289a9593fc9515109b9fa5b9b50fb439
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
7.
commit = 25e74ed522822f5a8a588539d50fe53a3d3c3e37
head_commit = 89ce71746f1e2d8f45b3f905462ea2f518ee96c7
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = alexbatista_RIOT-Aduino-uno
proj_url = https://github.com/alexbatista/RIOT-Aduino-uno
8.
commit = 3063eae16155ac030ef5f79fea0af25109430260
head_commit = 562b8bba4d245448ba2678eaeb04fc3c12f8086d
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
9.
commit = 3f2ea35a035e3b4eb1ea66675f94c1b8d00693f2
head_commit = d4ca8af9bbad1e512c9d413d4c2f58a67d4308ed
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
10.
commit = 45c34874cfd69948e059ca812c7101cc410afd04
head_commit = 08c10c71998a1ce5ae70902cc61120f689777586
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = sys8051/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
11.
commit = 51da536e48a1227b6ba7e91cddf44904dfb911d8
head_commit = 51da536e48a1227b6ba7e91cddf44904dfb911d8
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
12.
commit = 545b933ed98ed0eb2838d62f616ed30afa890dd9
head_commit = 308dbf52f34919c19164692da79e2991314533fe
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
13.
commit = 5f81ca75b117661bae00ec095787ef27fa94984d
head_commit = 5f81ca75b117661bae00ec095787ef27fa94984d
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
14.
commit = 6c61449fd2fd5b5d3e993fce2d6a11a6f7fe7e01
head_commit = 191d4854785a5f9df4b4ca23aeb88f3efad90f65
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = Nordzisko_RIOT
proj_url = https://github.com/Nordzisko/RIOT
15.
commit = 6f2fd60bfcbd35b22d62987cfd1b1a92b25992b9
head_commit = 6f2fd60bfcbd35b22d62987cfd1b1a92b25992b9
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
16.
commit = 780f018761d00f5fc68911ee4859909b6e095f91
head_commit = 780f018761d00f5fc68911ee4859909b6e095f91
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
17.
commit = 85c1c1709064cd9896971345be24e29b6075be3b
head_commit = b1bae9ff1dcbc73095b62159c1e38aa24d16efc1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
18.
commit = 8d769ea352685df5adb3371dded16f58ac706e68
head_commit = 8483d25ea7b7bf69fe81d3d23c580810d8e19fa1
Blob in head commit: YES
pathname = FuzzIoT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = JeffJerseyCow_bugs
proj_url = https://github.com/JeffJerseyCow/bugs
19.
commit = 8e1148ad8d1fb98b51da4630fb6ee9f4cd1aef71
head_commit = 329547c18c5b3515c9a54d5753f36cb3c75a1c34
Blob in head commit: NO
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
20.
commit = 901c4f82f8d6bb97ba9c5dedbb4e9129a2512a44
head_commit = fd58232d41e1e3ab13ade5feb2ab802af3ba0852
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
21.
commit = 912898b44e17512624490d013ea5b99a0f8afa52
head_commit = 6c952e6ed62f4200cf5b54d5e8d3e4e8e7ef156b
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
22.
commit = a397a7cdac79315b04cf71afae3aa7bf10e6d211
head_commit = a397a7cdac79315b04cf71afae3aa7bf10e6d211
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
23.
commit = a917bd4ee81348bdcd5f57e391f1e82939b9eeda
head_commit = 191d4854785a5f9df4b4ca23aeb88f3efad90f65
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = Nordzisko_RIOT
proj_url = https://github.com/Nordzisko/RIOT
24.
commit = bbc1a4f83524068edc9141d41e198b582d925536
head_commit = bbc1a4f83524068edc9141d41e198b582d925536
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = gerisse_RIOTPerso
proj_url = https://github.com/gerisse/RIOTPerso
25.
commit = c37aaac37172e21c26e6e085d204865345427e4e
head_commit = c37aaac37172e21c26e6e085d204865345427e4e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
26.
commit = ce52f9b06d351ee022be356eedcdb89089526271
head_commit = d1e537a0c8d33df9eda4bbd54b5783f76635d133
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = harunoni_RIOT-S5P4418
proj_url = https://github.com/harunoni/RIOT-S5P4418
27.
commit = d8a1d7ef33fcc7cf0d1dd5c35a29a4211655b27a
head_commit = d8a1d7ef33fcc7cf0d1dd5c35a29a4211655b27a
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
28.
commit = d9a15cc3dc7fb84cd8723e4e6feccb85de2b855e
head_commit = d9a15cc3dc7fb84cd8723e4e6feccb85de2b855e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
29.
commit = f58bc62aa4e31dda54bde9f145ca18e82243e981
head_commit = 9f611a82de3e6a8bb7a8acc14277da9d5bd4486b
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = ksushant65_initos
proj_url = https://github.com/ksushant65/initos
30.
commit = f8f74468b389d156310f45fe4f60cfa4c9fb1d52
head_commit = b1bae9ff1dcbc73095b62159c1e38aa24d16efc1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
31.
commit = fff545226489b07d08d322acf374c7b4cdf8176f
head_commit = fd58232d41e1e3ab13ade5feb2ab802af3ba0852
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT

```

# looking at the first fixed (non-vulnerable) blob:
```
file is ipv6_addr_from_str.c

./find_duplicates.sh 9c28b015e4191677167ae7dbfa72d481524837df
filename: 9c28b015e4191677167ae7dbfa72d481524837df
sha1 hash: 9c28b015e4191677167ae7dbfa72d481524837df
total_commits = 78
 
1.
commit = 007438b8d8c55ecbc81009e00eefd5c92e62423b
head_commit = 4bab6ea5ed74e5b36cb3a3d3eebb74421106b712
Blob in head commit: NO
pathname = Firmware/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = dragondgold_AtSat
proj_url = https://github.com/dragondgold/AtSat
2.
commit = 039d2d265df93d93564086d57865e8d3cbb7d69e
head_commit = 6192b17eee1093ebc38e8805c3e612d6ca5d573a
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
3.
commit = 0a9535fbf9a5af2a1da950e98f54baaeca0aec6f
head_commit = eafac9b3199065d43ff8039f227fef06fda7b255
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = blalebla_IARS
proj_url = https://github.com/blalebla/IARS
4.
commit = 0c5959c38f6b760acf37b28b58601257a425537e
head_commit = 0c5959c38f6b760acf37b28b58601257a425537e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = nunux13_saml21-jn-take2
proj_url = https://github.com/nunux13/saml21-jn-take2
5.
commit = 0d0fdfecb5ab1b5961f1325a7efacae57682b16c
head_commit = 0d0fdfecb5ab1b5961f1325a7efacae57682b16c
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
6.
commit = 0d185e0e1d5d362401012d9da81d3622dd7094c2
head_commit = e0dee8051d5b80e581646631636ba43bb8566315
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
7.
commit = 14d508641c1a55b549ec4cbcdc642376d735eb74
head_commit = 869a09b7746a7f1dbf33c6c5eaaa4a3fb1dadc03
Blob in head commit: NO
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = kex2017_ad7606
proj_url = https://github.com/kex2017/ad7606
8.
commit = 16857be3be54f92bca8f62a1cf9e23fe7e79ca07
head_commit = 1965d55e6f39321ef6bfbf2651b68d6224cfd85a
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = nunux13_saml21jn-take3
proj_url = https://github.com/nunux13/saml21jn-take3
9.
commit = 171e9e0ed8f1114032a20a074aa6760522745f34
head_commit = 171e9e0ed8f1114032a20a074aa6760522745f34
Blob in head commit: YES
pathname = RIOT-rpi/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 0xf1sh_raspberrypi
proj_url = https://github.com/0xf1sh/raspberrypi
10.
commit = 18c808f792dde16d690677773baf137125b4b43e
head_commit = 18c808f792dde16d690677773baf137125b4b43e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = bitbucket.org_sasha_indri_riot_prj_samsung
proj_url = https://github.com/bitbucket.org/sasha_indri_riot_prj_samsung
11.
commit = 1c13a6695f58e350fa37e1ee6ffd260be571e61c
head_commit = eeff67adb45e54f005197024083994b9545d7afa
Blob in head commit: YES
pathname = RIOT_OTA_PoC/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = suit-wg_SUIT-repository-manager
proj_url = https://github.com/suit-wg/SUIT-repository-manager
12.
commit = 1cbea7f112877fa695a43e60af5b6442a6a01cba
head_commit = c920c8ff5f28f640bfac213594118d3f36f92d2c
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
13.
commit = 1f2d17c7725067514bcdb0a00aa12d700a8d988c
head_commit = 91dff40763200c45482c45c52a8e05a603aed703
Blob in head commit: YES
pathname = RIOT/RIOT-ENV/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = RiS3-Lab_p2im-unit_tests
proj_url = https://github.com/RiS3-Lab/p2im-unit_tests
14.
commit = 233e94e25cef79938beeca477e55d4a204b1f868
head_commit = 6192b17eee1093ebc38e8805c3e612d6ca5d573a
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
15.
commit = 282e0525be1db8c0a3d91ab39d6457264be00cbf
head_commit = eafac9b3199065d43ff8039f227fef06fda7b255
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = blalebla_IARS
proj_url = https://github.com/blalebla/IARS
16.
commit = 2b27bece7466e7ba901fe0d3937bf2eb1a7c1c23
head_commit = 1adda7a06bb5612bb21ba352bf454a99e85e8584
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
17.
commit = 318c4261a12349367972b6fdd8b4808720221e18
head_commit = 4faf10277deadf0acb96e2de3e5c35b0b47eace6
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = Strieglitz_HTW-SN-RIOT-LED
proj_url = https://github.com/Strieglitz/HTW-SN-RIOT-LED
18.
commit = 32952385b26ec379931f6c61f06a4dfa58901bd4
head_commit = e0dee8051d5b80e581646631636ba43bb8566315
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
19.
commit = 341d35b78e7a04384010323d5916a402e9a5e5ab
head_commit = 77a312c519ba2f6d52b134e77cbd9cbb374a46a8
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
20.
commit = 347f75442c783d7a0a1dc0bc0fa6e14fd0ed3762
head_commit = 40a1fd1d9f6124ab85d2144e7069a0a8c5bdd9c2
Blob in head commit: NO
pathname = SensorNode/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = pokgak_SmartPowerReader
proj_url = https://github.com/pokgak/SmartPowerReader
21.
commit = 3602e00d30fa6a1412db2952bb4fb34f88341791
head_commit = a8340d2f9872bb157eac1f829e5ddcccc22a2755
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = test/gatt_server/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = test/listening/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = fu-ilab-swp19_Bike2Bike
proj_url = https://github.com/fu-ilab-swp19/Bike2Bike
22.
commit = 382e594b442ab10f95f9e74678fc1bc967988609
head_commit = 382e594b442ab10f95f9e74678fc1bc967988609
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
23.
commit = 38ed31f91e1060ddbb0c3d8d6023ea81e4eeb358
head_commit = 5f05191600e1eda2deed46ec2ca440f85a03adfa
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = kamomil_RIOT-rpi
proj_url = https://github.com/kamomil/RIOT-rpi
24.
commit = 39e9b1f19305bdfd8ba9ad89614111f8e7e465b9
head_commit = 0564556cbb53ebe34cc066c8249727b2da8eeea7
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
25.
commit = 39f6deaff6dd8086d96d2f63c8788d94244dc51e
head_commit = 39f6deaff6dd8086d96d2f63c8788d94244dc51e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
26.
commit = 3c735dd9fc16bd0f9d1a4a34d3c5349a4fe3e588
head_commit = eafac9b3199065d43ff8039f227fef06fda7b255
Blob in head commit: YES
pathname = 3.-RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = blalebla_IARS
proj_url = https://github.com/blalebla/IARS
27.
commit = 410ffc50e644451855db23aec10126ce60ab2b58
head_commit = 410ffc50e644451855db23aec10126ce60ab2b58
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
28.
commit = 4329be26626b725e416961553b5ed676bae1760f
head_commit = 4329be26626b725e416961553b5ed676bae1760f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = freemangd_stm32Riot
proj_url = https://github.com/freemangd/stm32Riot
29.
commit = 47d157bf9371d30aa94a6d5a7bc03577096bb9d1
head_commit = 47d157bf9371d30aa94a6d5a7bc03577096bb9d1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
30.
commit = 4bea5dcd0bd7213d29436dc31b5d52a667ad92d8
head_commit = 233e45e67ad46d627213f2bd2411e2d4c7752995
Blob in head commit: NO
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = federicoInserra_Iot-WebApp-monitoring-environmental-station
proj_url = https://github.com/federicoInserra/Iot-WebApp-monitoring-environmental-station
31.
commit = 51c34c6523abb9050689a592a1889b614704f05f
head_commit = 51c34c6523abb9050689a592a1889b614704f05f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
32.
commit = 527f5d25efea51eaaded65260b2c0619cb608132
head_commit = 527f5d25efea51eaaded65260b2c0619cb608132
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
33.
commit = 52cf8cb02f0c629b750df14472e7a185643f912d
head_commit = e09094076e20340848afc2c285678251730ca762
Blob in head commit: YES
pathname = data/new_data/files/RIOT-OS/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = arthurherbout_crypto_code_detection
proj_url = https://github.com/arthurherbout/crypto_code_detection
34.
commit = 56962f02286551b54aac1756e9cbca2e0516edae
head_commit = 9db96ca15e33e8150a64e074b78f9e17b7bc816f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = AlexFuhr_RIOT2
proj_url = https://github.com/AlexFuhr/RIOT2
35.
commit = 58f7fbd409ce6efdb9358b728b399619ae521781
head_commit = 40a1fd1d9f6124ab85d2144e7069a0a8c5bdd9c2
Blob in head commit: NO
pathname = SensorNode/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = pokgak_SmartPowerReader
proj_url = https://github.com/pokgak/SmartPowerReader
36.
commit = 59a7e01bbfa3b8870bedb7c6820723ee69cd8ca2
head_commit = d067c65b9631d80f806cbb7326d865c20896e46e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
37.
commit = 5be0e82dc64cd0bd86a74ad29a9484b7ebf39a61
head_commit = fca6a994f7749d1d59b01a0fa6d416ce433c55ab
Blob in head commit: NO
pathname = boards/Riot/doc/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = Bricomata8_program
proj_url = https://github.com/Bricomata8/program
38.
commit = 5f1833fa48867cb529e174320c5b1fb3dab3b40c
head_commit = 67e384fd83bd84ce33e267a261f2802a3d1441f8
Blob in head commit: YES
pathname = RIOT/RIOT-spi/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = srigirish_LiFi
proj_url = https://github.com/srigirish/LiFi
39.
commit = 60cae8bd33c99e573812da88b4ef874db2453cc6
head_commit = 60cae8bd33c99e573812da88b4ef874db2453cc6
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
40.
commit = 64fef3e75f231a91ccbda60b4f878ad1a52bb7ec
head_commit = 48a15b7c77c07b83bd41222164f21e37cbff2c41
Blob in head commit: NO
pathname = Assignment2/stations/Station1/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = Assignment2/stations/Station2/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = andreavona_Assignments
proj_url = https://github.com/andreavona/Assignments
41.
commit = 67e384fd83bd84ce33e267a261f2802a3d1441f8
head_commit = 67e384fd83bd84ce33e267a261f2802a3d1441f8
Blob in head commit: YES
pathname = RIOT/RIOT-spi/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = riot/RIOT-spi/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = srigirish_LiFi
proj_url = https://github.com/srigirish/LiFi
42.
commit = 6982c2414e6003e85a7baef251cce71b9e0792d6
head_commit = 89b181a2bfabb0af60f0cc21efba3604141872f0
Blob in head commit: YES
pathname = project_workspace/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = samken600_3YP
proj_url = https://github.com/samken600/3YP
43.
commit = 69cd5af08a233b6e542b81a8df9a3eeffbcb12d6
head_commit = 14da7b46fc47f594968723626d798df200ee0e40
Blob in head commit: YES
pathname = RIOT/RIOT-ENV/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = P2IM_p2im-unit-tests
proj_url = https://github.com/P2IM/p2im-unit-tests
44.
commit = 6b9a1a292bb82db453b268e8cb64702622df2e95
head_commit = 89b181a2bfabb0af60f0cc21efba3604141872f0
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = samken600_3YP
proj_url = https://github.com/samken600/3YP
45.
commit = 6ffe09b72eb99fa4d70b2aeefb0a93499e9d3a26
head_commit = eeff67adb45e54f005197024083994b9545d7afa
Blob in head commit: YES
pathname = RIOT_OTA_PoC/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = suit-wg_SUIT-repository-manager
proj_url = https://github.com/suit-wg/SUIT-repository-manager
46.
commit = 70395c7e5e522c2178f22ce5b929d6dd096d0610
head_commit = 0bd79912fa28693b4a232ea9ed75fdab895ca4f2
Blob in head commit: YES
pathname = project_workspace/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = samken600_3YP
proj_url = https://github.com/samken600/3YP
47.
commit = 706a76e1e194d94a2e6ca95647eda066350fbd4c
head_commit = 706a76e1e194d94a2e6ca95647eda066350fbd4c
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
48.
commit = 74148817112947974e68aba1f4b0d87d79e19d01
head_commit = c97ff524697172bbfa4c05969576e88cada52d26
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
49.
commit = 75de6543de71050b1d75e624bc770555d90619f2
head_commit = 75de6543de71050b1d75e624bc770555d90619f2
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = dragondgold_RIOTTest
proj_url = https://github.com/dragondgold/RIOTTest
50.
commit = 7bb1652d5f98ff060c2f89442e9d223feda86e7f
head_commit = 43294947ee8d0a68e4bf2aaa582d9c89ff4673a7
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = gitlab.com_willems1994_riot
proj_url = https://github.com/gitlab.com/willems1994_riot
51.
commit = 828a8ee7881230ac8c61de770f36280484c71fbc
head_commit = a8340d2f9872bb157eac1f829e5ddcccc22a2755
Blob in head commit: YES
pathname = test/nimble/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = test/nimble/old/RIOT_o/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = fu-ilab-swp19_Bike2Bike
proj_url = https://github.com/fu-ilab-swp19/Bike2Bike
52.
commit = 85ea7caeca57f577a523c99a1eaaf3e4ebc1f664
head_commit = 04248a8623ceb2de97f9f500eaea9ef26bc540bf
Blob in head commit: YES
pathname = riot/RIOT-spi/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = vasu1992_Li-Fi-in-Industry-4.0
proj_url = https://github.com/vasu1992/Li-Fi-in-Industry-4.0
53.
commit = 8b5f75c778319452f6e858e00755596a9b85a338
head_commit = 2fca45d77dd64b51f551b66d824364595872c9c1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
54.
commit = 8bd5ada1942b35ed6430ec0b4052248d787edf6f
head_commit = 8bd5ada1942b35ed6430ec0b4052248d787edf6f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = MolVlad_riot
proj_url = https://github.com/MolVlad/riot
55.
commit = 8be6af3c9f6a8da8520f5e81b367a52ce6b54db1
head_commit = 9d11e76555bc28926db54493ce89ddef50292110
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
56.
commit = 8ced3d5f65ab92d793249e4b8eef3e476ae0bfcb
head_commit = 311408ee5ad10705914bdc6b838b59538698cc32
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
57.
commit = 8d8aa29956309ac480b42388b752080e39cfafbf
head_commit = 8d8aa29956309ac480b42388b752080e39cfafbf
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = elopes02_PFE
proj_url = https://github.com/elopes02/PFE
58.
commit = 90f9f8fe4194d60a81d96bd9b4019193f62217d3
head_commit = e09094076e20340848afc2c285678251730ca762
Blob in head commit: YES
pathname = data/new_data/files/RIOT-OS/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = arthurherbout_crypto_code_detection
proj_url = https://github.com/arthurherbout/crypto_code_detection
59.
commit = 92fe84214967012e951f7aee5bcee9977c426eef
head_commit = 52a5b14c1bace2b40e2b0ec0a5590473d3c6fc2b
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
60.
commit = 95c4a1f874d8f0dc6122eff67befb8215abe74a2
head_commit = a8340d2f9872bb157eac1f829e5ddcccc22a2755
Blob in head commit: YES
pathname = test/flashing/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = fu-ilab-swp19_Bike2Bike
proj_url = https://github.com/fu-ilab-swp19/Bike2Bike
61.
commit = 9f295fd3cd04212876be6e41e12e1b695ef5843f
head_commit = 9f295fd3cd04212876be6e41e12e1b695ef5843f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = nunux13_saml21-jn
proj_url = https://github.com/nunux13/saml21-jn
62.
commit = b186b9db2810ff43c175ae31ebc60da28cf0e8c3
head_commit = 4bab6ea5ed74e5b36cb3a3d3eebb74421106b712
Blob in head commit: NO
pathname = Firmware/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = dragondgold_AtSat
proj_url = https://github.com/dragondgold/AtSat
63.
commit = b2e926b34cc61e253a4ef3f3d173bce3eb25dceb
head_commit = b2e926b34cc61e253a4ef3f3d173bce3eb25dceb
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
64.
commit = bd69b94cb3c7839e7b84ac7c66ef3483eec52ff6
head_commit = 354a64af31b1ee880b0422907052bde9f00cc9af
Blob in head commit: YES
pathname = paula-plants/mote/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = paula75_paula-plants
proj_url = https://github.com/paula75/paula-plants
65.
commit = bf5ab6a30a31570e5f1773c262a79ec09e8787f2
head_commit = f5d672a0a0dbf9c221e7886554363d4059c03fcc
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
66.
commit = c0febc534238355e9dc80f324be2b0efb659ce7e
head_commit = 371e4f76cc59b23f9219c8e58762fe5786adf44b
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = pvikberg_RIOT_demo
proj_url = https://github.com/pvikberg/RIOT_demo
67.
commit = c43453e1c2a610b4f6e749f4065cfbabed1df547
head_commit = a8340d2f9872bb157eac1f829e5ddcccc22a2755
Blob in head commit: YES
pathname = test/nimble/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = test/nimble/RIOT_o/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = fu-ilab-swp19_Bike2Bike
proj_url = https://github.com/fu-ilab-swp19/Bike2Bike
68.
commit = c62485b8ae08a6969580324c2d3d0a9831a91137
head_commit = c62485b8ae08a6969580324c2d3d0a9831a91137
Blob in head commit: YES
pathname = riot_idosens2/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = GitClementtest_riot_idosens
proj_url = https://github.com/GitClementtest/riot_idosens
69.
commit = d067c65b9631d80f806cbb7326d865c20896e46e
head_commit = d067c65b9631d80f806cbb7326d865c20896e46e
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
70.
commit = e09094076e20340848afc2c285678251730ca762
head_commit = e09094076e20340848afc2c285678251730ca762
Blob in head commit: YES
pathname = data/new_data/files/RIOT-OS/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = arthurherbout_crypto_code_detection
proj_url = https://github.com/arthurherbout/crypto_code_detection
71.
commit = eb03590099fb9e3b556fd6e8dde560a53633786b
head_commit = 8ea552ec2e836624ebaa38bbb2bd33d80d5e0b74
Blob in head commit: YES
pathname = Sensors/riot/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = Lxrd-AJ_Bio-Robotics
proj_url = https://github.com/Lxrd-AJ/Bio-Robotics
72.
commit = eb3dcff8489ba0d5b732801a51f486963d0dbda2
head_commit = 99ab1c1efc0d82737fddceb8d89d92f1f6d6dfb1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
73.
commit = ed0ea9960aad3c9d41f62a279bb1cac87da8cd4b
head_commit = 311408ee5ad10705914bdc6b838b59538698cc32
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
74.
commit = eef90c06fb36ed08f82b1176bf6d1c9c8615be86
head_commit = 47d157bf9371d30aa94a6d5a7bc03577096bb9d1
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
75.
commit = f004985c182452a14195784ef0f20bcf6cf15567
head_commit = 85f711b99c376b51a770a2ecce24390d1a7d7535
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = fu-ilab-swp19_IrrigationSystem
proj_url = https://github.com/fu-ilab-swp19/IrrigationSystem
76.
commit = f3440ca5d5b9e9acf2e9ec0b9536dadbe4f0a37a
head_commit = ca759d7392f824801257d0a1a9749cc2c9b19c3f
Blob in head commit: YES
pathname = sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = 1974vyacheslav_RIOT
proj_url = https://github.com/1974vyacheslav/RIOT
77.
commit = fd529634e246ac1d6f46dd3560d26f426f2998f5
head_commit = 869a09b7746a7f1dbf33c6c5eaaa4a3fb1dadc03
Blob in head commit: NO
pathname = stm32_src/RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = kex2017_ad7606
proj_url = https://github.com/kex2017/ad7606
78.
commit = ff27c92ba6b85048dd771c898563bf76c37d6261
head_commit = 0a746e74935e3734d65ca3ceaa0a65d15a16de34
Blob in head commit: YES
pathname = RIOT/sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
project = gitlab.com_lucadav_docker-ci
proj_url = https://github.com/gitlab.com/lucadav_docker-ci
```
