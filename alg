<?xml version="1.0" encoding="UTF-8"?>
<PMEAlgorithm version="11.6">
  <AlgorithmName>MySampleMatchAlgorithm</AlgorithmName>
  <AlgorithmType>WEIGHTED</AlgorithmType>
  <ComparisonFunctions>
    <ComparisonFunction name="EXACT"/>
    <ComparisonFunction name="FUZZY"/>
    <ComparisonFunction name="NUMEXACT"/>
    <ComparisonFunction name="DATERANGE"/>
  </ComparisonFunctions>

  <Rules>
    <!-- Rule 1: Match by name and date of birth -->
    <Rule ruleID="R01" weight="100">
      <Component compareFunction="FUZZY" weight="40">
        <Attribute>PERLEGALNAME.givenname1</Attribute>
        <Attribute>PERLEGALNAME.givenname1</Attribute>
      </Component>
      <Component compareFunction="FUZZY" weight="30">
        <Attribute>PERLEGALNAME.lastname</Attribute>
        <Attribute>PERLEGALNAME.lastname</Attribute>
      </Component>
      <Component compareFunction="DATERANGE" weight="30">
        <Attribute>PERBIRTHDATE.dob</Attribute>
        <Attribute>PERBIRTHDATE.dob</Attribute>
      </Component>
    </Rule>

    <!-- Rule 2: Match by document type and ID -->
    <Rule ruleID="R02" weight="90">
      <Component compareFunction="EXACT" weight="45">
        <Attribute>PERDOCUMENT.docGrpTypeCd</Attribute>
        <Attribute>PERDOCUMENT.docGrpTypeCd</Attribute>
      </Component>
      <Component compareFunction="NUMEXACT" weight="45">
        <Attribute>PERDOCUMENT.identifier</Attribute>
        <Attribute>PERDOCUMENT.identifier</Attribute>
      </Component>
    </Rule>
  </Rules>
</PMEAlgorithm>
