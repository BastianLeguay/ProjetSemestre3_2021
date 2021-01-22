
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Scanner;

public class ConnectJDBC {

	private String url="jdbc:mysql://localhost/projet?useSSL=false&serverTimezone=UTC";
	private String login="root";
	private String password="root"; 
	private Connection connection;
	final static String SEPARATEUR = ";";
	 public Connection connectBD() throws SQLException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection(url,login,password);
			
		}
		catch (ClassNotFoundException e){
			System.err.println("erreur du chargement du driver");
			e.printStackTrace();
			}
		return connection;
		}
	
	public static void main(String[] args) throws SQLException{
	
		ConnectJDBC test = new ConnectJDBC();
		Connection connection = test.connectBD();	
		java.sql.Statement stmt = connection.createStatement();
		
		
		System.out.println("Quel fonction utiliser ?");
		System.out.println("1 recherche entreprise \n2 ajout entreprise\n3 recherche intervenant\n4 ajout intervenant\n5 recherche employe\n6 ajout employe\n7 recherche cours\n8 ajout de cours\n9 recherche conference\n10 ajout conference\n11 Quitter le programme");
		System.out.println("Entrez le numéro de la fonction");
		
		Scanner input = new Scanner(System.in);
        int number = input.nextInt();
        
        if(number == 1) {
        	rechercheE(stmt);
        }
        
        if(number == 2) {
        	ajoutE(stmt);
        }
        
        if(number == 3) {
        	rechercheI(stmt);
        }
        
        if(number == 4) {
        	ajoutI(stmt);
        }

        if(number == 5) {
        	rechercheEmpl(stmt);
        }

        if(number == 6) {
        	ajoutEmploye(stmt);
        }

        if(number == 7) {
        	rechercheCours(stmt);
        }
	
        if(number == 8) {
        	ajoutCours(stmt);
        }
        
        if(number == 9) {
        	rechercheConf(stmt);
        }
        
        if(number == 10) {
        	ajoutConf(stmt);
        }
        
        if(number == 11) {
        	System.out.println("Vous avez quitter le logiciel");
        	input.close();
    		System.exit(1);
    		main(null);
        }
        
        if(number < 1 || number > 11) {
        	main(null);
        }
		


	
	
		
        
 
	
	
	}
	
	
	
	public static void rechercheE(java.sql.Statement stmt) throws SQLException {
		System.out.println("Entrez votre recherche ou marquez: X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		else {
		Requete.rechercheEntre(stmt,a);
		rechercheE(stmt);
		
		}
	}

	public static void ajoutE(java.sql.Statement stmt) throws SQLException {
		System.out.println("Voullez vous ajouter une entreprise? Pour continuez marquez O ou X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		if(a.matches("O")) {
		System.out.println("Veuillez entrez les valeurs dans l'ordre annoncer avec un ; pour différencier les termes\nnom de l'entreprise, denomination social, adresse ,numéro de téléphone (espace tout les deux chiffres) ,secteur d'activité ,numéro du département de formation");
		String id = "SELECT MAX(idEntreprise) FROM entreprise";
		ResultSet rs = stmt.executeQuery(id);
		a = input.nextLine();
		
		int newID = 0;
		while(rs.next()) {
			newID = rs.getInt(1)+1;
		}
		String mots[] = a.split(SEPARATEUR);
        String nomE = mots[0];
        String denom = mots[1];
        String adress = mots[2];
        String numTel = mots[3];
        String activite = mots[4];
        int idDept = Integer.parseInt(mots[5]);
		
		
		Requete.ajoutEntreprise(stmt,newID, nomE, denom, adress, numTel, activite, idDept);
	
		
		System.out.println("Entreprise ajouter");
		ajoutE(stmt);
		}
		else {
		ajoutE(stmt);
		}
	}
	
	public static void rechercheI(java.sql.Statement stmt) throws SQLException {
		System.out.println("Entrez votre recherche ou marquez: X pour quitter");
			
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		else {
		Requete.rechercheIntervenant(stmt,a);
		rechercheI(stmt);
		}
	}
	
	public static void ajoutI(java.sql.Statement stmt) throws SQLException {
		System.out.println("Voullez vous ajouter un intervenant? Pour continuez marquez O ou X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		if(a.matches("O")) {
		System.out.println("Veuillez entrez les valeurs dans l'ordre annoncer avec un ; pour différencier les termes\nnom, prenom, qualification, numéro du département de formation");
		String id = "SELECT MAX(idIntervenant) FROM intervenant";
		ResultSet rs = stmt.executeQuery(id);
		a = input.nextLine();
		
		int newID = 0;
		while(rs.next()) {
			newID = rs.getInt(1)+1;
		}
		String mots[] = a.split(SEPARATEUR);
	    String nomI = mots[0];
	    String prenomI = mots[1];
	    String qualification = mots[2];
	    int idDept = Integer.parseInt(mots[3]);
			
		Requete.ajoutIntervenant(stmt,newID,nomI,prenomI,qualification, idDept);
		
		System.out.println("Intervenant ajouter");
		ajoutI(stmt);
		}
		else {
		ajoutI(stmt);
		}
	}
	
	
	public static void rechercheEmpl(java.sql.Statement stmt) throws SQLException {
		System.out.println("Entrez votre recherche ou marquez: X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		else {
		Requete.rechercheEmp(stmt,a);
		rechercheEmpl(stmt);
		}
	}

	public static void ajoutEmploye(java.sql.Statement stmt) throws SQLException {
		System.out.println("Voullez vous ajouter un employe? Pour continuez marquez O ou X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		if(a.matches("O")) {
		System.out.println("Veuillez entrez les valeurs dans l'ordre annoncer avec un ; pour différencier les termes\nnom ,prenom ,mail ,numéro de téléphone (espace tout les deux chiffres) ,url linkdin ,nom de l'entreprise ,numéro de cours suivie ,numéro de conference suivie");
		String id = "SELECT MAX(idEmploye) FROM employe";
		ResultSet rs = stmt.executeQuery(id);
		a = input.nextLine();
		
		int newID = 0;
		while(rs.next()) {
			newID = rs.getInt(1)+1;
		}
		String mots[] = a.split(SEPARATEUR);
        String nomE = mots[0];
        String prenomE = mots[1];
        String mail = mots[2];
        String numTel = mots[3];
        String linkdin = mots[4];
        String etudiant = "";
        int idEntre= Requete.idEntreprise(stmt, mots[5]);
        int idCours = Integer.parseInt(mots[6]);
        int idConf = Integer.parseInt(mots[7]);
		System.out.println("Cette personne est un ancien etudiant(Oui/Non) ?");
		String questionEtudiant = input.nextLine();
		if(questionEtudiant.matches("Oui")) {
			etudiant = "True";
		}
		if(questionEtudiant.matches("Non")) {
			etudiant = "False";
		}
		
		Requete.ajoutEmploye(stmt,newID, nomE,prenomE, mail, numTel,linkdin, etudiant,idEntre, idCours, idConf);
		
		
		System.out.println("Employe ajouter");
		ajoutEmploye(stmt);
		}
		else {
		ajoutEmploye(stmt);
		}
	}
	
	public static void rechercheCours(java.sql.Statement stmt) throws SQLException {
		System.out.println("Entrez votre recherche ou marquez: X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		else {
		Requete.rechercheCours(stmt,a);
		rechercheCours(stmt);
		}
	}
	

	public static void ajoutCours(java.sql.Statement stmt) throws SQLException {
		System.out.println("Voullez vous ajouter un cours? Pour continuez marquez O ou X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		if(a.matches("O")) {
		System.out.println("Veuillez entrez les valeurs dans l'ordre annoncer avec un ; pour différencier les termes\ndate du cours (AAAA-MM-JJ), niveau requi, nombre de place, durée (00h00min), numéro de la matiere, nom de l'intervenant");
		String id = "SELECT MAX(idCours) FROM cours";
		ResultSet rs = stmt.executeQuery(id);
		a = input.nextLine();
		
		int newID = 0;
		while(rs.next()) {
			newID = rs.getInt(1)+1;
		}
		String mots[] = a.split(SEPARATEUR);
        String dateCo = mots[0];
        String publicCo = mots[1];
        int nbPlaceCo = Integer.parseInt(mots[2]);
        String dureeCo = mots[3];
        int idMatiere = Integer.parseInt(mots[4]);
        int idIntervenant =Requete.idIntervenant(stmt, mots[5]);
        
		
		Requete.ajoutCours(stmt,newID, dateCo,publicCo,nbPlaceCo , dureeCo,idMatiere, idIntervenant);
		
		
		System.out.println("Cours ajouter");
		ajoutCours(stmt);
		}
		else {
		ajoutCours(stmt);
		}
	}
	

	public static void rechercheConf(java.sql.Statement stmt) throws SQLException {
		System.out.println("Entrez votre recherche ou marquez: X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		else {
		Requete.rechercheConf(stmt,a);
		rechercheConf(stmt);
		}
	}
	
	public static void ajoutConf(java.sql.Statement stmt) throws SQLException {
		System.out.println("Voullez vous ajouter une conference? Pour continuez marquez O ou X pour quitter  ");
		
		Scanner input = new Scanner(System.in);
		String a = input.nextLine();
		if(a.matches("X")) {
			main(null);
			input.close();
		}
		if(a.matches("O")) {
		System.out.println("Veuillez entrez les valeurs dans l'ordre annoncer avec un ; pour différencier les termes\nnom de la conference ,date de la conference (AAAA-MM-JJ) ,niveau du cours ,nombre de place ,duree (00h00min),nom de l'intervenant ,nom du theme");
		String id = "SELECT MAX(idConference) FROM conference";
		ResultSet rs = stmt.executeQuery(id);
		a = input.nextLine();
		
		int newID = 0;
		while(rs.next()) {
			newID = rs.getInt(1)+1;
		}
		String mots[] = a.split(SEPARATEUR);
        String nomConf = mots[0];
        String dateConf = mots[1];
        String publicConf = mots[2];
        int nbPlace = Integer.parseInt(mots[3]);
        String dureeConf = mots[4];
        int idIntervenant =Requete.idIntervenant(stmt, mots[5]);
        int idTheme = Requete.idThemeConf(stmt, mots[6]);
		
		Requete.ajoutConf(stmt,newID, nomConf,dateConf,publicConf , nbPlace,dureeConf, idIntervenant,idTheme);
		
		
		System.out.println("Cours ajouter");
		ajoutConf(stmt);
		}
		else {
			ajoutConf(stmt);
		}
	}
	public static void lecturerequete(ArrayList<ResultSet>a) {
		for(int i=0;i<a.size();i++) {
			Requete.afficherrequete(a.get(i));
		}
	}
}
