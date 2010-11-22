<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
    <title>Sorteio</title>
  </head>
  <body>
    <div class="nav">
      <span class="menuButton"><a class="home" href="http://javaneiros.com.br">Página do Evento</a></span>
    </div>
    <div class="body">
      <h1>Sorteio</h1>
      <g:form method="post" >
        <div class="list">
          <table>
            <thead>
              <tr>
                <g:sortableColumn property="id" title="${message(code: 'inscricao.id.label', default: 'Id')}" />
                <g:sortableColumn property="participante.nome" title="${message(code: 'inscricao.participante.nome.label', default: 'Participante')}" />
                <g:sortableColumn property="participante.nome" title="Sortear?" />
                <g:sortableColumn property="participante.nome" title="Premiar?" />
                <g:sortableColumn property="participante.nome" title="Sorteado" />
                <g:sortableColumn property="participante.nome" title="Premiado" />
            </tr>
            </thead>
            <tbody>
            <g:each in="${premiaveisList}" status="i" var="inscricaoInstance">
              <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                <td>${fieldValue(bean: inscricaoInstance, field: "id")}</td>

                <td>${fieldValue(bean: inscricaoInstance, field: "participante")}</td>

                <td>
                  <g:link action="sortear" id="${inscricaoInstance.id}">SORTEADO</g:link>
                </td>
                <td>
                  <g:link action="premiar" id="${inscricaoInstance.id}">PREMIADO</g:link>
                </td>

                <td>${fieldValue(bean: inscricaoInstance, field: "sorteado")}</td>
                <td>${fieldValue(bean: inscricaoInstance, field: "premiado")}</td>

              </tr>
            </g:each>
            </tbody>
          </table>
        </div>
      </g:form>
    </div>
  </body>
</html>