/*

#GROUP_TEMPLATE data_dummy
#TEMPLATE randomImage
"@randomImage"
#END
#TEMPLATE randomImagePicasso
"@randomImagePicasso"
#END
#TEMPLATE randomName
"@randomName"
#END
#TEMPLATE randomAddress
"@randomAddress"
#END


#GROUP_TEMPLATE skip_docs
#TEMPLATE text
Text("text"),
#END
#TEMPLATE pa
padding: const EdgeInsets.all($1),
#END
#TEMPLATE ma
margin: const EdgeInsets.all($1),
#END

#GROUP_TEMPLATE skip_docs
#TEMPLATE sz1
fontSize: 1.0,
#END

#TEMPLATE sw1
const SizedBox(
  width: 1.0,
),
#END

#TEMPLATE sh1
const SizedBox(
  height: 1.0,
),
#END

#TEMPLATE p1
padding: const EdgeInsets.all(1.0),
#END

#TEMPLATE plr1
padding: const EdgeInsets.only(left: 1.0, right: 1.0,),
#END

#TEMPLATE ptb1
padding: const EdgeInsets.only(top: 1.0, bottom: 1.0,),
#END

#TEMPLATE pt1
padding: const EdgeInsets.only(top: 1.0,),
#END

#TEMPLATE pr1
padding: const EdgeInsets.only(right: 1.0,),
#END

#TEMPLATE pb1
padding: const EdgeInsets.only(bottom: 1.0,),
#END

#TEMPLATE pl1
padding: const EdgeInsets.only(left: 1.0,),
#END


#TEMPLATE m1
margin: const EdgeInsets.all(1.0),
#END

#TEMPLATE mlr1
margin: const EdgeInsets.only(left: 1.0, right: 1.0,),
#END

#TEMPLATE mtb1
margin: const EdgeInsets.only(top: 1.0, bottom: 1.0,),
#END

#TEMPLATE mt1
margin: const EdgeInsets.only(top: 1.0,),
#END

#TEMPLATE mr1
margin: const EdgeInsets.only(right: 1.0,),
#END

#TEMPLATE mb1
margin: const EdgeInsets.only(bottom: 1.0,),
#END

#TEMPLATE ml1
margin: const EdgeInsets.only(left: 1.0,),
#END

#TEMPLATE mv1
margin: const EdgeInsets.symmetric(vertical: 1.0),
#END

#TEMPLATE mh1
margin: const EdgeInsets.symmetric(horizontal: 1.0),
#END

#TEMPLATE pv1
padding: const EdgeInsets.symmetric(vertical: 1.0),
#END

#TEMPLATE ph1
padding: const EdgeInsets.symmetric(horizontal: 1.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs1
fontSize: 1.0,
#END

#TEMPLATE text1
Text("text",
  style: TextStyle(
    fontSize: 1.0,
  ),
),
#END

#TEMPLATE textb1
Text("text",
  style: TextStyle(
    fontSize: 1.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz2
fontSize: 2.0,
#END

#TEMPLATE sw2
const SizedBox(
  width: 2.0,
),
#END

#TEMPLATE sh2
const SizedBox(
  height: 2.0,
),
#END

#TEMPLATE p2
padding: const EdgeInsets.all(2.0),
#END

#TEMPLATE plr2
padding: const EdgeInsets.only(left: 2.0, right: 2.0,),
#END

#TEMPLATE ptb2
padding: const EdgeInsets.only(top: 2.0, bottom: 2.0,),
#END

#TEMPLATE pt2
padding: const EdgeInsets.only(top: 2.0,),
#END

#TEMPLATE pr2
padding: const EdgeInsets.only(right: 2.0,),
#END

#TEMPLATE pb2
padding: const EdgeInsets.only(bottom: 2.0,),
#END

#TEMPLATE pl2
padding: const EdgeInsets.only(left: 2.0,),
#END


#TEMPLATE m2
margin: const EdgeInsets.all(2.0),
#END

#TEMPLATE mlr2
margin: const EdgeInsets.only(left: 2.0, right: 2.0,),
#END

#TEMPLATE mtb2
margin: const EdgeInsets.only(top: 2.0, bottom: 2.0,),
#END

#TEMPLATE mt2
margin: const EdgeInsets.only(top: 2.0,),
#END

#TEMPLATE mr2
margin: const EdgeInsets.only(right: 2.0,),
#END

#TEMPLATE mb2
margin: const EdgeInsets.only(bottom: 2.0,),
#END

#TEMPLATE ml2
margin: const EdgeInsets.only(left: 2.0,),
#END

#TEMPLATE mv2
margin: const EdgeInsets.symmetric(vertical: 2.0),
#END

#TEMPLATE mh2
margin: const EdgeInsets.symmetric(horizontal: 2.0),
#END

#TEMPLATE pv2
padding: const EdgeInsets.symmetric(vertical: 2.0),
#END

#TEMPLATE ph2
padding: const EdgeInsets.symmetric(horizontal: 2.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs2
fontSize: 2.0,
#END

#TEMPLATE text2
Text("text",
  style: TextStyle(
    fontSize: 2.0,
  ),
),
#END

#TEMPLATE textb2
Text("text",
  style: TextStyle(
    fontSize: 2.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz3
fontSize: 3.0,
#END

#TEMPLATE sw3
const SizedBox(
  width: 3.0,
),
#END

#TEMPLATE sh3
const SizedBox(
  height: 3.0,
),
#END

#TEMPLATE p3
padding: const EdgeInsets.all(3.0),
#END

#TEMPLATE plr3
padding: const EdgeInsets.only(left: 3.0, right: 3.0,),
#END

#TEMPLATE ptb3
padding: const EdgeInsets.only(top: 3.0, bottom: 3.0,),
#END

#TEMPLATE pt3
padding: const EdgeInsets.only(top: 3.0,),
#END

#TEMPLATE pr3
padding: const EdgeInsets.only(right: 3.0,),
#END

#TEMPLATE pb3
padding: const EdgeInsets.only(bottom: 3.0,),
#END

#TEMPLATE pl3
padding: const EdgeInsets.only(left: 3.0,),
#END


#TEMPLATE m3
margin: const EdgeInsets.all(3.0),
#END

#TEMPLATE mlr3
margin: const EdgeInsets.only(left: 3.0, right: 3.0,),
#END

#TEMPLATE mtb3
margin: const EdgeInsets.only(top: 3.0, bottom: 3.0,),
#END

#TEMPLATE mt3
margin: const EdgeInsets.only(top: 3.0,),
#END

#TEMPLATE mr3
margin: const EdgeInsets.only(right: 3.0,),
#END

#TEMPLATE mb3
margin: const EdgeInsets.only(bottom: 3.0,),
#END

#TEMPLATE ml3
margin: const EdgeInsets.only(left: 3.0,),
#END

#TEMPLATE mv3
margin: const EdgeInsets.symmetric(vertical: 3.0),
#END

#TEMPLATE mh3
margin: const EdgeInsets.symmetric(horizontal: 3.0),
#END

#TEMPLATE pv3
padding: const EdgeInsets.symmetric(vertical: 3.0),
#END

#TEMPLATE ph3
padding: const EdgeInsets.symmetric(horizontal: 3.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs3
fontSize: 3.0,
#END

#TEMPLATE text3
Text("text",
  style: TextStyle(
    fontSize: 3.0,
  ),
),
#END

#TEMPLATE textb3
Text("text",
  style: TextStyle(
    fontSize: 3.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz4
fontSize: 4.0,
#END

#TEMPLATE sw4
const SizedBox(
  width: 4.0,
),
#END

#TEMPLATE sh4
const SizedBox(
  height: 4.0,
),
#END

#TEMPLATE p4
padding: const EdgeInsets.all(4.0),
#END

#TEMPLATE plr4
padding: const EdgeInsets.only(left: 4.0, right: 4.0,),
#END

#TEMPLATE ptb4
padding: const EdgeInsets.only(top: 4.0, bottom: 4.0,),
#END

#TEMPLATE pt4
padding: const EdgeInsets.only(top: 4.0,),
#END

#TEMPLATE pr4
padding: const EdgeInsets.only(right: 4.0,),
#END

#TEMPLATE pb4
padding: const EdgeInsets.only(bottom: 4.0,),
#END

#TEMPLATE pl4
padding: const EdgeInsets.only(left: 4.0,),
#END


#TEMPLATE m4
margin: const EdgeInsets.all(4.0),
#END

#TEMPLATE mlr4
margin: const EdgeInsets.only(left: 4.0, right: 4.0,),
#END

#TEMPLATE mtb4
margin: const EdgeInsets.only(top: 4.0, bottom: 4.0,),
#END

#TEMPLATE mt4
margin: const EdgeInsets.only(top: 4.0,),
#END

#TEMPLATE mr4
margin: const EdgeInsets.only(right: 4.0,),
#END

#TEMPLATE mb4
margin: const EdgeInsets.only(bottom: 4.0,),
#END

#TEMPLATE ml4
margin: const EdgeInsets.only(left: 4.0,),
#END

#TEMPLATE mv4
margin: const EdgeInsets.symmetric(vertical: 4.0),
#END

#TEMPLATE mh4
margin: const EdgeInsets.symmetric(horizontal: 4.0),
#END

#TEMPLATE pv4
padding: const EdgeInsets.symmetric(vertical: 4.0),
#END

#TEMPLATE ph4
padding: const EdgeInsets.symmetric(horizontal: 4.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs4
fontSize: 4.0,
#END

#TEMPLATE text4
Text("text",
  style: TextStyle(
    fontSize: 4.0,
  ),
),
#END

#TEMPLATE textb4
Text("text",
  style: TextStyle(
    fontSize: 4.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz5
fontSize: 5.0,
#END

#TEMPLATE sw5
const SizedBox(
  width: 5.0,
),
#END

#TEMPLATE sh5
const SizedBox(
  height: 5.0,
),
#END

#TEMPLATE p5
padding: const EdgeInsets.all(5.0),
#END

#TEMPLATE plr5
padding: const EdgeInsets.only(left: 5.0, right: 5.0,),
#END

#TEMPLATE ptb5
padding: const EdgeInsets.only(top: 5.0, bottom: 5.0,),
#END

#TEMPLATE pt5
padding: const EdgeInsets.only(top: 5.0,),
#END

#TEMPLATE pr5
padding: const EdgeInsets.only(right: 5.0,),
#END

#TEMPLATE pb5
padding: const EdgeInsets.only(bottom: 5.0,),
#END

#TEMPLATE pl5
padding: const EdgeInsets.only(left: 5.0,),
#END


#TEMPLATE m5
margin: const EdgeInsets.all(5.0),
#END

#TEMPLATE mlr5
margin: const EdgeInsets.only(left: 5.0, right: 5.0,),
#END

#TEMPLATE mtb5
margin: const EdgeInsets.only(top: 5.0, bottom: 5.0,),
#END

#TEMPLATE mt5
margin: const EdgeInsets.only(top: 5.0,),
#END

#TEMPLATE mr5
margin: const EdgeInsets.only(right: 5.0,),
#END

#TEMPLATE mb5
margin: const EdgeInsets.only(bottom: 5.0,),
#END

#TEMPLATE ml5
margin: const EdgeInsets.only(left: 5.0,),
#END

#TEMPLATE mv5
margin: const EdgeInsets.symmetric(vertical: 5.0),
#END

#TEMPLATE mh5
margin: const EdgeInsets.symmetric(horizontal: 5.0),
#END

#TEMPLATE pv5
padding: const EdgeInsets.symmetric(vertical: 5.0),
#END

#TEMPLATE ph5
padding: const EdgeInsets.symmetric(horizontal: 5.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs5
fontSize: 5.0,
#END

#TEMPLATE text5
Text("text",
  style: TextStyle(
    fontSize: 5.0,
  ),
),
#END

#TEMPLATE textb5
Text("text",
  style: TextStyle(
    fontSize: 5.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz6
fontSize: 6.0,
#END

#TEMPLATE sw6
const SizedBox(
  width: 6.0,
),
#END

#TEMPLATE sh6
const SizedBox(
  height: 6.0,
),
#END

#TEMPLATE p6
padding: const EdgeInsets.all(6.0),
#END

#TEMPLATE plr6
padding: const EdgeInsets.only(left: 6.0, right: 6.0,),
#END

#TEMPLATE ptb6
padding: const EdgeInsets.only(top: 6.0, bottom: 6.0,),
#END

#TEMPLATE pt6
padding: const EdgeInsets.only(top: 6.0,),
#END

#TEMPLATE pr6
padding: const EdgeInsets.only(right: 6.0,),
#END

#TEMPLATE pb6
padding: const EdgeInsets.only(bottom: 6.0,),
#END

#TEMPLATE pl6
padding: const EdgeInsets.only(left: 6.0,),
#END


#TEMPLATE m6
margin: const EdgeInsets.all(6.0),
#END

#TEMPLATE mlr6
margin: const EdgeInsets.only(left: 6.0, right: 6.0,),
#END

#TEMPLATE mtb6
margin: const EdgeInsets.only(top: 6.0, bottom: 6.0,),
#END

#TEMPLATE mt6
margin: const EdgeInsets.only(top: 6.0,),
#END

#TEMPLATE mr6
margin: const EdgeInsets.only(right: 6.0,),
#END

#TEMPLATE mb6
margin: const EdgeInsets.only(bottom: 6.0,),
#END

#TEMPLATE ml6
margin: const EdgeInsets.only(left: 6.0,),
#END

#TEMPLATE mv6
margin: const EdgeInsets.symmetric(vertical: 6.0),
#END

#TEMPLATE mh6
margin: const EdgeInsets.symmetric(horizontal: 6.0),
#END

#TEMPLATE pv6
padding: const EdgeInsets.symmetric(vertical: 6.0),
#END

#TEMPLATE ph6
padding: const EdgeInsets.symmetric(horizontal: 6.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs6
fontSize: 6.0,
#END

#TEMPLATE text6
Text("text",
  style: TextStyle(
    fontSize: 6.0,
  ),
),
#END

#TEMPLATE textb6
Text("text",
  style: TextStyle(
    fontSize: 6.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz7
fontSize: 7.0,
#END

#TEMPLATE sw7
const SizedBox(
  width: 7.0,
),
#END

#TEMPLATE sh7
const SizedBox(
  height: 7.0,
),
#END

#TEMPLATE p7
padding: const EdgeInsets.all(7.0),
#END

#TEMPLATE plr7
padding: const EdgeInsets.only(left: 7.0, right: 7.0,),
#END

#TEMPLATE ptb7
padding: const EdgeInsets.only(top: 7.0, bottom: 7.0,),
#END

#TEMPLATE pt7
padding: const EdgeInsets.only(top: 7.0,),
#END

#TEMPLATE pr7
padding: const EdgeInsets.only(right: 7.0,),
#END

#TEMPLATE pb7
padding: const EdgeInsets.only(bottom: 7.0,),
#END

#TEMPLATE pl7
padding: const EdgeInsets.only(left: 7.0,),
#END


#TEMPLATE m7
margin: const EdgeInsets.all(7.0),
#END

#TEMPLATE mlr7
margin: const EdgeInsets.only(left: 7.0, right: 7.0,),
#END

#TEMPLATE mtb7
margin: const EdgeInsets.only(top: 7.0, bottom: 7.0,),
#END

#TEMPLATE mt7
margin: const EdgeInsets.only(top: 7.0,),
#END

#TEMPLATE mr7
margin: const EdgeInsets.only(right: 7.0,),
#END

#TEMPLATE mb7
margin: const EdgeInsets.only(bottom: 7.0,),
#END

#TEMPLATE ml7
margin: const EdgeInsets.only(left: 7.0,),
#END

#TEMPLATE mv7
margin: const EdgeInsets.symmetric(vertical: 7.0),
#END

#TEMPLATE mh7
margin: const EdgeInsets.symmetric(horizontal: 7.0),
#END

#TEMPLATE pv7
padding: const EdgeInsets.symmetric(vertical: 7.0),
#END

#TEMPLATE ph7
padding: const EdgeInsets.symmetric(horizontal: 7.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs7
fontSize: 7.0,
#END

#TEMPLATE text7
Text("text",
  style: TextStyle(
    fontSize: 7.0,
  ),
),
#END

#TEMPLATE textb7
Text("text",
  style: TextStyle(
    fontSize: 7.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz8
fontSize: 8.0,
#END

#TEMPLATE sw8
const SizedBox(
  width: 8.0,
),
#END

#TEMPLATE sh8
const SizedBox(
  height: 8.0,
),
#END

#TEMPLATE p8
padding: const EdgeInsets.all(8.0),
#END

#TEMPLATE plr8
padding: const EdgeInsets.only(left: 8.0, right: 8.0,),
#END

#TEMPLATE ptb8
padding: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
#END

#TEMPLATE pt8
padding: const EdgeInsets.only(top: 8.0,),
#END

#TEMPLATE pr8
padding: const EdgeInsets.only(right: 8.0,),
#END

#TEMPLATE pb8
padding: const EdgeInsets.only(bottom: 8.0,),
#END

#TEMPLATE pl8
padding: const EdgeInsets.only(left: 8.0,),
#END


#TEMPLATE m8
margin: const EdgeInsets.all(8.0),
#END

#TEMPLATE mlr8
margin: const EdgeInsets.only(left: 8.0, right: 8.0,),
#END

#TEMPLATE mtb8
margin: const EdgeInsets.only(top: 8.0, bottom: 8.0,),
#END

#TEMPLATE mt8
margin: const EdgeInsets.only(top: 8.0,),
#END

#TEMPLATE mr8
margin: const EdgeInsets.only(right: 8.0,),
#END

#TEMPLATE mb8
margin: const EdgeInsets.only(bottom: 8.0,),
#END

#TEMPLATE ml8
margin: const EdgeInsets.only(left: 8.0,),
#END

#TEMPLATE mv8
margin: const EdgeInsets.symmetric(vertical: 8.0),
#END

#TEMPLATE mh8
margin: const EdgeInsets.symmetric(horizontal: 8.0),
#END

#TEMPLATE pv8
padding: const EdgeInsets.symmetric(vertical: 8.0),
#END

#TEMPLATE ph8
padding: const EdgeInsets.symmetric(horizontal: 8.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs8
fontSize: 8.0,
#END

#TEMPLATE text8
Text("text",
  style: TextStyle(
    fontSize: 8.0,
  ),
),
#END

#TEMPLATE textb8
Text("text",
  style: TextStyle(
    fontSize: 8.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz9
fontSize: 9.0,
#END

#TEMPLATE sw9
const SizedBox(
  width: 9.0,
),
#END

#TEMPLATE sh9
const SizedBox(
  height: 9.0,
),
#END

#TEMPLATE p9
padding: const EdgeInsets.all(9.0),
#END

#TEMPLATE plr9
padding: const EdgeInsets.only(left: 9.0, right: 9.0,),
#END

#TEMPLATE ptb9
padding: const EdgeInsets.only(top: 9.0, bottom: 9.0,),
#END

#TEMPLATE pt9
padding: const EdgeInsets.only(top: 9.0,),
#END

#TEMPLATE pr9
padding: const EdgeInsets.only(right: 9.0,),
#END

#TEMPLATE pb9
padding: const EdgeInsets.only(bottom: 9.0,),
#END

#TEMPLATE pl9
padding: const EdgeInsets.only(left: 9.0,),
#END


#TEMPLATE m9
margin: const EdgeInsets.all(9.0),
#END

#TEMPLATE mlr9
margin: const EdgeInsets.only(left: 9.0, right: 9.0,),
#END

#TEMPLATE mtb9
margin: const EdgeInsets.only(top: 9.0, bottom: 9.0,),
#END

#TEMPLATE mt9
margin: const EdgeInsets.only(top: 9.0,),
#END

#TEMPLATE mr9
margin: const EdgeInsets.only(right: 9.0,),
#END

#TEMPLATE mb9
margin: const EdgeInsets.only(bottom: 9.0,),
#END

#TEMPLATE ml9
margin: const EdgeInsets.only(left: 9.0,),
#END

#TEMPLATE mv9
margin: const EdgeInsets.symmetric(vertical: 9.0),
#END

#TEMPLATE mh9
margin: const EdgeInsets.symmetric(horizontal: 9.0),
#END

#TEMPLATE pv9
padding: const EdgeInsets.symmetric(vertical: 9.0),
#END

#TEMPLATE ph9
padding: const EdgeInsets.symmetric(horizontal: 9.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs9
fontSize: 9.0,
#END

#TEMPLATE text9
Text("text",
  style: TextStyle(
    fontSize: 9.0,
  ),
),
#END

#TEMPLATE textb9
Text("text",
  style: TextStyle(
    fontSize: 9.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz10
fontSize: 10.0,
#END

#TEMPLATE sw10
const SizedBox(
  width: 10.0,
),
#END

#TEMPLATE sh10
const SizedBox(
  height: 10.0,
),
#END

#TEMPLATE p10
padding: const EdgeInsets.all(10.0),
#END

#TEMPLATE plr10
padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
#END

#TEMPLATE ptb10
padding: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
#END

#TEMPLATE pt10
padding: const EdgeInsets.only(top: 10.0,),
#END

#TEMPLATE pr10
padding: const EdgeInsets.only(right: 10.0,),
#END

#TEMPLATE pb10
padding: const EdgeInsets.only(bottom: 10.0,),
#END

#TEMPLATE pl10
padding: const EdgeInsets.only(left: 10.0,),
#END


#TEMPLATE m10
margin: const EdgeInsets.all(10.0),
#END

#TEMPLATE mlr10
margin: const EdgeInsets.only(left: 10.0, right: 10.0,),
#END

#TEMPLATE mtb10
margin: const EdgeInsets.only(top: 10.0, bottom: 10.0,),
#END

#TEMPLATE mt10
margin: const EdgeInsets.only(top: 10.0,),
#END

#TEMPLATE mr10
margin: const EdgeInsets.only(right: 10.0,),
#END

#TEMPLATE mb10
margin: const EdgeInsets.only(bottom: 10.0,),
#END

#TEMPLATE ml10
margin: const EdgeInsets.only(left: 10.0,),
#END

#TEMPLATE mv10
margin: const EdgeInsets.symmetric(vertical: 10.0),
#END

#TEMPLATE mh10
margin: const EdgeInsets.symmetric(horizontal: 10.0),
#END

#TEMPLATE pv10
padding: const EdgeInsets.symmetric(vertical: 10.0),
#END

#TEMPLATE ph10
padding: const EdgeInsets.symmetric(horizontal: 10.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs10
fontSize: 10.0,
#END

#TEMPLATE text10
Text("text",
  style: TextStyle(
    fontSize: 10.0,
  ),
),
#END

#TEMPLATE textb10
Text("text",
  style: TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz11
fontSize: 11.0,
#END

#TEMPLATE sw11
const SizedBox(
  width: 11.0,
),
#END

#TEMPLATE sh11
const SizedBox(
  height: 11.0,
),
#END

#TEMPLATE p11
padding: const EdgeInsets.all(11.0),
#END

#TEMPLATE plr11
padding: const EdgeInsets.only(left: 11.0, right: 11.0,),
#END

#TEMPLATE ptb11
padding: const EdgeInsets.only(top: 11.0, bottom: 11.0,),
#END

#TEMPLATE pt11
padding: const EdgeInsets.only(top: 11.0,),
#END

#TEMPLATE pr11
padding: const EdgeInsets.only(right: 11.0,),
#END

#TEMPLATE pb11
padding: const EdgeInsets.only(bottom: 11.0,),
#END

#TEMPLATE pl11
padding: const EdgeInsets.only(left: 11.0,),
#END


#TEMPLATE m11
margin: const EdgeInsets.all(11.0),
#END

#TEMPLATE mlr11
margin: const EdgeInsets.only(left: 11.0, right: 11.0,),
#END

#TEMPLATE mtb11
margin: const EdgeInsets.only(top: 11.0, bottom: 11.0,),
#END

#TEMPLATE mt11
margin: const EdgeInsets.only(top: 11.0,),
#END

#TEMPLATE mr11
margin: const EdgeInsets.only(right: 11.0,),
#END

#TEMPLATE mb11
margin: const EdgeInsets.only(bottom: 11.0,),
#END

#TEMPLATE ml11
margin: const EdgeInsets.only(left: 11.0,),
#END

#TEMPLATE mv11
margin: const EdgeInsets.symmetric(vertical: 11.0),
#END

#TEMPLATE mh11
margin: const EdgeInsets.symmetric(horizontal: 11.0),
#END

#TEMPLATE pv11
padding: const EdgeInsets.symmetric(vertical: 11.0),
#END

#TEMPLATE ph11
padding: const EdgeInsets.symmetric(horizontal: 11.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs11
fontSize: 11.0,
#END

#TEMPLATE text11
Text("text",
  style: TextStyle(
    fontSize: 11.0,
  ),
),
#END

#TEMPLATE textb11
Text("text",
  style: TextStyle(
    fontSize: 11.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz12
fontSize: 12.0,
#END

#TEMPLATE sw12
const SizedBox(
  width: 12.0,
),
#END

#TEMPLATE sh12
const SizedBox(
  height: 12.0,
),
#END

#TEMPLATE p12
padding: const EdgeInsets.all(12.0),
#END

#TEMPLATE plr12
padding: const EdgeInsets.only(left: 12.0, right: 12.0,),
#END

#TEMPLATE ptb12
padding: const EdgeInsets.only(top: 12.0, bottom: 12.0,),
#END

#TEMPLATE pt12
padding: const EdgeInsets.only(top: 12.0,),
#END

#TEMPLATE pr12
padding: const EdgeInsets.only(right: 12.0,),
#END

#TEMPLATE pb12
padding: const EdgeInsets.only(bottom: 12.0,),
#END

#TEMPLATE pl12
padding: const EdgeInsets.only(left: 12.0,),
#END


#TEMPLATE m12
margin: const EdgeInsets.all(12.0),
#END

#TEMPLATE mlr12
margin: const EdgeInsets.only(left: 12.0, right: 12.0,),
#END

#TEMPLATE mtb12
margin: const EdgeInsets.only(top: 12.0, bottom: 12.0,),
#END

#TEMPLATE mt12
margin: const EdgeInsets.only(top: 12.0,),
#END

#TEMPLATE mr12
margin: const EdgeInsets.only(right: 12.0,),
#END

#TEMPLATE mb12
margin: const EdgeInsets.only(bottom: 12.0,),
#END

#TEMPLATE ml12
margin: const EdgeInsets.only(left: 12.0,),
#END

#TEMPLATE mv12
margin: const EdgeInsets.symmetric(vertical: 12.0),
#END

#TEMPLATE mh12
margin: const EdgeInsets.symmetric(horizontal: 12.0),
#END

#TEMPLATE pv12
padding: const EdgeInsets.symmetric(vertical: 12.0),
#END

#TEMPLATE ph12
padding: const EdgeInsets.symmetric(horizontal: 12.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs12
fontSize: 12.0,
#END

#TEMPLATE text12
Text("text",
  style: TextStyle(
    fontSize: 12.0,
  ),
),
#END

#TEMPLATE textb12
Text("text",
  style: TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz13
fontSize: 13.0,
#END

#TEMPLATE sw13
const SizedBox(
  width: 13.0,
),
#END

#TEMPLATE sh13
const SizedBox(
  height: 13.0,
),
#END

#TEMPLATE p13
padding: const EdgeInsets.all(13.0),
#END

#TEMPLATE plr13
padding: const EdgeInsets.only(left: 13.0, right: 13.0,),
#END

#TEMPLATE ptb13
padding: const EdgeInsets.only(top: 13.0, bottom: 13.0,),
#END

#TEMPLATE pt13
padding: const EdgeInsets.only(top: 13.0,),
#END

#TEMPLATE pr13
padding: const EdgeInsets.only(right: 13.0,),
#END

#TEMPLATE pb13
padding: const EdgeInsets.only(bottom: 13.0,),
#END

#TEMPLATE pl13
padding: const EdgeInsets.only(left: 13.0,),
#END


#TEMPLATE m13
margin: const EdgeInsets.all(13.0),
#END

#TEMPLATE mlr13
margin: const EdgeInsets.only(left: 13.0, right: 13.0,),
#END

#TEMPLATE mtb13
margin: const EdgeInsets.only(top: 13.0, bottom: 13.0,),
#END

#TEMPLATE mt13
margin: const EdgeInsets.only(top: 13.0,),
#END

#TEMPLATE mr13
margin: const EdgeInsets.only(right: 13.0,),
#END

#TEMPLATE mb13
margin: const EdgeInsets.only(bottom: 13.0,),
#END

#TEMPLATE ml13
margin: const EdgeInsets.only(left: 13.0,),
#END

#TEMPLATE mv13
margin: const EdgeInsets.symmetric(vertical: 13.0),
#END

#TEMPLATE mh13
margin: const EdgeInsets.symmetric(horizontal: 13.0),
#END

#TEMPLATE pv13
padding: const EdgeInsets.symmetric(vertical: 13.0),
#END

#TEMPLATE ph13
padding: const EdgeInsets.symmetric(horizontal: 13.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs13
fontSize: 13.0,
#END

#TEMPLATE text13
Text("text",
  style: TextStyle(
    fontSize: 13.0,
  ),
),
#END

#TEMPLATE textb13
Text("text",
  style: TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz14
fontSize: 14.0,
#END

#TEMPLATE sw14
const SizedBox(
  width: 14.0,
),
#END

#TEMPLATE sh14
const SizedBox(
  height: 14.0,
),
#END

#TEMPLATE p14
padding: const EdgeInsets.all(14.0),
#END

#TEMPLATE plr14
padding: const EdgeInsets.only(left: 14.0, right: 14.0,),
#END

#TEMPLATE ptb14
padding: const EdgeInsets.only(top: 14.0, bottom: 14.0,),
#END

#TEMPLATE pt14
padding: const EdgeInsets.only(top: 14.0,),
#END

#TEMPLATE pr14
padding: const EdgeInsets.only(right: 14.0,),
#END

#TEMPLATE pb14
padding: const EdgeInsets.only(bottom: 14.0,),
#END

#TEMPLATE pl14
padding: const EdgeInsets.only(left: 14.0,),
#END


#TEMPLATE m14
margin: const EdgeInsets.all(14.0),
#END

#TEMPLATE mlr14
margin: const EdgeInsets.only(left: 14.0, right: 14.0,),
#END

#TEMPLATE mtb14
margin: const EdgeInsets.only(top: 14.0, bottom: 14.0,),
#END

#TEMPLATE mt14
margin: const EdgeInsets.only(top: 14.0,),
#END

#TEMPLATE mr14
margin: const EdgeInsets.only(right: 14.0,),
#END

#TEMPLATE mb14
margin: const EdgeInsets.only(bottom: 14.0,),
#END

#TEMPLATE ml14
margin: const EdgeInsets.only(left: 14.0,),
#END

#TEMPLATE mv14
margin: const EdgeInsets.symmetric(vertical: 14.0),
#END

#TEMPLATE mh14
margin: const EdgeInsets.symmetric(horizontal: 14.0),
#END

#TEMPLATE pv14
padding: const EdgeInsets.symmetric(vertical: 14.0),
#END

#TEMPLATE ph14
padding: const EdgeInsets.symmetric(horizontal: 14.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs14
fontSize: 14.0,
#END

#TEMPLATE text14
Text("text",
  style: TextStyle(
    fontSize: 14.0,
  ),
),
#END

#TEMPLATE textb14
Text("text",
  style: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz15
fontSize: 15.0,
#END

#TEMPLATE sw15
const SizedBox(
  width: 15.0,
),
#END

#TEMPLATE sh15
const SizedBox(
  height: 15.0,
),
#END

#TEMPLATE p15
padding: const EdgeInsets.all(15.0),
#END

#TEMPLATE plr15
padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
#END

#TEMPLATE ptb15
padding: const EdgeInsets.only(top: 15.0, bottom: 15.0,),
#END

#TEMPLATE pt15
padding: const EdgeInsets.only(top: 15.0,),
#END

#TEMPLATE pr15
padding: const EdgeInsets.only(right: 15.0,),
#END

#TEMPLATE pb15
padding: const EdgeInsets.only(bottom: 15.0,),
#END

#TEMPLATE pl15
padding: const EdgeInsets.only(left: 15.0,),
#END


#TEMPLATE m15
margin: const EdgeInsets.all(15.0),
#END

#TEMPLATE mlr15
margin: const EdgeInsets.only(left: 15.0, right: 15.0,),
#END

#TEMPLATE mtb15
margin: const EdgeInsets.only(top: 15.0, bottom: 15.0,),
#END

#TEMPLATE mt15
margin: const EdgeInsets.only(top: 15.0,),
#END

#TEMPLATE mr15
margin: const EdgeInsets.only(right: 15.0,),
#END

#TEMPLATE mb15
margin: const EdgeInsets.only(bottom: 15.0,),
#END

#TEMPLATE ml15
margin: const EdgeInsets.only(left: 15.0,),
#END

#TEMPLATE mv15
margin: const EdgeInsets.symmetric(vertical: 15.0),
#END

#TEMPLATE mh15
margin: const EdgeInsets.symmetric(horizontal: 15.0),
#END

#TEMPLATE pv15
padding: const EdgeInsets.symmetric(vertical: 15.0),
#END

#TEMPLATE ph15
padding: const EdgeInsets.symmetric(horizontal: 15.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs15
fontSize: 15.0,
#END

#TEMPLATE text15
Text("text",
  style: TextStyle(
    fontSize: 15.0,
  ),
),
#END

#TEMPLATE textb15
Text("text",
  style: TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz16
fontSize: 16.0,
#END

#TEMPLATE sw16
const SizedBox(
  width: 16.0,
),
#END

#TEMPLATE sh16
const SizedBox(
  height: 16.0,
),
#END

#TEMPLATE p16
padding: const EdgeInsets.all(16.0),
#END

#TEMPLATE plr16
padding: const EdgeInsets.only(left: 16.0, right: 16.0,),
#END

#TEMPLATE ptb16
padding: const EdgeInsets.only(top: 16.0, bottom: 16.0,),
#END

#TEMPLATE pt16
padding: const EdgeInsets.only(top: 16.0,),
#END

#TEMPLATE pr16
padding: const EdgeInsets.only(right: 16.0,),
#END

#TEMPLATE pb16
padding: const EdgeInsets.only(bottom: 16.0,),
#END

#TEMPLATE pl16
padding: const EdgeInsets.only(left: 16.0,),
#END


#TEMPLATE m16
margin: const EdgeInsets.all(16.0),
#END

#TEMPLATE mlr16
margin: const EdgeInsets.only(left: 16.0, right: 16.0,),
#END

#TEMPLATE mtb16
margin: const EdgeInsets.only(top: 16.0, bottom: 16.0,),
#END

#TEMPLATE mt16
margin: const EdgeInsets.only(top: 16.0,),
#END

#TEMPLATE mr16
margin: const EdgeInsets.only(right: 16.0,),
#END

#TEMPLATE mb16
margin: const EdgeInsets.only(bottom: 16.0,),
#END

#TEMPLATE ml16
margin: const EdgeInsets.only(left: 16.0,),
#END

#TEMPLATE mv16
margin: const EdgeInsets.symmetric(vertical: 16.0),
#END

#TEMPLATE mh16
margin: const EdgeInsets.symmetric(horizontal: 16.0),
#END

#TEMPLATE pv16
padding: const EdgeInsets.symmetric(vertical: 16.0),
#END

#TEMPLATE ph16
padding: const EdgeInsets.symmetric(horizontal: 16.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs16
fontSize: 16.0,
#END

#TEMPLATE text16
Text("text",
  style: TextStyle(
    fontSize: 16.0,
  ),
),
#END

#TEMPLATE textb16
Text("text",
  style: TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz17
fontSize: 17.0,
#END

#TEMPLATE sw17
const SizedBox(
  width: 17.0,
),
#END

#TEMPLATE sh17
const SizedBox(
  height: 17.0,
),
#END

#TEMPLATE p17
padding: const EdgeInsets.all(17.0),
#END

#TEMPLATE plr17
padding: const EdgeInsets.only(left: 17.0, right: 17.0,),
#END

#TEMPLATE ptb17
padding: const EdgeInsets.only(top: 17.0, bottom: 17.0,),
#END

#TEMPLATE pt17
padding: const EdgeInsets.only(top: 17.0,),
#END

#TEMPLATE pr17
padding: const EdgeInsets.only(right: 17.0,),
#END

#TEMPLATE pb17
padding: const EdgeInsets.only(bottom: 17.0,),
#END

#TEMPLATE pl17
padding: const EdgeInsets.only(left: 17.0,),
#END


#TEMPLATE m17
margin: const EdgeInsets.all(17.0),
#END

#TEMPLATE mlr17
margin: const EdgeInsets.only(left: 17.0, right: 17.0,),
#END

#TEMPLATE mtb17
margin: const EdgeInsets.only(top: 17.0, bottom: 17.0,),
#END

#TEMPLATE mt17
margin: const EdgeInsets.only(top: 17.0,),
#END

#TEMPLATE mr17
margin: const EdgeInsets.only(right: 17.0,),
#END

#TEMPLATE mb17
margin: const EdgeInsets.only(bottom: 17.0,),
#END

#TEMPLATE ml17
margin: const EdgeInsets.only(left: 17.0,),
#END

#TEMPLATE mv17
margin: const EdgeInsets.symmetric(vertical: 17.0),
#END

#TEMPLATE mh17
margin: const EdgeInsets.symmetric(horizontal: 17.0),
#END

#TEMPLATE pv17
padding: const EdgeInsets.symmetric(vertical: 17.0),
#END

#TEMPLATE ph17
padding: const EdgeInsets.symmetric(horizontal: 17.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs17
fontSize: 17.0,
#END

#TEMPLATE text17
Text("text",
  style: TextStyle(
    fontSize: 17.0,
  ),
),
#END

#TEMPLATE textb17
Text("text",
  style: TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz18
fontSize: 18.0,
#END

#TEMPLATE sw18
const SizedBox(
  width: 18.0,
),
#END

#TEMPLATE sh18
const SizedBox(
  height: 18.0,
),
#END

#TEMPLATE p18
padding: const EdgeInsets.all(18.0),
#END

#TEMPLATE plr18
padding: const EdgeInsets.only(left: 18.0, right: 18.0,),
#END

#TEMPLATE ptb18
padding: const EdgeInsets.only(top: 18.0, bottom: 18.0,),
#END

#TEMPLATE pt18
padding: const EdgeInsets.only(top: 18.0,),
#END

#TEMPLATE pr18
padding: const EdgeInsets.only(right: 18.0,),
#END

#TEMPLATE pb18
padding: const EdgeInsets.only(bottom: 18.0,),
#END

#TEMPLATE pl18
padding: const EdgeInsets.only(left: 18.0,),
#END


#TEMPLATE m18
margin: const EdgeInsets.all(18.0),
#END

#TEMPLATE mlr18
margin: const EdgeInsets.only(left: 18.0, right: 18.0,),
#END

#TEMPLATE mtb18
margin: const EdgeInsets.only(top: 18.0, bottom: 18.0,),
#END

#TEMPLATE mt18
margin: const EdgeInsets.only(top: 18.0,),
#END

#TEMPLATE mr18
margin: const EdgeInsets.only(right: 18.0,),
#END

#TEMPLATE mb18
margin: const EdgeInsets.only(bottom: 18.0,),
#END

#TEMPLATE ml18
margin: const EdgeInsets.only(left: 18.0,),
#END

#TEMPLATE mv18
margin: const EdgeInsets.symmetric(vertical: 18.0),
#END

#TEMPLATE mh18
margin: const EdgeInsets.symmetric(horizontal: 18.0),
#END

#TEMPLATE pv18
padding: const EdgeInsets.symmetric(vertical: 18.0),
#END

#TEMPLATE ph18
padding: const EdgeInsets.symmetric(horizontal: 18.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs18
fontSize: 18.0,
#END

#TEMPLATE text18
Text("text",
  style: TextStyle(
    fontSize: 18.0,
  ),
),
#END

#TEMPLATE textb18
Text("text",
  style: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz19
fontSize: 19.0,
#END

#TEMPLATE sw19
const SizedBox(
  width: 19.0,
),
#END

#TEMPLATE sh19
const SizedBox(
  height: 19.0,
),
#END

#TEMPLATE p19
padding: const EdgeInsets.all(19.0),
#END

#TEMPLATE plr19
padding: const EdgeInsets.only(left: 19.0, right: 19.0,),
#END

#TEMPLATE ptb19
padding: const EdgeInsets.only(top: 19.0, bottom: 19.0,),
#END

#TEMPLATE pt19
padding: const EdgeInsets.only(top: 19.0,),
#END

#TEMPLATE pr19
padding: const EdgeInsets.only(right: 19.0,),
#END

#TEMPLATE pb19
padding: const EdgeInsets.only(bottom: 19.0,),
#END

#TEMPLATE pl19
padding: const EdgeInsets.only(left: 19.0,),
#END


#TEMPLATE m19
margin: const EdgeInsets.all(19.0),
#END

#TEMPLATE mlr19
margin: const EdgeInsets.only(left: 19.0, right: 19.0,),
#END

#TEMPLATE mtb19
margin: const EdgeInsets.only(top: 19.0, bottom: 19.0,),
#END

#TEMPLATE mt19
margin: const EdgeInsets.only(top: 19.0,),
#END

#TEMPLATE mr19
margin: const EdgeInsets.only(right: 19.0,),
#END

#TEMPLATE mb19
margin: const EdgeInsets.only(bottom: 19.0,),
#END

#TEMPLATE ml19
margin: const EdgeInsets.only(left: 19.0,),
#END

#TEMPLATE mv19
margin: const EdgeInsets.symmetric(vertical: 19.0),
#END

#TEMPLATE mh19
margin: const EdgeInsets.symmetric(horizontal: 19.0),
#END

#TEMPLATE pv19
padding: const EdgeInsets.symmetric(vertical: 19.0),
#END

#TEMPLATE ph19
padding: const EdgeInsets.symmetric(horizontal: 19.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs19
fontSize: 19.0,
#END

#TEMPLATE text19
Text("text",
  style: TextStyle(
    fontSize: 19.0,
  ),
),
#END

#TEMPLATE textb19
Text("text",
  style: TextStyle(
    fontSize: 19.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz20
fontSize: 20.0,
#END

#TEMPLATE sw20
const SizedBox(
  width: 20.0,
),
#END

#TEMPLATE sh20
const SizedBox(
  height: 20.0,
),
#END

#TEMPLATE p20
padding: const EdgeInsets.all(20.0),
#END

#TEMPLATE plr20
padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
#END

#TEMPLATE ptb20
padding: const EdgeInsets.only(top: 20.0, bottom: 20.0,),
#END

#TEMPLATE pt20
padding: const EdgeInsets.only(top: 20.0,),
#END

#TEMPLATE pr20
padding: const EdgeInsets.only(right: 20.0,),
#END

#TEMPLATE pb20
padding: const EdgeInsets.only(bottom: 20.0,),
#END

#TEMPLATE pl20
padding: const EdgeInsets.only(left: 20.0,),
#END


#TEMPLATE m20
margin: const EdgeInsets.all(20.0),
#END

#TEMPLATE mlr20
margin: const EdgeInsets.only(left: 20.0, right: 20.0,),
#END

#TEMPLATE mtb20
margin: const EdgeInsets.only(top: 20.0, bottom: 20.0,),
#END

#TEMPLATE mt20
margin: const EdgeInsets.only(top: 20.0,),
#END

#TEMPLATE mr20
margin: const EdgeInsets.only(right: 20.0,),
#END

#TEMPLATE mb20
margin: const EdgeInsets.only(bottom: 20.0,),
#END

#TEMPLATE ml20
margin: const EdgeInsets.only(left: 20.0,),
#END

#TEMPLATE mv20
margin: const EdgeInsets.symmetric(vertical: 20.0),
#END

#TEMPLATE mh20
margin: const EdgeInsets.symmetric(horizontal: 20.0),
#END

#TEMPLATE pv20
padding: const EdgeInsets.symmetric(vertical: 20.0),
#END

#TEMPLATE ph20
padding: const EdgeInsets.symmetric(horizontal: 20.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs20
fontSize: 20.0,
#END

#TEMPLATE text20
Text("text",
  style: TextStyle(
    fontSize: 20.0,
  ),
),
#END

#TEMPLATE textb20
Text("text",
  style: TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz21
fontSize: 21.0,
#END

#TEMPLATE sw21
const SizedBox(
  width: 21.0,
),
#END

#TEMPLATE sh21
const SizedBox(
  height: 21.0,
),
#END

#TEMPLATE p21
padding: const EdgeInsets.all(21.0),
#END

#TEMPLATE plr21
padding: const EdgeInsets.only(left: 21.0, right: 21.0,),
#END

#TEMPLATE ptb21
padding: const EdgeInsets.only(top: 21.0, bottom: 21.0,),
#END

#TEMPLATE pt21
padding: const EdgeInsets.only(top: 21.0,),
#END

#TEMPLATE pr21
padding: const EdgeInsets.only(right: 21.0,),
#END

#TEMPLATE pb21
padding: const EdgeInsets.only(bottom: 21.0,),
#END

#TEMPLATE pl21
padding: const EdgeInsets.only(left: 21.0,),
#END


#TEMPLATE m21
margin: const EdgeInsets.all(21.0),
#END

#TEMPLATE mlr21
margin: const EdgeInsets.only(left: 21.0, right: 21.0,),
#END

#TEMPLATE mtb21
margin: const EdgeInsets.only(top: 21.0, bottom: 21.0,),
#END

#TEMPLATE mt21
margin: const EdgeInsets.only(top: 21.0,),
#END

#TEMPLATE mr21
margin: const EdgeInsets.only(right: 21.0,),
#END

#TEMPLATE mb21
margin: const EdgeInsets.only(bottom: 21.0,),
#END

#TEMPLATE ml21
margin: const EdgeInsets.only(left: 21.0,),
#END

#TEMPLATE mv21
margin: const EdgeInsets.symmetric(vertical: 21.0),
#END

#TEMPLATE mh21
margin: const EdgeInsets.symmetric(horizontal: 21.0),
#END

#TEMPLATE pv21
padding: const EdgeInsets.symmetric(vertical: 21.0),
#END

#TEMPLATE ph21
padding: const EdgeInsets.symmetric(horizontal: 21.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs21
fontSize: 21.0,
#END

#TEMPLATE text21
Text("text",
  style: TextStyle(
    fontSize: 21.0,
  ),
),
#END

#TEMPLATE textb21
Text("text",
  style: TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz22
fontSize: 22.0,
#END

#TEMPLATE sw22
const SizedBox(
  width: 22.0,
),
#END

#TEMPLATE sh22
const SizedBox(
  height: 22.0,
),
#END

#TEMPLATE p22
padding: const EdgeInsets.all(22.0),
#END

#TEMPLATE plr22
padding: const EdgeInsets.only(left: 22.0, right: 22.0,),
#END

#TEMPLATE ptb22
padding: const EdgeInsets.only(top: 22.0, bottom: 22.0,),
#END

#TEMPLATE pt22
padding: const EdgeInsets.only(top: 22.0,),
#END

#TEMPLATE pr22
padding: const EdgeInsets.only(right: 22.0,),
#END

#TEMPLATE pb22
padding: const EdgeInsets.only(bottom: 22.0,),
#END

#TEMPLATE pl22
padding: const EdgeInsets.only(left: 22.0,),
#END


#TEMPLATE m22
margin: const EdgeInsets.all(22.0),
#END

#TEMPLATE mlr22
margin: const EdgeInsets.only(left: 22.0, right: 22.0,),
#END

#TEMPLATE mtb22
margin: const EdgeInsets.only(top: 22.0, bottom: 22.0,),
#END

#TEMPLATE mt22
margin: const EdgeInsets.only(top: 22.0,),
#END

#TEMPLATE mr22
margin: const EdgeInsets.only(right: 22.0,),
#END

#TEMPLATE mb22
margin: const EdgeInsets.only(bottom: 22.0,),
#END

#TEMPLATE ml22
margin: const EdgeInsets.only(left: 22.0,),
#END

#TEMPLATE mv22
margin: const EdgeInsets.symmetric(vertical: 22.0),
#END

#TEMPLATE mh22
margin: const EdgeInsets.symmetric(horizontal: 22.0),
#END

#TEMPLATE pv22
padding: const EdgeInsets.symmetric(vertical: 22.0),
#END

#TEMPLATE ph22
padding: const EdgeInsets.symmetric(horizontal: 22.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs22
fontSize: 22.0,
#END

#TEMPLATE text22
Text("text",
  style: TextStyle(
    fontSize: 22.0,
  ),
),
#END

#TEMPLATE textb22
Text("text",
  style: TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz23
fontSize: 23.0,
#END

#TEMPLATE sw23
const SizedBox(
  width: 23.0,
),
#END

#TEMPLATE sh23
const SizedBox(
  height: 23.0,
),
#END

#TEMPLATE p23
padding: const EdgeInsets.all(23.0),
#END

#TEMPLATE plr23
padding: const EdgeInsets.only(left: 23.0, right: 23.0,),
#END

#TEMPLATE ptb23
padding: const EdgeInsets.only(top: 23.0, bottom: 23.0,),
#END

#TEMPLATE pt23
padding: const EdgeInsets.only(top: 23.0,),
#END

#TEMPLATE pr23
padding: const EdgeInsets.only(right: 23.0,),
#END

#TEMPLATE pb23
padding: const EdgeInsets.only(bottom: 23.0,),
#END

#TEMPLATE pl23
padding: const EdgeInsets.only(left: 23.0,),
#END


#TEMPLATE m23
margin: const EdgeInsets.all(23.0),
#END

#TEMPLATE mlr23
margin: const EdgeInsets.only(left: 23.0, right: 23.0,),
#END

#TEMPLATE mtb23
margin: const EdgeInsets.only(top: 23.0, bottom: 23.0,),
#END

#TEMPLATE mt23
margin: const EdgeInsets.only(top: 23.0,),
#END

#TEMPLATE mr23
margin: const EdgeInsets.only(right: 23.0,),
#END

#TEMPLATE mb23
margin: const EdgeInsets.only(bottom: 23.0,),
#END

#TEMPLATE ml23
margin: const EdgeInsets.only(left: 23.0,),
#END

#TEMPLATE mv23
margin: const EdgeInsets.symmetric(vertical: 23.0),
#END

#TEMPLATE mh23
margin: const EdgeInsets.symmetric(horizontal: 23.0),
#END

#TEMPLATE pv23
padding: const EdgeInsets.symmetric(vertical: 23.0),
#END

#TEMPLATE ph23
padding: const EdgeInsets.symmetric(horizontal: 23.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs23
fontSize: 23.0,
#END

#TEMPLATE text23
Text("text",
  style: TextStyle(
    fontSize: 23.0,
  ),
),
#END

#TEMPLATE textb23
Text("text",
  style: TextStyle(
    fontSize: 23.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz24
fontSize: 24.0,
#END

#TEMPLATE sw24
const SizedBox(
  width: 24.0,
),
#END

#TEMPLATE sh24
const SizedBox(
  height: 24.0,
),
#END

#TEMPLATE p24
padding: const EdgeInsets.all(24.0),
#END

#TEMPLATE plr24
padding: const EdgeInsets.only(left: 24.0, right: 24.0,),
#END

#TEMPLATE ptb24
padding: const EdgeInsets.only(top: 24.0, bottom: 24.0,),
#END

#TEMPLATE pt24
padding: const EdgeInsets.only(top: 24.0,),
#END

#TEMPLATE pr24
padding: const EdgeInsets.only(right: 24.0,),
#END

#TEMPLATE pb24
padding: const EdgeInsets.only(bottom: 24.0,),
#END

#TEMPLATE pl24
padding: const EdgeInsets.only(left: 24.0,),
#END


#TEMPLATE m24
margin: const EdgeInsets.all(24.0),
#END

#TEMPLATE mlr24
margin: const EdgeInsets.only(left: 24.0, right: 24.0,),
#END

#TEMPLATE mtb24
margin: const EdgeInsets.only(top: 24.0, bottom: 24.0,),
#END

#TEMPLATE mt24
margin: const EdgeInsets.only(top: 24.0,),
#END

#TEMPLATE mr24
margin: const EdgeInsets.only(right: 24.0,),
#END

#TEMPLATE mb24
margin: const EdgeInsets.only(bottom: 24.0,),
#END

#TEMPLATE ml24
margin: const EdgeInsets.only(left: 24.0,),
#END

#TEMPLATE mv24
margin: const EdgeInsets.symmetric(vertical: 24.0),
#END

#TEMPLATE mh24
margin: const EdgeInsets.symmetric(horizontal: 24.0),
#END

#TEMPLATE pv24
padding: const EdgeInsets.symmetric(vertical: 24.0),
#END

#TEMPLATE ph24
padding: const EdgeInsets.symmetric(horizontal: 24.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs24
fontSize: 24.0,
#END

#TEMPLATE text24
Text("text",
  style: TextStyle(
    fontSize: 24.0,
  ),
),
#END

#TEMPLATE textb24
Text("text",
  style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz25
fontSize: 25.0,
#END

#TEMPLATE sw25
const SizedBox(
  width: 25.0,
),
#END

#TEMPLATE sh25
const SizedBox(
  height: 25.0,
),
#END

#TEMPLATE p25
padding: const EdgeInsets.all(25.0),
#END

#TEMPLATE plr25
padding: const EdgeInsets.only(left: 25.0, right: 25.0,),
#END

#TEMPLATE ptb25
padding: const EdgeInsets.only(top: 25.0, bottom: 25.0,),
#END

#TEMPLATE pt25
padding: const EdgeInsets.only(top: 25.0,),
#END

#TEMPLATE pr25
padding: const EdgeInsets.only(right: 25.0,),
#END

#TEMPLATE pb25
padding: const EdgeInsets.only(bottom: 25.0,),
#END

#TEMPLATE pl25
padding: const EdgeInsets.only(left: 25.0,),
#END


#TEMPLATE m25
margin: const EdgeInsets.all(25.0),
#END

#TEMPLATE mlr25
margin: const EdgeInsets.only(left: 25.0, right: 25.0,),
#END

#TEMPLATE mtb25
margin: const EdgeInsets.only(top: 25.0, bottom: 25.0,),
#END

#TEMPLATE mt25
margin: const EdgeInsets.only(top: 25.0,),
#END

#TEMPLATE mr25
margin: const EdgeInsets.only(right: 25.0,),
#END

#TEMPLATE mb25
margin: const EdgeInsets.only(bottom: 25.0,),
#END

#TEMPLATE ml25
margin: const EdgeInsets.only(left: 25.0,),
#END

#TEMPLATE mv25
margin: const EdgeInsets.symmetric(vertical: 25.0),
#END

#TEMPLATE mh25
margin: const EdgeInsets.symmetric(horizontal: 25.0),
#END

#TEMPLATE pv25
padding: const EdgeInsets.symmetric(vertical: 25.0),
#END

#TEMPLATE ph25
padding: const EdgeInsets.symmetric(horizontal: 25.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs25
fontSize: 25.0,
#END

#TEMPLATE text25
Text("text",
  style: TextStyle(
    fontSize: 25.0,
  ),
),
#END

#TEMPLATE textb25
Text("text",
  style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz26
fontSize: 26.0,
#END

#TEMPLATE sw26
const SizedBox(
  width: 26.0,
),
#END

#TEMPLATE sh26
const SizedBox(
  height: 26.0,
),
#END

#TEMPLATE p26
padding: const EdgeInsets.all(26.0),
#END

#TEMPLATE plr26
padding: const EdgeInsets.only(left: 26.0, right: 26.0,),
#END

#TEMPLATE ptb26
padding: const EdgeInsets.only(top: 26.0, bottom: 26.0,),
#END

#TEMPLATE pt26
padding: const EdgeInsets.only(top: 26.0,),
#END

#TEMPLATE pr26
padding: const EdgeInsets.only(right: 26.0,),
#END

#TEMPLATE pb26
padding: const EdgeInsets.only(bottom: 26.0,),
#END

#TEMPLATE pl26
padding: const EdgeInsets.only(left: 26.0,),
#END


#TEMPLATE m26
margin: const EdgeInsets.all(26.0),
#END

#TEMPLATE mlr26
margin: const EdgeInsets.only(left: 26.0, right: 26.0,),
#END

#TEMPLATE mtb26
margin: const EdgeInsets.only(top: 26.0, bottom: 26.0,),
#END

#TEMPLATE mt26
margin: const EdgeInsets.only(top: 26.0,),
#END

#TEMPLATE mr26
margin: const EdgeInsets.only(right: 26.0,),
#END

#TEMPLATE mb26
margin: const EdgeInsets.only(bottom: 26.0,),
#END

#TEMPLATE ml26
margin: const EdgeInsets.only(left: 26.0,),
#END

#TEMPLATE mv26
margin: const EdgeInsets.symmetric(vertical: 26.0),
#END

#TEMPLATE mh26
margin: const EdgeInsets.symmetric(horizontal: 26.0),
#END

#TEMPLATE pv26
padding: const EdgeInsets.symmetric(vertical: 26.0),
#END

#TEMPLATE ph26
padding: const EdgeInsets.symmetric(horizontal: 26.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs26
fontSize: 26.0,
#END

#TEMPLATE text26
Text("text",
  style: TextStyle(
    fontSize: 26.0,
  ),
),
#END

#TEMPLATE textb26
Text("text",
  style: TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz27
fontSize: 27.0,
#END

#TEMPLATE sw27
const SizedBox(
  width: 27.0,
),
#END

#TEMPLATE sh27
const SizedBox(
  height: 27.0,
),
#END

#TEMPLATE p27
padding: const EdgeInsets.all(27.0),
#END

#TEMPLATE plr27
padding: const EdgeInsets.only(left: 27.0, right: 27.0,),
#END

#TEMPLATE ptb27
padding: const EdgeInsets.only(top: 27.0, bottom: 27.0,),
#END

#TEMPLATE pt27
padding: const EdgeInsets.only(top: 27.0,),
#END

#TEMPLATE pr27
padding: const EdgeInsets.only(right: 27.0,),
#END

#TEMPLATE pb27
padding: const EdgeInsets.only(bottom: 27.0,),
#END

#TEMPLATE pl27
padding: const EdgeInsets.only(left: 27.0,),
#END


#TEMPLATE m27
margin: const EdgeInsets.all(27.0),
#END

#TEMPLATE mlr27
margin: const EdgeInsets.only(left: 27.0, right: 27.0,),
#END

#TEMPLATE mtb27
margin: const EdgeInsets.only(top: 27.0, bottom: 27.0,),
#END

#TEMPLATE mt27
margin: const EdgeInsets.only(top: 27.0,),
#END

#TEMPLATE mr27
margin: const EdgeInsets.only(right: 27.0,),
#END

#TEMPLATE mb27
margin: const EdgeInsets.only(bottom: 27.0,),
#END

#TEMPLATE ml27
margin: const EdgeInsets.only(left: 27.0,),
#END

#TEMPLATE mv27
margin: const EdgeInsets.symmetric(vertical: 27.0),
#END

#TEMPLATE mh27
margin: const EdgeInsets.symmetric(horizontal: 27.0),
#END

#TEMPLATE pv27
padding: const EdgeInsets.symmetric(vertical: 27.0),
#END

#TEMPLATE ph27
padding: const EdgeInsets.symmetric(horizontal: 27.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs27
fontSize: 27.0,
#END

#TEMPLATE text27
Text("text",
  style: TextStyle(
    fontSize: 27.0,
  ),
),
#END

#TEMPLATE textb27
Text("text",
  style: TextStyle(
    fontSize: 27.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz28
fontSize: 28.0,
#END

#TEMPLATE sw28
const SizedBox(
  width: 28.0,
),
#END

#TEMPLATE sh28
const SizedBox(
  height: 28.0,
),
#END

#TEMPLATE p28
padding: const EdgeInsets.all(28.0),
#END

#TEMPLATE plr28
padding: const EdgeInsets.only(left: 28.0, right: 28.0,),
#END

#TEMPLATE ptb28
padding: const EdgeInsets.only(top: 28.0, bottom: 28.0,),
#END

#TEMPLATE pt28
padding: const EdgeInsets.only(top: 28.0,),
#END

#TEMPLATE pr28
padding: const EdgeInsets.only(right: 28.0,),
#END

#TEMPLATE pb28
padding: const EdgeInsets.only(bottom: 28.0,),
#END

#TEMPLATE pl28
padding: const EdgeInsets.only(left: 28.0,),
#END


#TEMPLATE m28
margin: const EdgeInsets.all(28.0),
#END

#TEMPLATE mlr28
margin: const EdgeInsets.only(left: 28.0, right: 28.0,),
#END

#TEMPLATE mtb28
margin: const EdgeInsets.only(top: 28.0, bottom: 28.0,),
#END

#TEMPLATE mt28
margin: const EdgeInsets.only(top: 28.0,),
#END

#TEMPLATE mr28
margin: const EdgeInsets.only(right: 28.0,),
#END

#TEMPLATE mb28
margin: const EdgeInsets.only(bottom: 28.0,),
#END

#TEMPLATE ml28
margin: const EdgeInsets.only(left: 28.0,),
#END

#TEMPLATE mv28
margin: const EdgeInsets.symmetric(vertical: 28.0),
#END

#TEMPLATE mh28
margin: const EdgeInsets.symmetric(horizontal: 28.0),
#END

#TEMPLATE pv28
padding: const EdgeInsets.symmetric(vertical: 28.0),
#END

#TEMPLATE ph28
padding: const EdgeInsets.symmetric(horizontal: 28.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs28
fontSize: 28.0,
#END

#TEMPLATE text28
Text("text",
  style: TextStyle(
    fontSize: 28.0,
  ),
),
#END

#TEMPLATE textb28
Text("text",
  style: TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz29
fontSize: 29.0,
#END

#TEMPLATE sw29
const SizedBox(
  width: 29.0,
),
#END

#TEMPLATE sh29
const SizedBox(
  height: 29.0,
),
#END

#TEMPLATE p29
padding: const EdgeInsets.all(29.0),
#END

#TEMPLATE plr29
padding: const EdgeInsets.only(left: 29.0, right: 29.0,),
#END

#TEMPLATE ptb29
padding: const EdgeInsets.only(top: 29.0, bottom: 29.0,),
#END

#TEMPLATE pt29
padding: const EdgeInsets.only(top: 29.0,),
#END

#TEMPLATE pr29
padding: const EdgeInsets.only(right: 29.0,),
#END

#TEMPLATE pb29
padding: const EdgeInsets.only(bottom: 29.0,),
#END

#TEMPLATE pl29
padding: const EdgeInsets.only(left: 29.0,),
#END


#TEMPLATE m29
margin: const EdgeInsets.all(29.0),
#END

#TEMPLATE mlr29
margin: const EdgeInsets.only(left: 29.0, right: 29.0,),
#END

#TEMPLATE mtb29
margin: const EdgeInsets.only(top: 29.0, bottom: 29.0,),
#END

#TEMPLATE mt29
margin: const EdgeInsets.only(top: 29.0,),
#END

#TEMPLATE mr29
margin: const EdgeInsets.only(right: 29.0,),
#END

#TEMPLATE mb29
margin: const EdgeInsets.only(bottom: 29.0,),
#END

#TEMPLATE ml29
margin: const EdgeInsets.only(left: 29.0,),
#END

#TEMPLATE mv29
margin: const EdgeInsets.symmetric(vertical: 29.0),
#END

#TEMPLATE mh29
margin: const EdgeInsets.symmetric(horizontal: 29.0),
#END

#TEMPLATE pv29
padding: const EdgeInsets.symmetric(vertical: 29.0),
#END

#TEMPLATE ph29
padding: const EdgeInsets.symmetric(horizontal: 29.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs29
fontSize: 29.0,
#END

#TEMPLATE text29
Text("text",
  style: TextStyle(
    fontSize: 29.0,
  ),
),
#END

#TEMPLATE textb29
Text("text",
  style: TextStyle(
    fontSize: 29.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz30
fontSize: 30.0,
#END

#TEMPLATE sw30
const SizedBox(
  width: 30.0,
),
#END

#TEMPLATE sh30
const SizedBox(
  height: 30.0,
),
#END

#TEMPLATE p30
padding: const EdgeInsets.all(30.0),
#END

#TEMPLATE plr30
padding: const EdgeInsets.only(left: 30.0, right: 30.0,),
#END

#TEMPLATE ptb30
padding: const EdgeInsets.only(top: 30.0, bottom: 30.0,),
#END

#TEMPLATE pt30
padding: const EdgeInsets.only(top: 30.0,),
#END

#TEMPLATE pr30
padding: const EdgeInsets.only(right: 30.0,),
#END

#TEMPLATE pb30
padding: const EdgeInsets.only(bottom: 30.0,),
#END

#TEMPLATE pl30
padding: const EdgeInsets.only(left: 30.0,),
#END


#TEMPLATE m30
margin: const EdgeInsets.all(30.0),
#END

#TEMPLATE mlr30
margin: const EdgeInsets.only(left: 30.0, right: 30.0,),
#END

#TEMPLATE mtb30
margin: const EdgeInsets.only(top: 30.0, bottom: 30.0,),
#END

#TEMPLATE mt30
margin: const EdgeInsets.only(top: 30.0,),
#END

#TEMPLATE mr30
margin: const EdgeInsets.only(right: 30.0,),
#END

#TEMPLATE mb30
margin: const EdgeInsets.only(bottom: 30.0,),
#END

#TEMPLATE ml30
margin: const EdgeInsets.only(left: 30.0,),
#END

#TEMPLATE mv30
margin: const EdgeInsets.symmetric(vertical: 30.0),
#END

#TEMPLATE mh30
margin: const EdgeInsets.symmetric(horizontal: 30.0),
#END

#TEMPLATE pv30
padding: const EdgeInsets.symmetric(vertical: 30.0),
#END

#TEMPLATE ph30
padding: const EdgeInsets.symmetric(horizontal: 30.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs30
fontSize: 30.0,
#END

#TEMPLATE text30
Text("text",
  style: TextStyle(
    fontSize: 30.0,
  ),
),
#END

#TEMPLATE textb30
Text("text",
  style: TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz31
fontSize: 31.0,
#END

#TEMPLATE sw31
const SizedBox(
  width: 31.0,
),
#END

#TEMPLATE sh31
const SizedBox(
  height: 31.0,
),
#END

#TEMPLATE p31
padding: const EdgeInsets.all(31.0),
#END

#TEMPLATE plr31
padding: const EdgeInsets.only(left: 31.0, right: 31.0,),
#END

#TEMPLATE ptb31
padding: const EdgeInsets.only(top: 31.0, bottom: 31.0,),
#END

#TEMPLATE pt31
padding: const EdgeInsets.only(top: 31.0,),
#END

#TEMPLATE pr31
padding: const EdgeInsets.only(right: 31.0,),
#END

#TEMPLATE pb31
padding: const EdgeInsets.only(bottom: 31.0,),
#END

#TEMPLATE pl31
padding: const EdgeInsets.only(left: 31.0,),
#END


#TEMPLATE m31
margin: const EdgeInsets.all(31.0),
#END

#TEMPLATE mlr31
margin: const EdgeInsets.only(left: 31.0, right: 31.0,),
#END

#TEMPLATE mtb31
margin: const EdgeInsets.only(top: 31.0, bottom: 31.0,),
#END

#TEMPLATE mt31
margin: const EdgeInsets.only(top: 31.0,),
#END

#TEMPLATE mr31
margin: const EdgeInsets.only(right: 31.0,),
#END

#TEMPLATE mb31
margin: const EdgeInsets.only(bottom: 31.0,),
#END

#TEMPLATE ml31
margin: const EdgeInsets.only(left: 31.0,),
#END

#TEMPLATE mv31
margin: const EdgeInsets.symmetric(vertical: 31.0),
#END

#TEMPLATE mh31
margin: const EdgeInsets.symmetric(horizontal: 31.0),
#END

#TEMPLATE pv31
padding: const EdgeInsets.symmetric(vertical: 31.0),
#END

#TEMPLATE ph31
padding: const EdgeInsets.symmetric(horizontal: 31.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs31
fontSize: 31.0,
#END

#TEMPLATE text31
Text("text",
  style: TextStyle(
    fontSize: 31.0,
  ),
),
#END

#TEMPLATE textb31
Text("text",
  style: TextStyle(
    fontSize: 31.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz32
fontSize: 32.0,
#END

#TEMPLATE sw32
const SizedBox(
  width: 32.0,
),
#END

#TEMPLATE sh32
const SizedBox(
  height: 32.0,
),
#END

#TEMPLATE p32
padding: const EdgeInsets.all(32.0),
#END

#TEMPLATE plr32
padding: const EdgeInsets.only(left: 32.0, right: 32.0,),
#END

#TEMPLATE ptb32
padding: const EdgeInsets.only(top: 32.0, bottom: 32.0,),
#END

#TEMPLATE pt32
padding: const EdgeInsets.only(top: 32.0,),
#END

#TEMPLATE pr32
padding: const EdgeInsets.only(right: 32.0,),
#END

#TEMPLATE pb32
padding: const EdgeInsets.only(bottom: 32.0,),
#END

#TEMPLATE pl32
padding: const EdgeInsets.only(left: 32.0,),
#END


#TEMPLATE m32
margin: const EdgeInsets.all(32.0),
#END

#TEMPLATE mlr32
margin: const EdgeInsets.only(left: 32.0, right: 32.0,),
#END

#TEMPLATE mtb32
margin: const EdgeInsets.only(top: 32.0, bottom: 32.0,),
#END

#TEMPLATE mt32
margin: const EdgeInsets.only(top: 32.0,),
#END

#TEMPLATE mr32
margin: const EdgeInsets.only(right: 32.0,),
#END

#TEMPLATE mb32
margin: const EdgeInsets.only(bottom: 32.0,),
#END

#TEMPLATE ml32
margin: const EdgeInsets.only(left: 32.0,),
#END

#TEMPLATE mv32
margin: const EdgeInsets.symmetric(vertical: 32.0),
#END

#TEMPLATE mh32
margin: const EdgeInsets.symmetric(horizontal: 32.0),
#END

#TEMPLATE pv32
padding: const EdgeInsets.symmetric(vertical: 32.0),
#END

#TEMPLATE ph32
padding: const EdgeInsets.symmetric(horizontal: 32.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs32
fontSize: 32.0,
#END

#TEMPLATE text32
Text("text",
  style: TextStyle(
    fontSize: 32.0,
  ),
),
#END

#TEMPLATE textb32
Text("text",
  style: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz33
fontSize: 33.0,
#END

#TEMPLATE sw33
const SizedBox(
  width: 33.0,
),
#END

#TEMPLATE sh33
const SizedBox(
  height: 33.0,
),
#END

#TEMPLATE p33
padding: const EdgeInsets.all(33.0),
#END

#TEMPLATE plr33
padding: const EdgeInsets.only(left: 33.0, right: 33.0,),
#END

#TEMPLATE ptb33
padding: const EdgeInsets.only(top: 33.0, bottom: 33.0,),
#END

#TEMPLATE pt33
padding: const EdgeInsets.only(top: 33.0,),
#END

#TEMPLATE pr33
padding: const EdgeInsets.only(right: 33.0,),
#END

#TEMPLATE pb33
padding: const EdgeInsets.only(bottom: 33.0,),
#END

#TEMPLATE pl33
padding: const EdgeInsets.only(left: 33.0,),
#END


#TEMPLATE m33
margin: const EdgeInsets.all(33.0),
#END

#TEMPLATE mlr33
margin: const EdgeInsets.only(left: 33.0, right: 33.0,),
#END

#TEMPLATE mtb33
margin: const EdgeInsets.only(top: 33.0, bottom: 33.0,),
#END

#TEMPLATE mt33
margin: const EdgeInsets.only(top: 33.0,),
#END

#TEMPLATE mr33
margin: const EdgeInsets.only(right: 33.0,),
#END

#TEMPLATE mb33
margin: const EdgeInsets.only(bottom: 33.0,),
#END

#TEMPLATE ml33
margin: const EdgeInsets.only(left: 33.0,),
#END

#TEMPLATE mv33
margin: const EdgeInsets.symmetric(vertical: 33.0),
#END

#TEMPLATE mh33
margin: const EdgeInsets.symmetric(horizontal: 33.0),
#END

#TEMPLATE pv33
padding: const EdgeInsets.symmetric(vertical: 33.0),
#END

#TEMPLATE ph33
padding: const EdgeInsets.symmetric(horizontal: 33.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs33
fontSize: 33.0,
#END

#TEMPLATE text33
Text("text",
  style: TextStyle(
    fontSize: 33.0,
  ),
),
#END

#TEMPLATE textb33
Text("text",
  style: TextStyle(
    fontSize: 33.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz34
fontSize: 34.0,
#END

#TEMPLATE sw34
const SizedBox(
  width: 34.0,
),
#END

#TEMPLATE sh34
const SizedBox(
  height: 34.0,
),
#END

#TEMPLATE p34
padding: const EdgeInsets.all(34.0),
#END

#TEMPLATE plr34
padding: const EdgeInsets.only(left: 34.0, right: 34.0,),
#END

#TEMPLATE ptb34
padding: const EdgeInsets.only(top: 34.0, bottom: 34.0,),
#END

#TEMPLATE pt34
padding: const EdgeInsets.only(top: 34.0,),
#END

#TEMPLATE pr34
padding: const EdgeInsets.only(right: 34.0,),
#END

#TEMPLATE pb34
padding: const EdgeInsets.only(bottom: 34.0,),
#END

#TEMPLATE pl34
padding: const EdgeInsets.only(left: 34.0,),
#END


#TEMPLATE m34
margin: const EdgeInsets.all(34.0),
#END

#TEMPLATE mlr34
margin: const EdgeInsets.only(left: 34.0, right: 34.0,),
#END

#TEMPLATE mtb34
margin: const EdgeInsets.only(top: 34.0, bottom: 34.0,),
#END

#TEMPLATE mt34
margin: const EdgeInsets.only(top: 34.0,),
#END

#TEMPLATE mr34
margin: const EdgeInsets.only(right: 34.0,),
#END

#TEMPLATE mb34
margin: const EdgeInsets.only(bottom: 34.0,),
#END

#TEMPLATE ml34
margin: const EdgeInsets.only(left: 34.0,),
#END

#TEMPLATE mv34
margin: const EdgeInsets.symmetric(vertical: 34.0),
#END

#TEMPLATE mh34
margin: const EdgeInsets.symmetric(horizontal: 34.0),
#END

#TEMPLATE pv34
padding: const EdgeInsets.symmetric(vertical: 34.0),
#END

#TEMPLATE ph34
padding: const EdgeInsets.symmetric(horizontal: 34.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs34
fontSize: 34.0,
#END

#TEMPLATE text34
Text("text",
  style: TextStyle(
    fontSize: 34.0,
  ),
),
#END

#TEMPLATE textb34
Text("text",
  style: TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz35
fontSize: 35.0,
#END

#TEMPLATE sw35
const SizedBox(
  width: 35.0,
),
#END

#TEMPLATE sh35
const SizedBox(
  height: 35.0,
),
#END

#TEMPLATE p35
padding: const EdgeInsets.all(35.0),
#END

#TEMPLATE plr35
padding: const EdgeInsets.only(left: 35.0, right: 35.0,),
#END

#TEMPLATE ptb35
padding: const EdgeInsets.only(top: 35.0, bottom: 35.0,),
#END

#TEMPLATE pt35
padding: const EdgeInsets.only(top: 35.0,),
#END

#TEMPLATE pr35
padding: const EdgeInsets.only(right: 35.0,),
#END

#TEMPLATE pb35
padding: const EdgeInsets.only(bottom: 35.0,),
#END

#TEMPLATE pl35
padding: const EdgeInsets.only(left: 35.0,),
#END


#TEMPLATE m35
margin: const EdgeInsets.all(35.0),
#END

#TEMPLATE mlr35
margin: const EdgeInsets.only(left: 35.0, right: 35.0,),
#END

#TEMPLATE mtb35
margin: const EdgeInsets.only(top: 35.0, bottom: 35.0,),
#END

#TEMPLATE mt35
margin: const EdgeInsets.only(top: 35.0,),
#END

#TEMPLATE mr35
margin: const EdgeInsets.only(right: 35.0,),
#END

#TEMPLATE mb35
margin: const EdgeInsets.only(bottom: 35.0,),
#END

#TEMPLATE ml35
margin: const EdgeInsets.only(left: 35.0,),
#END

#TEMPLATE mv35
margin: const EdgeInsets.symmetric(vertical: 35.0),
#END

#TEMPLATE mh35
margin: const EdgeInsets.symmetric(horizontal: 35.0),
#END

#TEMPLATE pv35
padding: const EdgeInsets.symmetric(vertical: 35.0),
#END

#TEMPLATE ph35
padding: const EdgeInsets.symmetric(horizontal: 35.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs35
fontSize: 35.0,
#END

#TEMPLATE text35
Text("text",
  style: TextStyle(
    fontSize: 35.0,
  ),
),
#END

#TEMPLATE textb35
Text("text",
  style: TextStyle(
    fontSize: 35.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz36
fontSize: 36.0,
#END

#TEMPLATE sw36
const SizedBox(
  width: 36.0,
),
#END

#TEMPLATE sh36
const SizedBox(
  height: 36.0,
),
#END

#TEMPLATE p36
padding: const EdgeInsets.all(36.0),
#END

#TEMPLATE plr36
padding: const EdgeInsets.only(left: 36.0, right: 36.0,),
#END

#TEMPLATE ptb36
padding: const EdgeInsets.only(top: 36.0, bottom: 36.0,),
#END

#TEMPLATE pt36
padding: const EdgeInsets.only(top: 36.0,),
#END

#TEMPLATE pr36
padding: const EdgeInsets.only(right: 36.0,),
#END

#TEMPLATE pb36
padding: const EdgeInsets.only(bottom: 36.0,),
#END

#TEMPLATE pl36
padding: const EdgeInsets.only(left: 36.0,),
#END


#TEMPLATE m36
margin: const EdgeInsets.all(36.0),
#END

#TEMPLATE mlr36
margin: const EdgeInsets.only(left: 36.0, right: 36.0,),
#END

#TEMPLATE mtb36
margin: const EdgeInsets.only(top: 36.0, bottom: 36.0,),
#END

#TEMPLATE mt36
margin: const EdgeInsets.only(top: 36.0,),
#END

#TEMPLATE mr36
margin: const EdgeInsets.only(right: 36.0,),
#END

#TEMPLATE mb36
margin: const EdgeInsets.only(bottom: 36.0,),
#END

#TEMPLATE ml36
margin: const EdgeInsets.only(left: 36.0,),
#END

#TEMPLATE mv36
margin: const EdgeInsets.symmetric(vertical: 36.0),
#END

#TEMPLATE mh36
margin: const EdgeInsets.symmetric(horizontal: 36.0),
#END

#TEMPLATE pv36
padding: const EdgeInsets.symmetric(vertical: 36.0),
#END

#TEMPLATE ph36
padding: const EdgeInsets.symmetric(horizontal: 36.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs36
fontSize: 36.0,
#END

#TEMPLATE text36
Text("text",
  style: TextStyle(
    fontSize: 36.0,
  ),
),
#END

#TEMPLATE textb36
Text("text",
  style: TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz37
fontSize: 37.0,
#END

#TEMPLATE sw37
const SizedBox(
  width: 37.0,
),
#END

#TEMPLATE sh37
const SizedBox(
  height: 37.0,
),
#END

#TEMPLATE p37
padding: const EdgeInsets.all(37.0),
#END

#TEMPLATE plr37
padding: const EdgeInsets.only(left: 37.0, right: 37.0,),
#END

#TEMPLATE ptb37
padding: const EdgeInsets.only(top: 37.0, bottom: 37.0,),
#END

#TEMPLATE pt37
padding: const EdgeInsets.only(top: 37.0,),
#END

#TEMPLATE pr37
padding: const EdgeInsets.only(right: 37.0,),
#END

#TEMPLATE pb37
padding: const EdgeInsets.only(bottom: 37.0,),
#END

#TEMPLATE pl37
padding: const EdgeInsets.only(left: 37.0,),
#END


#TEMPLATE m37
margin: const EdgeInsets.all(37.0),
#END

#TEMPLATE mlr37
margin: const EdgeInsets.only(left: 37.0, right: 37.0,),
#END

#TEMPLATE mtb37
margin: const EdgeInsets.only(top: 37.0, bottom: 37.0,),
#END

#TEMPLATE mt37
margin: const EdgeInsets.only(top: 37.0,),
#END

#TEMPLATE mr37
margin: const EdgeInsets.only(right: 37.0,),
#END

#TEMPLATE mb37
margin: const EdgeInsets.only(bottom: 37.0,),
#END

#TEMPLATE ml37
margin: const EdgeInsets.only(left: 37.0,),
#END

#TEMPLATE mv37
margin: const EdgeInsets.symmetric(vertical: 37.0),
#END

#TEMPLATE mh37
margin: const EdgeInsets.symmetric(horizontal: 37.0),
#END

#TEMPLATE pv37
padding: const EdgeInsets.symmetric(vertical: 37.0),
#END

#TEMPLATE ph37
padding: const EdgeInsets.symmetric(horizontal: 37.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs37
fontSize: 37.0,
#END

#TEMPLATE text37
Text("text",
  style: TextStyle(
    fontSize: 37.0,
  ),
),
#END

#TEMPLATE textb37
Text("text",
  style: TextStyle(
    fontSize: 37.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz38
fontSize: 38.0,
#END

#TEMPLATE sw38
const SizedBox(
  width: 38.0,
),
#END

#TEMPLATE sh38
const SizedBox(
  height: 38.0,
),
#END

#TEMPLATE p38
padding: const EdgeInsets.all(38.0),
#END

#TEMPLATE plr38
padding: const EdgeInsets.only(left: 38.0, right: 38.0,),
#END

#TEMPLATE ptb38
padding: const EdgeInsets.only(top: 38.0, bottom: 38.0,),
#END

#TEMPLATE pt38
padding: const EdgeInsets.only(top: 38.0,),
#END

#TEMPLATE pr38
padding: const EdgeInsets.only(right: 38.0,),
#END

#TEMPLATE pb38
padding: const EdgeInsets.only(bottom: 38.0,),
#END

#TEMPLATE pl38
padding: const EdgeInsets.only(left: 38.0,),
#END


#TEMPLATE m38
margin: const EdgeInsets.all(38.0),
#END

#TEMPLATE mlr38
margin: const EdgeInsets.only(left: 38.0, right: 38.0,),
#END

#TEMPLATE mtb38
margin: const EdgeInsets.only(top: 38.0, bottom: 38.0,),
#END

#TEMPLATE mt38
margin: const EdgeInsets.only(top: 38.0,),
#END

#TEMPLATE mr38
margin: const EdgeInsets.only(right: 38.0,),
#END

#TEMPLATE mb38
margin: const EdgeInsets.only(bottom: 38.0,),
#END

#TEMPLATE ml38
margin: const EdgeInsets.only(left: 38.0,),
#END

#TEMPLATE mv38
margin: const EdgeInsets.symmetric(vertical: 38.0),
#END

#TEMPLATE mh38
margin: const EdgeInsets.symmetric(horizontal: 38.0),
#END

#TEMPLATE pv38
padding: const EdgeInsets.symmetric(vertical: 38.0),
#END

#TEMPLATE ph38
padding: const EdgeInsets.symmetric(horizontal: 38.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs38
fontSize: 38.0,
#END

#TEMPLATE text38
Text("text",
  style: TextStyle(
    fontSize: 38.0,
  ),
),
#END

#TEMPLATE textb38
Text("text",
  style: TextStyle(
    fontSize: 38.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz39
fontSize: 39.0,
#END

#TEMPLATE sw39
const SizedBox(
  width: 39.0,
),
#END

#TEMPLATE sh39
const SizedBox(
  height: 39.0,
),
#END

#TEMPLATE p39
padding: const EdgeInsets.all(39.0),
#END

#TEMPLATE plr39
padding: const EdgeInsets.only(left: 39.0, right: 39.0,),
#END

#TEMPLATE ptb39
padding: const EdgeInsets.only(top: 39.0, bottom: 39.0,),
#END

#TEMPLATE pt39
padding: const EdgeInsets.only(top: 39.0,),
#END

#TEMPLATE pr39
padding: const EdgeInsets.only(right: 39.0,),
#END

#TEMPLATE pb39
padding: const EdgeInsets.only(bottom: 39.0,),
#END

#TEMPLATE pl39
padding: const EdgeInsets.only(left: 39.0,),
#END


#TEMPLATE m39
margin: const EdgeInsets.all(39.0),
#END

#TEMPLATE mlr39
margin: const EdgeInsets.only(left: 39.0, right: 39.0,),
#END

#TEMPLATE mtb39
margin: const EdgeInsets.only(top: 39.0, bottom: 39.0,),
#END

#TEMPLATE mt39
margin: const EdgeInsets.only(top: 39.0,),
#END

#TEMPLATE mr39
margin: const EdgeInsets.only(right: 39.0,),
#END

#TEMPLATE mb39
margin: const EdgeInsets.only(bottom: 39.0,),
#END

#TEMPLATE ml39
margin: const EdgeInsets.only(left: 39.0,),
#END

#TEMPLATE mv39
margin: const EdgeInsets.symmetric(vertical: 39.0),
#END

#TEMPLATE mh39
margin: const EdgeInsets.symmetric(horizontal: 39.0),
#END

#TEMPLATE pv39
padding: const EdgeInsets.symmetric(vertical: 39.0),
#END

#TEMPLATE ph39
padding: const EdgeInsets.symmetric(horizontal: 39.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs39
fontSize: 39.0,
#END

#TEMPLATE text39
Text("text",
  style: TextStyle(
    fontSize: 39.0,
  ),
),
#END

#TEMPLATE textb39
Text("text",
  style: TextStyle(
    fontSize: 39.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
#GROUP_TEMPLATE skip_docs
#TEMPLATE sz40
fontSize: 40.0,
#END

#TEMPLATE sw40
const SizedBox(
  width: 40.0,
),
#END

#TEMPLATE sh40
const SizedBox(
  height: 40.0,
),
#END

#TEMPLATE p40
padding: const EdgeInsets.all(40.0),
#END

#TEMPLATE plr40
padding: const EdgeInsets.only(left: 40.0, right: 40.0,),
#END

#TEMPLATE ptb40
padding: const EdgeInsets.only(top: 40.0, bottom: 40.0,),
#END

#TEMPLATE pt40
padding: const EdgeInsets.only(top: 40.0,),
#END

#TEMPLATE pr40
padding: const EdgeInsets.only(right: 40.0,),
#END

#TEMPLATE pb40
padding: const EdgeInsets.only(bottom: 40.0,),
#END

#TEMPLATE pl40
padding: const EdgeInsets.only(left: 40.0,),
#END


#TEMPLATE m40
margin: const EdgeInsets.all(40.0),
#END

#TEMPLATE mlr40
margin: const EdgeInsets.only(left: 40.0, right: 40.0,),
#END

#TEMPLATE mtb40
margin: const EdgeInsets.only(top: 40.0, bottom: 40.0,),
#END

#TEMPLATE mt40
margin: const EdgeInsets.only(top: 40.0,),
#END

#TEMPLATE mr40
margin: const EdgeInsets.only(right: 40.0,),
#END

#TEMPLATE mb40
margin: const EdgeInsets.only(bottom: 40.0,),
#END

#TEMPLATE ml40
margin: const EdgeInsets.only(left: 40.0,),
#END

#TEMPLATE mv40
margin: const EdgeInsets.symmetric(vertical: 40.0),
#END

#TEMPLATE mh40
margin: const EdgeInsets.symmetric(horizontal: 40.0),
#END

#TEMPLATE pv40
padding: const EdgeInsets.symmetric(vertical: 40.0),
#END

#TEMPLATE ph40
padding: const EdgeInsets.symmetric(horizontal: 40.0),
#END

#GROUP_TEMPLATE skip_docs

#TEMPLATE fs40
fontSize: 40.0,
#END

#TEMPLATE text40
Text("text",
  style: TextStyle(
    fontSize: 40.0,
  ),
),
#END

#TEMPLATE textb40
Text("text",
  style: TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  ),
),
#END
//#GROUP_TEMPLATE colors

#TEMPLATE cWhite
color: Colors.white,
#END

#TEMPLATE cBlack
color: Colors.black,
#END

#TEMPLATE cBlack12
color: Colors.black12,
#END

#TEMPLATE cBlack26
color: Colors.black26,
#END

#TEMPLATE cBlack38
color: Colors.black38,
#END

#TEMPLATE cBlack45
color: Colors.black45,
#END

#TEMPLATE cBlack54
color: Colors.black54,
#END

#TEMPLATE cBlack87
color: Colors.black87,
#END

#TEMPLATE cTransparent
color: Colors.transparent,
#END
#TEMPLATE cPink
color: Colors.pink,
#END
#TEMPLATE cPink50
color: Colors.pink[50],
#END
#TEMPLATE cPink100
color: Colors.pink[100],
#END
#TEMPLATE cPink200
color: Colors.pink[200],
#END
#TEMPLATE cPink300
color: Colors.pink[300],
#END
#TEMPLATE cPink400
color: Colors.pink[400],
#END
#TEMPLATE cPink500
color: Colors.pink[500],
#END
#TEMPLATE cPink600
color: Colors.pink[600],
#END
#TEMPLATE cPink700
color: Colors.pink[700],
#END
#TEMPLATE cPink800
color: Colors.pink[800],
#END
#TEMPLATE cPink900
color: Colors.pink[900],
#END
#TEMPLATE cRed
color: Colors.red,
#END
#TEMPLATE cRed50
color: Colors.red[50],
#END
#TEMPLATE cRed100
color: Colors.red[100],
#END
#TEMPLATE cRed200
color: Colors.red[200],
#END
#TEMPLATE cRed300
color: Colors.red[300],
#END
#TEMPLATE cRed400
color: Colors.red[400],
#END
#TEMPLATE cRed500
color: Colors.red[500],
#END
#TEMPLATE cRed600
color: Colors.red[600],
#END
#TEMPLATE cRed700
color: Colors.red[700],
#END
#TEMPLATE cRed800
color: Colors.red[800],
#END
#TEMPLATE cRed900
color: Colors.red[900],
#END
#TEMPLATE cDeepOrange
color: Colors.deepOrange,
#END
#TEMPLATE cDeepOrange50
color: Colors.deepOrange[50],
#END
#TEMPLATE cDeepOrange100
color: Colors.deepOrange[100],
#END
#TEMPLATE cDeepOrange200
color: Colors.deepOrange[200],
#END
#TEMPLATE cDeepOrange300
color: Colors.deepOrange[300],
#END
#TEMPLATE cDeepOrange400
color: Colors.deepOrange[400],
#END
#TEMPLATE cDeepOrange500
color: Colors.deepOrange[500],
#END
#TEMPLATE cDeepOrange600
color: Colors.deepOrange[600],
#END
#TEMPLATE cDeepOrange700
color: Colors.deepOrange[700],
#END
#TEMPLATE cDeepOrange800
color: Colors.deepOrange[800],
#END
#TEMPLATE cDeepOrange900
color: Colors.deepOrange[900],
#END
#TEMPLATE cOrange
color: Colors.orange,
#END
#TEMPLATE cOrange50
color: Colors.orange[50],
#END
#TEMPLATE cOrange100
color: Colors.orange[100],
#END
#TEMPLATE cOrange200
color: Colors.orange[200],
#END
#TEMPLATE cOrange300
color: Colors.orange[300],
#END
#TEMPLATE cOrange400
color: Colors.orange[400],
#END
#TEMPLATE cOrange500
color: Colors.orange[500],
#END
#TEMPLATE cOrange600
color: Colors.orange[600],
#END
#TEMPLATE cOrange700
color: Colors.orange[700],
#END
#TEMPLATE cOrange800
color: Colors.orange[800],
#END
#TEMPLATE cOrange900
color: Colors.orange[900],
#END
#TEMPLATE cAmber
color: Colors.amber,
#END
#TEMPLATE cAmber50
color: Colors.amber[50],
#END
#TEMPLATE cAmber100
color: Colors.amber[100],
#END
#TEMPLATE cAmber200
color: Colors.amber[200],
#END
#TEMPLATE cAmber300
color: Colors.amber[300],
#END
#TEMPLATE cAmber400
color: Colors.amber[400],
#END
#TEMPLATE cAmber500
color: Colors.amber[500],
#END
#TEMPLATE cAmber600
color: Colors.amber[600],
#END
#TEMPLATE cAmber700
color: Colors.amber[700],
#END
#TEMPLATE cAmber800
color: Colors.amber[800],
#END
#TEMPLATE cAmber900
color: Colors.amber[900],
#END
#TEMPLATE cYellow
color: Colors.yellow,
#END
#TEMPLATE cYellow50
color: Colors.yellow[50],
#END
#TEMPLATE cYellow100
color: Colors.yellow[100],
#END
#TEMPLATE cYellow200
color: Colors.yellow[200],
#END
#TEMPLATE cYellow300
color: Colors.yellow[300],
#END
#TEMPLATE cYellow400
color: Colors.yellow[400],
#END
#TEMPLATE cYellow500
color: Colors.yellow[500],
#END
#TEMPLATE cYellow600
color: Colors.yellow[600],
#END
#TEMPLATE cYellow700
color: Colors.yellow[700],
#END
#TEMPLATE cYellow800
color: Colors.yellow[800],
#END
#TEMPLATE cYellow900
color: Colors.yellow[900],
#END
#TEMPLATE cLime
color: Colors.lime,
#END
#TEMPLATE cLime50
color: Colors.lime[50],
#END
#TEMPLATE cLime100
color: Colors.lime[100],
#END
#TEMPLATE cLime200
color: Colors.lime[200],
#END
#TEMPLATE cLime300
color: Colors.lime[300],
#END
#TEMPLATE cLime400
color: Colors.lime[400],
#END
#TEMPLATE cLime500
color: Colors.lime[500],
#END
#TEMPLATE cLime600
color: Colors.lime[600],
#END
#TEMPLATE cLime700
color: Colors.lime[700],
#END
#TEMPLATE cLime800
color: Colors.lime[800],
#END
#TEMPLATE cLime900
color: Colors.lime[900],
#END
#TEMPLATE cLightGreen
color: Colors.lightGreen,
#END
#TEMPLATE cLightGreen50
color: Colors.lightGreen[50],
#END
#TEMPLATE cLightGreen100
color: Colors.lightGreen[100],
#END
#TEMPLATE cLightGreen200
color: Colors.lightGreen[200],
#END
#TEMPLATE cLightGreen300
color: Colors.lightGreen[300],
#END
#TEMPLATE cLightGreen400
color: Colors.lightGreen[400],
#END
#TEMPLATE cLightGreen500
color: Colors.lightGreen[500],
#END
#TEMPLATE cLightGreen600
color: Colors.lightGreen[600],
#END
#TEMPLATE cLightGreen700
color: Colors.lightGreen[700],
#END
#TEMPLATE cLightGreen800
color: Colors.lightGreen[800],
#END
#TEMPLATE cLightGreen900
color: Colors.lightGreen[900],
#END
#TEMPLATE cGreen
color: Colors.green,
#END
#TEMPLATE cGreen50
color: Colors.green[50],
#END
#TEMPLATE cGreen100
color: Colors.green[100],
#END
#TEMPLATE cGreen200
color: Colors.green[200],
#END
#TEMPLATE cGreen300
color: Colors.green[300],
#END
#TEMPLATE cGreen400
color: Colors.green[400],
#END
#TEMPLATE cGreen500
color: Colors.green[500],
#END
#TEMPLATE cGreen600
color: Colors.green[600],
#END
#TEMPLATE cGreen700
color: Colors.green[700],
#END
#TEMPLATE cGreen800
color: Colors.green[800],
#END
#TEMPLATE cGreen900
color: Colors.green[900],
#END
#TEMPLATE cCyan
color: Colors.cyan,
#END
#TEMPLATE cCyan50
color: Colors.cyan[50],
#END
#TEMPLATE cCyan100
color: Colors.cyan[100],
#END
#TEMPLATE cCyan200
color: Colors.cyan[200],
#END
#TEMPLATE cCyan300
color: Colors.cyan[300],
#END
#TEMPLATE cCyan400
color: Colors.cyan[400],
#END
#TEMPLATE cCyan500
color: Colors.cyan[500],
#END
#TEMPLATE cCyan600
color: Colors.cyan[600],
#END
#TEMPLATE cCyan700
color: Colors.cyan[700],
#END
#TEMPLATE cCyan800
color: Colors.cyan[800],
#END
#TEMPLATE cCyan900
color: Colors.cyan[900],
#END
#TEMPLATE cLightBlue
color: Colors.lightBlue,
#END
#TEMPLATE cLightBlue50
color: Colors.lightBlue[50],
#END
#TEMPLATE cLightBlue100
color: Colors.lightBlue[100],
#END
#TEMPLATE cLightBlue200
color: Colors.lightBlue[200],
#END
#TEMPLATE cLightBlue300
color: Colors.lightBlue[300],
#END
#TEMPLATE cLightBlue400
color: Colors.lightBlue[400],
#END
#TEMPLATE cLightBlue500
color: Colors.lightBlue[500],
#END
#TEMPLATE cLightBlue600
color: Colors.lightBlue[600],
#END
#TEMPLATE cLightBlue700
color: Colors.lightBlue[700],
#END
#TEMPLATE cLightBlue800
color: Colors.lightBlue[800],
#END
#TEMPLATE cLightBlue900
color: Colors.lightBlue[900],
#END
#TEMPLATE cBlue
color: Colors.blue,
#END
#TEMPLATE cBlue50
color: Colors.blue[50],
#END
#TEMPLATE cBlue100
color: Colors.blue[100],
#END
#TEMPLATE cBlue200
color: Colors.blue[200],
#END
#TEMPLATE cBlue300
color: Colors.blue[300],
#END
#TEMPLATE cBlue400
color: Colors.blue[400],
#END
#TEMPLATE cBlue500
color: Colors.blue[500],
#END
#TEMPLATE cBlue600
color: Colors.blue[600],
#END
#TEMPLATE cBlue700
color: Colors.blue[700],
#END
#TEMPLATE cBlue800
color: Colors.blue[800],
#END
#TEMPLATE cBlue900
color: Colors.blue[900],
#END
#TEMPLATE cIndigo
color: Colors.indigo,
#END
#TEMPLATE cIndigo50
color: Colors.indigo[50],
#END
#TEMPLATE cIndigo100
color: Colors.indigo[100],
#END
#TEMPLATE cIndigo200
color: Colors.indigo[200],
#END
#TEMPLATE cIndigo300
color: Colors.indigo[300],
#END
#TEMPLATE cIndigo400
color: Colors.indigo[400],
#END
#TEMPLATE cIndigo500
color: Colors.indigo[500],
#END
#TEMPLATE cIndigo600
color: Colors.indigo[600],
#END
#TEMPLATE cIndigo700
color: Colors.indigo[700],
#END
#TEMPLATE cIndigo800
color: Colors.indigo[800],
#END
#TEMPLATE cIndigo900
color: Colors.indigo[900],
#END
#TEMPLATE cPurple
color: Colors.purple,
#END
#TEMPLATE cPurple50
color: Colors.purple[50],
#END
#TEMPLATE cPurple100
color: Colors.purple[100],
#END
#TEMPLATE cPurple200
color: Colors.purple[200],
#END
#TEMPLATE cPurple300
color: Colors.purple[300],
#END
#TEMPLATE cPurple400
color: Colors.purple[400],
#END
#TEMPLATE cPurple500
color: Colors.purple[500],
#END
#TEMPLATE cPurple600
color: Colors.purple[600],
#END
#TEMPLATE cPurple700
color: Colors.purple[700],
#END
#TEMPLATE cPurple800
color: Colors.purple[800],
#END
#TEMPLATE cPurple900
color: Colors.purple[900],
#END
#TEMPLATE cDeepPurple
color: Colors.deepPurple,
#END
#TEMPLATE cDeepPurple50
color: Colors.deepPurple[50],
#END
#TEMPLATE cDeepPurple100
color: Colors.deepPurple[100],
#END
#TEMPLATE cDeepPurple200
color: Colors.deepPurple[200],
#END
#TEMPLATE cDeepPurple300
color: Colors.deepPurple[300],
#END
#TEMPLATE cDeepPurple400
color: Colors.deepPurple[400],
#END
#TEMPLATE cDeepPurple500
color: Colors.deepPurple[500],
#END
#TEMPLATE cDeepPurple600
color: Colors.deepPurple[600],
#END
#TEMPLATE cDeepPurple700
color: Colors.deepPurple[700],
#END
#TEMPLATE cDeepPurple800
color: Colors.deepPurple[800],
#END
#TEMPLATE cDeepPurple900
color: Colors.deepPurple[900],
#END
#TEMPLATE cBlueGrey
color: Colors.blueGrey,
#END
#TEMPLATE cBlueGrey50
color: Colors.blueGrey[50],
#END
#TEMPLATE cBlueGrey100
color: Colors.blueGrey[100],
#END
#TEMPLATE cBlueGrey200
color: Colors.blueGrey[200],
#END
#TEMPLATE cBlueGrey300
color: Colors.blueGrey[300],
#END
#TEMPLATE cBlueGrey400
color: Colors.blueGrey[400],
#END
#TEMPLATE cBlueGrey500
color: Colors.blueGrey[500],
#END
#TEMPLATE cBlueGrey600
color: Colors.blueGrey[600],
#END
#TEMPLATE cBlueGrey700
color: Colors.blueGrey[700],
#END
#TEMPLATE cBlueGrey800
color: Colors.blueGrey[800],
#END
#TEMPLATE cBlueGrey900
color: Colors.blueGrey[900],
#END
#TEMPLATE cBrown
color: Colors.brown,
#END
#TEMPLATE cBrown50
color: Colors.brown[50],
#END
#TEMPLATE cBrown100
color: Colors.brown[100],
#END
#TEMPLATE cBrown200
color: Colors.brown[200],
#END
#TEMPLATE cBrown300
color: Colors.brown[300],
#END
#TEMPLATE cBrown400
color: Colors.brown[400],
#END
#TEMPLATE cBrown500
color: Colors.brown[500],
#END
#TEMPLATE cBrown600
color: Colors.brown[600],
#END
#TEMPLATE cBrown700
color: Colors.brown[700],
#END
#TEMPLATE cBrown800
color: Colors.brown[800],
#END
#TEMPLATE cBrown900
color: Colors.brown[900],
#END
#TEMPLATE cGrey
color: Colors.grey,
#END
#TEMPLATE cGrey50
color: Colors.grey[50],
#END
#TEMPLATE cGrey100
color: Colors.grey[100],
#END
#TEMPLATE cGrey200
color: Colors.grey[200],
#END
#TEMPLATE cGrey300
color: Colors.grey[300],
#END
#TEMPLATE cGrey400
color: Colors.grey[400],
#END
#TEMPLATE cGrey500
color: Colors.grey[500],
#END
#TEMPLATE cGrey600
color: Colors.grey[600],
#END
#TEMPLATE cGrey700
color: Colors.grey[700],
#END
#TEMPLATE cGrey800
color: Colors.grey[800],
#END
#TEMPLATE cGrey900
color: Colors.grey[900],
#END
#TEMPLATE cPinkAccent
color: Colors.pinkAccent,
#END
#TEMPLATE cPinkAccent100
color: Colors.pinkAccent[100],
#END
#TEMPLATE cPinkAccent400
color: Colors.pinkAccent[400],
#END
#TEMPLATE cPinkAccent700
color: Colors.pinkAccent[700],
#END
#TEMPLATE cRedAccent
color: Colors.redAccent,
#END
#TEMPLATE cRedAccent100
color: Colors.redAccent[100],
#END
#TEMPLATE cRedAccent400
color: Colors.redAccent[400],
#END
#TEMPLATE cRedAccent700
color: Colors.redAccent[700],
#END
#TEMPLATE cDeepOrangeAccent
color: Colors.deepOrangeAccent,
#END
#TEMPLATE cDeepOrangeAccent100
color: Colors.deepOrangeAccent[100],
#END
#TEMPLATE cDeepOrangeAccent400
color: Colors.deepOrangeAccent[400],
#END
#TEMPLATE cDeepOrangeAccent700
color: Colors.deepOrangeAccent[700],
#END
#TEMPLATE cOrangeAccent
color: Colors.orangeAccent,
#END
#TEMPLATE cOrangeAccent100
color: Colors.orangeAccent[100],
#END
#TEMPLATE cOrangeAccent400
color: Colors.orangeAccent[400],
#END
#TEMPLATE cOrangeAccent700
color: Colors.orangeAccent[700],
#END
#TEMPLATE cAmberAccent
color: Colors.amberAccent,
#END
#TEMPLATE cAmberAccent100
color: Colors.amberAccent[100],
#END
#TEMPLATE cAmberAccent400
color: Colors.amberAccent[400],
#END
#TEMPLATE cAmberAccent700
color: Colors.amberAccent[700],
#END
#TEMPLATE cYellowAccent
color: Colors.yellowAccent,
#END
#TEMPLATE cYellowAccent100
color: Colors.yellowAccent[100],
#END
#TEMPLATE cYellowAccent400
color: Colors.yellowAccent[400],
#END
#TEMPLATE cYellowAccent700
color: Colors.yellowAccent[700],
#END
#TEMPLATE cLimeAccent
color: Colors.limeAccent,
#END
#TEMPLATE cLimeAccent100
color: Colors.limeAccent[100],
#END
#TEMPLATE cLimeAccent400
color: Colors.limeAccent[400],
#END
#TEMPLATE cLimeAccent700
color: Colors.limeAccent[700],
#END
#TEMPLATE cLightGreenAccent
color: Colors.lightGreenAccent,
#END
#TEMPLATE cLightGreenAccent100
color: Colors.lightGreenAccent[100],
#END
#TEMPLATE cLightGreenAccent400
color: Colors.lightGreenAccent[400],
#END
#TEMPLATE cLightGreenAccent700
color: Colors.lightGreenAccent[700],
#END
#TEMPLATE cGreenAccent
color: Colors.greenAccent,
#END
#TEMPLATE cGreenAccent100
color: Colors.greenAccent[100],
#END
#TEMPLATE cGreenAccent400
color: Colors.greenAccent[400],
#END
#TEMPLATE cGreenAccent700
color: Colors.greenAccent[700],
#END
#TEMPLATE cTealAccent
color: Colors.tealAccent,
#END
#TEMPLATE cTealAccent100
color: Colors.tealAccent[100],
#END
#TEMPLATE cTealAccent400
color: Colors.tealAccent[400],
#END
#TEMPLATE cTealAccent700
color: Colors.tealAccent[700],
#END
#TEMPLATE cCyanAccent
color: Colors.cyanAccent,
#END
#TEMPLATE cCyanAccent100
color: Colors.cyanAccent[100],
#END
#TEMPLATE cCyanAccent400
color: Colors.cyanAccent[400],
#END
#TEMPLATE cCyanAccent700
color: Colors.cyanAccent[700],
#END
#TEMPLATE cLightBlueAccent
color: Colors.lightBlueAccent,
#END
#TEMPLATE cLightBlueAccent100
color: Colors.lightBlueAccent[100],
#END
#TEMPLATE cLightBlueAccent400
color: Colors.lightBlueAccent[400],
#END
#TEMPLATE cLightBlueAccent700
color: Colors.lightBlueAccent[700],
#END
#TEMPLATE cBlueAccent
color: Colors.blueAccent,
#END
#TEMPLATE cBlueAccent100
color: Colors.blueAccent[100],
#END
#TEMPLATE cBlueAccent400
color: Colors.blueAccent[400],
#END
#TEMPLATE cBlueAccent700
color: Colors.blueAccent[700],
#END
#TEMPLATE cIndigoAccent
color: Colors.indigoAccent,
#END
#TEMPLATE cIndigoAccent100
color: Colors.indigoAccent[100],
#END
#TEMPLATE cIndigoAccent400
color: Colors.indigoAccent[400],
#END
#TEMPLATE cIndigoAccent700
color: Colors.indigoAccent[700],
#END
#TEMPLATE cPurpleAccent
color: Colors.purpleAccent,
#END
#TEMPLATE cPurpleAccent100
color: Colors.purpleAccent[100],
#END
#TEMPLATE cPurpleAccent400
color: Colors.purpleAccent[400],
#END
#TEMPLATE cPurpleAccent700
color: Colors.purpleAccent[700],
#END
#TEMPLATE cDeepPurpleAccent
color: Colors.deepPurpleAccent,
#END
#TEMPLATE cDeepPurpleAccent100
color: Colors.deepPurpleAccent[100],
#END
#TEMPLATE cDeepPurpleAccent400
color: Colors.deepPurpleAccent[400],
#END
#TEMPLATE cDeepPurpleAccent700
color: Colors.deepPurpleAccent[700],
#END
*/
