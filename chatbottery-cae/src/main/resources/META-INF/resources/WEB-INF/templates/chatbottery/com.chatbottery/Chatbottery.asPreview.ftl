<#-- @ftlvariable name="self" type="com.chatbottery.Chatbottery" -->

<div>
    <h3>Chatbottery properties</h3>
    <table>
        <tr><td><strong>Source</strong></td><td>:</td><td>${self.src}</td></tr>
        <tr><td><strong>Data Object</strong></td><td>:</td><td>${self.dataObject}</td></tr>
        <tr><td><strong>Open on Load</strong></td><td>:</td><td>${(self.openOnLoad == 1)?c}</td></tr>
        <tr><td><strong>Position</strong></td><td>:</td><td>${self.renderPosition}</td></tr>
    </table>
</div>

<@cm.include self=self view="" />
