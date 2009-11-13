<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr"%>


<bean:define id="mailTrackingId" name="mailTrackingBean" property="mailTracking.externalId" />

<h2><bean:message key="title.mail.tracking.application" bundle="MAIL_TRACKING_RESOURCES" /></h2>

<h3><bean:message key="title.mail.tracking.attributes.management" bundle="MAIL_TRACKING_RESOURCES" /></h3>

<p>
<html:link page="/mailtracking.do?method=prepare">
	<bean:message key="label.back" bundle="MAIL_TRACKING_RESOURCES" />
</html:link>
</p>

<html:messages id="message" message="true" bundle="MAIL_TRACKING_RESOURCES" property="mailtracking.operations">
	<span class="valid"> <bean:write name="message" /> </span>
	<br />
</html:messages>

<fr:form action='<%= String.format("/manageMailTracking.do?method=editMailTrackingAttributes&amp;mailTrackingId=%s", mailTrackingId) %>'>
	<fr:edit id="mail.tracking.bean" name="mailTrackingBean" schema="module.mailtracking.manage.edit">
		<fr:destination name="cancel" path="/mailTracking.do?method=prepare" />
	</fr:edit>
	
	<p><html:submit><bean:message key="label.edit" bundle="MAIL_TRACKING_RESOURCES" /></html:submit></p>
</fr:form>
