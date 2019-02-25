package fr.eni.sortir.servlets.sortie;

import fr.eni.sortir.bll.SortieManager;
import fr.eni.sortir.bo.Lieu;
import fr.eni.sortir.bo.Site;
import fr.eni.sortir.bo.Sortie;
import fr.eni.sortir.bo.Ville;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sortie/detail")
public class DetailSortieServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SortieManager sortieManager = new SortieManager();
        Integer idSortie = lireParametreIdSortie(request);
        if(idSortie != null){
            List listInfoSortie  = sortieManager.selectAllInfoById(idSortie);
            Sortie sortie = (Sortie) listInfoSortie.get(0);
            Lieu lieu = (Lieu) listInfoSortie.get(1);
            Ville ville = (Ville) listInfoSortie.get(2);
            Site site = (Site) listInfoSortie.get(3);

            request.setAttribute("sortie", sortie);
            request.setAttribute("lieu", lieu);
            request.setAttribute("ville", ville);
            request.setAttribute("site", site);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/detailSortie.jsp");
            rd.forward(request, response);
        } else {
            response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
            response.setHeader("Location", "/");
        }
    }

    private int lireParametreIdSortie(HttpServletRequest request) {
        Integer idSortie = null;
        if(request.getParameter("id")!=null) {
            idSortie = Integer.parseInt(request.getParameter("id"));
        }
        return idSortie;
    }
}
