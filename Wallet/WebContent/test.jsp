<template:page pageTitle="${pageTitle}">
<div class="get-started page">
<insurance:insuranceProgress percentage="33" />
  <div class="container">
    <header>
      <h1><spring:theme code="insurance.startRecharge" /></h1>
    </header>
    <div class="row">
      <div class="col-sm-8">
        <div class="panel">
          <div class="panel-body">
            <div class="row">
              <div class="col-sm-12">
                <p>
                 <spring:theme code="insurance.insuranceCompany" />
                  <span class="text-primary"><spring:theme code="insurance.note" /></span>
                </p>
              </div>
            </div>
          </div>
        </div>
<c:url var="actionUrl" value="/insurance/submit" />
 <form:form method="post" class="brand-form" commandName="insuranceForm"
	action="${actionUrl}" id="insuranceForm">
           <div class="row">
            <div class="col-sm-7">
              <div class="panel">
                <div class="panel-body with-border-bottom">
                  <h2><spring:theme code="insurance.validateNumber" /></h2>
                  <p><spring:theme code="insurance.enterMobileNumber" /></p>
                </div>
                <div class="row row-no-space">
                  <div class="col-sm-12 form-group with-button">
                   	<formElement:formInputBox idKey="mobileNumber" type="tel" labelKey="insurance.mobileNumber" 
                   		path="mobileNumber" inputCSS="text" " 
                   		mandatory="true" />
                   	<form:button type="button" class="btn btn-default" onClick="location.href='/insurance'"><spring:theme code="insurance.edit" />
                   	</form:button>
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-primary-dark before-panel-margin">Button 1</button>
            </div>
          </div>

          <div class="panel">
            <div class="panel-body">
              <h2><spring:theme code="insurance.selectPayment" /></h2>
              <p><spring:theme code="insurance.voucherOrCC" /></p>
              <div class="btn-group btn-block">
                <button type="button" class="btn btn-primary btn-half" id="creditCardBtn">
                <spring:theme code="insurance.creditCardBtn" />  
                </button>
                <button type="button" class="btn btn-default btn-half" id="debitCardBtn">
                <spring:theme code="insurance.debitCardBtn" />
                </button>
                <form:hidden path="insuranceOption" value="CREDITCARD" />
              </div>
            </div>
          </div>
  			 <button type="submit" class="btn btn-primary-dark"> Button 2
          <span class="glyphicon glyphicon-menu-right"></span>
        </button>
        </form:form>
      </div>
    </div>
  </div>
</div>
</template:page>