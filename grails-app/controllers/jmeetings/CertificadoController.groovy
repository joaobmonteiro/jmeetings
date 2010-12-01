package jmeetings

import org.codehaus.groovy.grails.plugins.jasper.*

class CertificadoController {
    JasperService jasperService
    def gerar = {
        println params.id
        def novaInscricao = NovaInscricao.findByEmailAndFezCheckin(params.id, true);
        println novaInscricao
        if(novaInscricao){
            def parametros = ['Participante' : novaInscricao.nome]
            println parametros
            def reportDef = new JasperReportDef(name:'teste.jasper',fileFormat:JasperExportFormat.PDF_FORMAT, parameters:parametros)
            println reportDef.getFilePath()
            def data = jasperService.generateReport(reportDef)
            response.setHeader("Content-disposition", "attachment; filename=test2e.pdf");
            //response.contentType = "application/pdf"
            //response.characterEncoding = "UTF-8"
            response.outputStream << data
        } else {
            render('erro');
        }

    }
}