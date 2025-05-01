<?xml version="1.0" encoding="UTF-8"?>
<engine-algorithm-config version="1.0.2" memtypeno="10" memtype="PERSON" dvdcode="DVDPER">
  <keyRegistry>
    <key keyValue="206" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmSrcXSrc" />
    <key keyValue="140" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmComparisonRole" />
    <key keyValue="670" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmMBucketingFunction" />
    <key keyValue="3438" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmMStandardization" />
    <key keyValue="9" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmComparisonFunction" />
    <key keyValue="899" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmAttribute" />
    <key keyValue="2" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmEntityType" />
    <key keyValue="1669" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmMComparisonFunction" />
    <key keyValue="10" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmBucketingFunction" />
    <key keyValue="198" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmBucketGroup" />
    <key keyValue="30" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmStandardization" />
    <key keyValue="117" keyClasstype="com.initiatesystems.workbench.model.algorithm.AlgorithmQueryRole" />
  </keyRegistry>
  <cmphead>
    <cmphead-row id="1" enttypeno="23" enttype="mdmper" cmpcode="CMPPER" cmpname="CMPPER" cmpdesc="CMPPER" wgtqod="5" wgtflr="5" wgtmat="100" wgtabs="80" wgtnrm="95" wgtcnv="20" wgtfpr="100000" wgtfnr="100">
      <srcxsrc />
    </cmphead-row>
  </cmphead>
  <dvdxstd>
    <dvdxstd-row id="1" dvdseqno="1" stdfunccode="PXNM" anonstrcode="ANAME" equistrcode="" cmapstrcode="CMAP-PXNM" dvdargs="" rsfilter="AI" stdrole1="1" stdrole2="0" dvddesc="" stdrole1label="LGLNAME" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="168,169,170" fldargs="lastname,givenname1,givenname2" anonID="-1" equiID="-1" cmapID="13" attrcode="PERLEGALNAME" attrrecno="768" />
    <dvdxstd-row id="27" dvdseqno="2" stdfunccode="DATE2" anonstrcode="DATE" equistrcode="DATE2" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="6" stdrole2="0" dvddesc="" stdrole1label="DOB" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="174" fldargs="val" anonID="15" equiID="16" cmapID="-1" attrcode="PERBIRTHDATE" attrrecno="770" />
    <dvdxstd-row id="47" dvdseqno="3" stdfunccode="ATTR" anonstrcode="" equistrcode="" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="31" stdrole2="0" dvddesc="" stdrole1label="" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="235" fldargs="countryCd" anonID="-1" equiID="-1" cmapID="-1" attrcode="PERCITIZENSH" attrrecno="771" />
    <dvdxstd-row id="2562" dvdseqno="4" stdfunccode="ATTR" anonstrcode="" equistrcode="" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="2" stdrole2="0" dvddesc="" stdrole1label="" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="236" fldargs="ctznCountry" anonID="-1" equiID="-1" cmapID="-1" attrcode="PERCITIZENSH" attrrecno="771" />
    <dvdxstd-row id="46" dvdseqno="5" stdfunccode="ATTR" anonstrcode="" equistrcode="" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="30" stdrole2="0" dvddesc="" stdrole1label="" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="233" fldargs="doctypetpcd" anonID="-1" equiID="-1" cmapID="-1" attrcode="PERDOCUMENT" attrrecno="772" />
    <dvdxstd-row id="260" dvdseqno="6" stdfunccode="ATTR" anonstrcode="" equistrcode="" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="34" stdrole2="0" dvddesc="" stdrole1label="" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="184" fldargs="idnum" anonID="-1" equiID="-1" cmapID="-1" attrcode="PERDOCUMENT" attrrecno="772" />
    <dvdxstd-row id="3125" dvdseqno="7" stdfunccode="ATTR" anonstrcode="" equistrcode="" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="4" stdrole2="0" dvddesc="" stdrole1label="" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="" fldargs="" anonID="-1" equiID="-1" cmapID="-1" attrcode="PERDOCUMENT" attrrecno="772" />
    <dvdxstd-row id="28" dvdseqno="8" stdfunccode="ATTR" anonstrcode="" equistrcode="GENDER" cmapstrcode="" dvdargs="" rsfilter="AI" stdrole1="7" stdrole2="0" dvddesc="" stdrole1label="GENDER" stdrole2label="" stdtype1="STRING" stdtype2="" fldids="175" fldargs="gender" anonID="-1" equiID="31" cmapID="-1" attrcode="PERGENDER" attrrecno="769" />
  </dvdxstd>
  <dvdxqry />
  <dvdxcmp>
    <dvdxcmp-row id="1" dvdseqno="1" cmprole="1" dvddesc="" cmprolelabel="Name" stdrole="1" minwgtfreq="20" rsfilter="AI" stdID="1" />
    <dvdxcmp-row id="8" dvdseqno="2" cmprole="6" dvddesc="" cmprolelabel="DOB" stdrole="6" minwgtfreq="20" rsfilter="AI" stdID="27" />
    <dvdxcmp-row id="20" dvdseqno="3" cmprole="11" dvddesc="" cmprolelabel="Citizenship" stdrole="31" minwgtfreq="20" rsfilter="AI" stdID="47" />
    <dvdxcmp-row id="20" dvdseqno="4" cmprole="11" dvddesc="" cmprolelabel="Citizenship" stdrole="2" minwgtfreq="20" rsfilter="AI" stdID="2562" />
    <dvdxcmp-row id="22" dvdseqno="5" cmprole="13" dvddesc="" cmprolelabel="Doc Type Equivalent" stdrole="30" minwgtfreq="20" rsfilter="AI" stdID="46" />
    <dvdxcmp-row id="36" dvdseqno="6" cmprole="12" dvddesc="" cmprolelabel="Doc Number Match" stdrole="34" minwgtfreq="20" rsfilter="AI" stdID="260" />
    <dvdxcmp-row id="123" dvdseqno="7" cmprole="3" dvddesc="" cmprolelabel="DocICC Match" stdrole="4" minwgtfreq="20" rsfilter="AI" stdID="3125" />
    <dvdxcmp-row id="9" dvdseqno="8" cmprole="7" dvddesc="" cmprolelabel="Gender" stdrole="7" minwgtfreq="20" rsfilter="AI" stdID="28" />
  </dvdxcmp>
  <cmpspec>
    <cmpspec-row id="1" enttype="mdmper" cmpseqno="1" cmpargs="METAPHONE" cmpcode="CMPPER" cmpfunccode="QXNM" cmpspeccode="XNM" equistrcode="NICKNAME" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="83" cmprole1="1" />
    <cmpspec-row id="5" enttype="mdmper" cmpseqno="2" cmpargs="" cmpcode="CMPPER" cmpfunccode="DATE2" cmpspeccode="DOB" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="6" />
    <cmpspec-row id="34" enttype="mdmper" cmpseqno="3" cmpargs="" cmpcode="CMPPER" cmpfunccode="EQVD" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="11" />
    <cmpspec-row id="35" enttype="mdmper" cmpseqno="4" cmpargs="" cmpcode="CMPPER" cmpfunccode="ATTR2S" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="11" />
    <cmpspec-row id="176" enttype="mdmper" cmpseqno="5" cmpargs="" cmpcode="CMPPER" cmpfunccode="EQVD" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="13" />
    <cmpspec-row id="197" enttype="mdmper" cmpseqno="6" cmpargs="" cmpcode="CMPPER" cmpfunccode="EQVD" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="12" />
    <cmpspec-row id="1588" enttype="mdmper" cmpseqno="7" cmpargs="" cmpcode="CMPPER" cmpfunccode="EQVD" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="3" />
    <cmpspec-row id="6" enttype="mdmper" cmpseqno="8" cmpargs="" cmpcode="CMPPER" cmpfunccode="EQVD" cmpspeccode="SEX" equistrcode="" isri="false" wgtcut="100" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="7" />
    <cmpspec-row id="19" enttype="mdmper" cmpseqno="9" cmpargs="" cmpcode="CMPPER" cmpfunccode="FPF2" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="1" />
    <cmpspec-row id="5" enttype="mdmorg" cmpseqno="1" cmpargs="" cmpcode="CMPORG" cmpfunccode="FPF2" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="-1" equiID="-1" cmprole1="6" />
    <cmpspec-row id="31" enttype="mdmper" cmpseqno="10" cmpargs="" cmpcode="CMPPER" cmpfunccode="FPF2" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="11" />
    <cmpspec-row id="30" enttype="mdmper" cmpseqno="11" cmpargs="" cmpcode="CMPPER" cmpfunccode="FPF2" cmpspeccode="" equistrcode="" isri="false" wgtcut="80" cmpgroupno="0" cmpmode="3" cmpdesc="" enttypeno="23" equiID="-1" cmprole1="13" cmprole2="12" />
  </cmpspec>
  <dvdybkt>
    <dvdybkt-row id="1" dvdseqno="1" bktfunccode="PXNM" genfunccode="EQUI" mintokens="2" maxtokens="2" equistrcode="NICKNAME" rbktstrcode="" anonstrcode="BKTANON" dvdargs="" dvddesc="" equiID="83" anonID="6" rbktID="-1" cmprole="1" dvdgrp="1" />
    <dvdybkt-row id="2" dvdseqno="2" bktfunccode="PXNM" genfunccode="EQMETA" mintokens="1" maxtokens="2" equistrcode="NICKNAME" rbktstrcode="" anonstrcode="BKTANON" dvdargs="NORMPHONE" dvddesc="" equiID="83" anonID="6" rbktID="-1" cmprole="1" dvdgrp="2" />
    <dvdybkt-row id="3" dvdseqno="3" bktfunccode="PXNM" genfunccode="EQMETA" mintokens="1" maxtokens="2" equistrcode="NICKNAME" rbktstrcode="" anonstrcode="BKTANON" dvdargs="NORMPHONE" dvddesc="" equiID="83" anonID="6" rbktID="-1" cmprole="1" dvdgrp="3" />
    <dvdybkt-row id="8" dvdseqno="4" bktfunccode="DATE" genfunccode="DTY4SMD" mintokens="1" maxtokens="1" equistrcode="" rbktstrcode="" anonstrcode="DATE" dvdargs="" dvddesc="" equiID="-1" anonID="15" rbktID="-1" cmprole="6" dvdgrp="2" />
  </dvdybkt>
  <dvdxbkt>
    <dvdxbkt-row id="1" dvdseqno="1" bktrole="1" maxbktfreq="1000" dvdgrp="1" maxnway="2" minnway="2" dvddesc="" dvdgrplabel="Name" />
    <dvdxbkt-row id="2" dvdseqno="2" bktrole="2" maxbktfreq="1000" dvdgrp="2" maxnway="3" minnway="2" dvddesc="" dvdgrplabel="Name + DOB" />
    <dvdxbkt-row id="3" dvdseqno="3" bktrole="3" maxbktfreq="1000" dvdgrp="3" maxnway="3" minnway="2" dvddesc="" dvdgrplabel="Name + Post Code" />
    <dvdxbkt-row id="8" dvdseqno="4" bktrole="8" maxbktfreq="0" dvdgrp="8" maxnway="1" minnway="1" dvddesc="" dvdgrplabel="Country + DOB" />
    <dvdxbkt-row id="16" dvdseqno="5" bktrole="9" maxbktfreq="0" dvdgrp="9" maxnway="1" minnway="1" dvddesc="" dvdgrplabel="Document Type + ID+ Country" />
  </dvdxbkt>
</engine-algorithm-config>
