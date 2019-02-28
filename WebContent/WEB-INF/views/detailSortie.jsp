<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../layout/entete.jsp"%>
<%@ include file="../layout/navbar.jsp"%>
<title>Sortir.com - Detail sortie</title>
</head>
<body>
<div class="container emp-profile">
    <c:if test="${!empty sortie }">
    <form>
        <div class="row">
            <div class="col-md-4">
                <h3>
                    ${ sortie.getNom() }
                </h3>
            </div>
            <div class="col-md-6">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                        <div class="row">
                            <div class="col-md-6">
                                <label>Date et heure de la sortie</label>
                            </div>
                            <div class="col-md-6">
                                ${ sortie.getDateDebut() }
                            </div>
                            <div class="col-md-6">
                                <label>Ville organisatrice</label>
                            </div>
                            <div class="col-md-6">
                                ${ site.getNom() }
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date limite inscription</label>
                            </div>
                            <div class="col-md-6">
                                ${ sortie.getDateLimiteInscription() }
                            </div>
                            <div class="col-md-6">
                                <label>Lieu</label>
                            </div>
                            <div class="col-md-6">
                                ${ lieu.getNom() }
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Nombre de place</label>
                            </div>
                            <div class="col-md-6">
                                ${ sortie.getNbInscriptionsMax() }
                            </div>
                            <div class="col-md-6">
                                <label>Rue</label>
                            </div>
                            <div class="col-md-6">
                                ${ lieu.getRue() }
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Durée</label>
                            </div>
                            <div class="col-md-6">
                                ${ sortie.getDuree() }
                            </div>
                            <div class="col-md-6">
                                <label>Code postal</label>
                            </div>
                            <div class="col-md-6">
                                ${ ville.getCodePostal() }
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Latitude</label>
                            </div>
                            <div class="col-md-6">
                                ${ lieu.getLatitude() }
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Description et infos</label>
                            </div>
                            <div class="col-md-6">
                                ${ sortie.getInfosSortie() }
                            </div>
                            <div class="col-md-6">
                                <label>Longitude</label>
                            </div>
                            <div class="col-md-6">
                                ${ lieu.getLongitude() }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">pseudo</th>
                    <th scope="col">nom</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${ participants }" var="participantSortie">
                        <tr>
                            <td>
                                <a href="/profil?id=${participantSortie.idparticipant}">${participantSortie.pseudo}</a>
                            </td>
                            <td>${participantSortie.nom}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </form>
    </c:if>
</div>
<%@ include file="../layout/footer.jsp"%>