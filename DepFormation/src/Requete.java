import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Requete {

	
	public static void afficherrequete(ResultSet a) {
		System.out.println("reussi");
	}
		
	public static int idEntreprise(java.sql.Statement stmt,String a) throws SQLException {
		a = "\""+a+"\"";
		String b = "SELECT idEntreprise FROM `entreprise` WHERE `nomET` LIKE "+a;
		int resultat = 0;
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {
			resultat=rs.getInt(1);
		}
		return resultat;
	}

	public static int idIntervenant(java.sql.Statement stmt,String a) throws SQLException {
		a = "\""+a+"\"";
		String b = "SELECT idIntervenant FROM `intervenant` WHERE `nomI` LIKE "+a;
		int resultat = 0;
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {
			resultat=rs.getInt(1);
		}
		return resultat;
	}
	
	public static int idThemeConf(java.sql.Statement stmt, String a) throws SQLException {
		a = "\""+a+"\"";
		String b = "SELECT idThemeConf FROM `themeconference` WHERE `nomTheme` LIKE "+a;
		int resultat = 0;
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {
			resultat=rs.getInt(1);
		}
		return resultat;	
	
	}
	
	public static void ajoutEntreprise(java.sql.Statement stmt,int id, String nom,String denom,String adress,String numtel,String secteur,int iddept) throws SQLException {
		String a = "INSERT INTO entreprise VALUES('"+id+"','"+nom+"','"+denom+"','"+adress+"','"+numtel+"','"+secteur+"','"+iddept+"')";
		stmt.executeUpdate(a);
	}
	
	public static void ajoutIntervenant(java.sql.Statement stmt,int id,String noml,String prenoml,String qualification,int idDeptForm) throws SQLException {
		String a =  "INSERT INTO intervenant VALUES('"+id+"','"+noml+"','"+prenoml+"','"+qualification+"','"+idDeptForm+"')";
		stmt.executeUpdate(a);
	}
	
	public static void ajoutEmploye(java.sql.Statement stmt,int id,String nomE,String prenomE,String mail,String numTel,String linkdin, String ancienetu, int idEntre,int idCours, int idConf) throws SQLException {
		String a =  "INSERT INTO employe VALUES('"+id+"','"+nomE+"','"+prenomE+"','"+mail+"','"+numTel+"','"+linkdin+"','"+ancienetu+"','"+idEntre+"','"+idCours+"','"+idConf+"')";
		stmt.executeUpdate(a);
	}
	
	public static void ajoutConf(java.sql.Statement stmt,int idconf,String nomConf,String dateC,String publicC,int nbPlaceC,String dureeC,int idIntervenant, int idThemeConf) throws SQLException {
		String a = "INSERT INTO conference VALUES('"+idconf+"','"+nomConf+"','"+dateC+"','"+publicC+"','"+nbPlaceC+"','"+dureeC+"','"+idIntervenant+"','"+idThemeConf+"')";
		stmt.executeUpdate(a);
	}
	
	
	public static void ajoutCours(java.sql.Statement stmt,int idcours,String dateCo,String publicCo,int nbPlace,String dureeCo,int idMatiere, int idIntervenant) throws SQLException {
		String a = "INSERT INTO cours VALUES('"+idcours+"','"+dateCo+"','"+publicCo+"','"+nbPlace+"','"+dureeCo+"','"+idMatiere+"','"+idIntervenant+"')";
		stmt.executeUpdate(a);
	}
	
	
	public static ArrayList<ResultSet> rechercheEntre(java.sql.Statement stmt, String a) throws SQLException {
		
		a = "\""+a+"\"";
		String b = "SELECT * FROM `entreprise` WHERE `nomET` LIKE "+a+" OR `denomination` LIKE "+a+" OR `adresseEt`LIKE "+a+" OR`numTelephoneEt`LIKE "+a+" OR`secteurActivite`LIKE "+a;
		
		
		
		ArrayList<ResultSet> resultat = new ArrayList<ResultSet>();
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {				 
			 resultat.add(rs);
			 System.out.println(rs.getString(1)+"   "+rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(6)+"   ");
		}
		return resultat;
		
	}
	
	public static ArrayList<ResultSet> rechercheIntervenant(java.sql.Statement stmt, String a) throws SQLException {
		
		a = "\""+a+"\"";
		String b = "SELECT * FROM `intervenant` WHERE `nomI` LIKE "+a+" OR `prenomI` LIKE "+a+" OR `qualification`LIKE "+a;
		
		
		
		ArrayList<ResultSet> resultat = new ArrayList<ResultSet>();
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {				 
			 resultat.add(rs);
			 System.out.println(rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(4)+"   ");
		}
		return resultat;
		
	}
	
	public static ArrayList<ResultSet> rechercheEmp(java.sql.Statement stmt, String a) throws SQLException {
		
		a = "\""+a+"\"";
		String b = "SELECT * FROM `employe` INNER JOIN `entreprise` WHERE employe.idEntreprise = entreprise.idEntreprise AND `nomE` LIKE "+a+" OR `prenomE` LIKE "+a+" OR `mailE`LIKE "+a+" OR `nomET`LIKE "+a+" OR `secteurActivite`LIKE "+a;
		
		
		
		ArrayList<ResultSet> resultat = new ArrayList<ResultSet>();
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {				 
			 resultat.add(rs);
			 System.out.println(rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(4)+"   "+rs.getString(5)+"   "+rs.getString(12)+"   "+rs.getString(16)+"   ");
		}
		return resultat;
		
	}
	
	public static ArrayList<ResultSet> rechercheCours(java.sql.Statement stmt, String a) throws SQLException {
		
		a = "\""+a+"\"";
		String b = "SELECT * FROM `cours` INNER JOIN `matiere` WHERE cours.idMatiere = matiere.idMatiere AND `dateCo` LIKE "+a+" OR `publicCo` LIKE "+a+" OR `nbPlaceCo`LIKE "+a+" OR `dureeCo`LIKE "+a+" OR `nomMatiere`LIKE "+a+" OR `anneeM`LIKE "+a;
		
		
		
		ArrayList<ResultSet> resultat = new ArrayList<ResultSet>();
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {				 
			 resultat.add(rs);
			 System.out.println(rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(4)+"   "+rs.getString(5)+"   "+rs.getString(9)+"   "+rs.getString(10)+"   ");
		}
		return resultat;
		
	}

	public static ArrayList<ResultSet> rechercheConf(java.sql.Statement stmt, String a) throws SQLException {
		
		a = "\""+a+"\"";
		String b = "SELECT * FROM `conference` INNER JOIN `intervenant` INNER JOIN `themeconference` WHERE conference.idIntervenant = intervenant.idIntervenant AND conference.idThemeConf = themeconference.idThemeConf  AND `nomConf` LIKE "+a+" OR `dateC` LIKE "+a+" OR `publicC`LIKE "+a+" OR `nbPlaceC`LIKE "+a+" OR `dureeC`LIKE "+a+" OR `nomI`LIKE "+a+" OR `prenomI`LIKE "+a+" OR `nomTheme`LIKE "+a;
		
		
		
		ArrayList<ResultSet> resultat = new ArrayList<ResultSet>();
		ResultSet rs = stmt.executeQuery(b);
		while(rs.next()) {				 
			 resultat.add(rs);
			 System.out.println(rs.getString(2)+"   "+rs.getString(3)+"   "+rs.getString(4)+"   "+rs.getString(5)+"   "+rs.getString(6)+"   "+rs.getString(10)+"   "+rs.getString(11)+"   "+rs.getString(15)+"   ");
		}
		return resultat;
		
	}
	

}
