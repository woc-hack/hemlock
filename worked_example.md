# Worked example

CVE-2017-8289: https://cve.mitre.org/cgi-bin/cvename.cgi?name=2017-8289

Fixed at: https://github.com/RIOT-OS/RIOT/pull/6961

Merge commit was: https://github.com/RIOT-OS/RIOT/commit/92fe84214967012e951f7aee5bcee9977c426eef

### Files involved:
```
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2f
92fe84214967012e951f7aee5bcee9977c426eef;sys/net/network_layer/ipv6/addr/ipv6_addr_from_str.c
92fe84214967012e951f7aee5bcee9977c426eef;tests/unittests/tests-ipv6_addr/tests-ipv6_addr.c
```

### Parents of these two blobs are:
```
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2b | cut -d\; -f 2 | ~/lookup/getValues -f b2ob | cut -d\; -f 2
9c28b015e4191677167ae7dbfa72d481524837df;d1f1d81253f45f8e02e314f654a3abd888d1506e
be72b3049eb13cb1efc271cc64cff8b7d8546589;34192214d601d692013a1ae3811ae4e5bdfeff5c
be72b3049eb13cb1efc271cc64cff8b7d8546589;3ac7f37230db50b228f4a83e9392a747df0b81f7
```

(these are just the immediate parents; we may need all ancestors as well)

### Which projects contained those parent blobs?
```
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2b | cut -d\; -f 2 | ~/lookup/getValues -f b2ob | cut -d\; -f 2 | ~/lookup/getValues -f b2c | cut -d\; -f 2 | ~/lookup/getValues -f c2P | cut -d\; -f 2 | sort | uniq
1974vyacheslav_RIOT
alexbatista_RIOT-Aduino-uno
gerisse_RIOTPerso
harunoni_RIOT-S5P4418
JeffJerseyCow_bugs
ksushant65_initos
MBesuden_Calculation-language
Nordzisko_RIOT
phiros_testci
rsrg_polymcu
```

### Which project contained the repaired files?
```
echo 92fe84214967012e951f7aee5bcee9977c426eef | ~/lookup/getValues -f c2b | cut -d\; -f 2 | ~/lookup/getValues -f b2c | cut -d\; -f 2 | ~/lookup/getValues -f c2P | cut -d\; -f 2 | sort | uniq
0xf1sh_raspberrypi
1974vyacheslav_RIOT
AlexFuhr_RIOT2
arthurherbout_crypto_code_detection
bitbucket.org_sasha_indri_riot_prj_samsung
blalebla_IARS
Bricomata8_program
dragondgold_AtSat
dragondgold_RIOTTest
elopes02_PFE
fu-ilab-swp19_Bike2Bike
fu-ilab-swp19_IrrigationSystem
GitClementtest_riot_idosens
gitlab.com_lucadav_docker-ci
gitlab.com_willems1994_riot
kamomil_RIOT-rpi
kex2017_ad7606
Lxrd-AJ_Bio-Robotics
MolVlad_riot
nunux13_saml21-jn
nunux13_saml21-jn-take2
nunux13_saml21jn-take3
P2IM_p2im-unit-tests
paula75_paula-plants
pokgak_SmartPowerReader
pvikberg_RIOT_demo
Strieglitz_HTW-SN-RIOT-LED
suit-wg_SUIT-repository-manager
vasu1992_Li-Fi-in-Industry-4.0
```

Note that all but one of the parent blob projects never received the repaired files, although maybe they received some later descendent

