<%@page  import="java.util.*,java.lang.*,javax.servlet.*,java.text.*"%>
<%!  static int ultimoMes(int mes,int ao)
   {
		int resultado=31;
		
		//if (mes==2) {if(ao!=2008||ao!=2012||ao!=2016||ao!=2020){resultado=29;}else{resultado=28;}}
		if (mes==2 && ao==2008) {	resultado=29; }else {	resultado=28; }
		if (mes==3) {resultado=31;}
		if (mes==4) {resultado=30;}
		if (mes==5) {resultado=31;}
		if (mes==6) {resultado=30;}
		if (mes==7) {resultado=31;}
		if (mes==8) {resultado=31;}
		if (mes==9) {resultado=30;}
		if (mes==10) {resultado=31;}
		if (mes==11) {resultado=30;}
		if (mes==12) {resultado=31;}
				
	return resultado;}


%>


<%!  public String tipoTarea(int tipo)
   {
		String titulo="";
		if (tipo==1) titulo="Llamada";
		if (tipo==2) titulo="Visita";
		if (tipo==3) titulo="Documentos";
		
	return titulo;}


%>

<%!  public String estado(String estado)
   {
		String titulo="";
		if (estado.equals("0")) titulo="Pendiente";
		if (estado.equals("1")) titulo="Rechazado";
		if (estado.equals("2")) titulo="Aprobado";
		if (estado.equals("3")) titulo="En Hold";
		
	return titulo;}


%>
<%!  public String statusCuenta(String estado)
   {
		String titulo="";
		if (estado.equals("0")) titulo="Sin Activar";
		if (estado.equals("1")) titulo="Activa";
		if (estado.equals("2")) titulo="Suspendida";
		if (estado.equals("3")) titulo="Cancelada";
		if (estado.equals("4")) titulo="Juridico";
		if (estado.equals("5")) titulo="FRAUDE";
		if (estado.equals("6")) titulo="Morosidad";
		if (estado.equals("7")) titulo="REESTRUCTURA";
		if (estado.equals("8")) titulo="BAD BANK";
		if (estado.equals("9")) titulo="Cobranza Externa";
		if (estado.equals("10")) titulo="Cobranza Especializada";
		if (estado.equals("11")) titulo="Activada Condicionada";
		if (estado.equals("12")) titulo="Cartera Castigada";
		if (estado.equals("13")) titulo="Cobranza Final";
		if (estado.equals("14")) titulo="Cartera Comprada";
		if (estado.equals("15")) titulo="Cartera Castigada Migrada";
		if (estado.equals("16")) titulo="Cartera Castigada Suspendida";
		if (estado.equals("17")) titulo="Cartera Castigada Liquidada";
		if (estado.equals("18")) titulo="Castigada Banco";				
		if (estado.equals("99")) titulo="Cartera Banco";	
		
	return titulo;}


%>

<%!  public String tipoCasa(String estado)
   {
		String titulo="";
		if (estado.equals("1")) titulo="Propia";
		if (estado.equals("2")) titulo="Rentada";
		if (estado.equals("3")) titulo="Familiar";
		if (estado.equals("4")) titulo="Hipotecada";
		
	return titulo;}


%>
<%!  public String estadoCivil(String estado)
   {
		String titulo="";
		if (estado.equals("1")) titulo="Soltero";
		if (estado.equals("2")) titulo="Viudo";
		if (estado.equals("3")) titulo="Divorciado";
		if (estado.equals("4")) titulo="Sociedad Conyugal";
		if (estado.equals("5")) titulo="Separación de Bienes";
		
	return titulo;}


%>
<%!  public String ocupacionActual(String estado)
   {
		String titulo="";
		if (estado.equals("1")) titulo="Empleado";
		if (estado.equals("2")) titulo="Gerente";
		if (estado.equals("3")) titulo="Otro";
		if (estado.equals("4")) titulo="Otro";
		if (estado.equals("5")) titulo="Trabaja por su cuenta";
		if (estado.equals("6")) titulo="Prof. Independiente";
		if (estado.equals("7")) titulo="Ama Casa";
		
	return titulo;}


%>

<%!  public String encrip(String titulo)
   {


	return titulo;}


%>
<%!  public String decrip(String titulo)
   {


	return titulo;}


%>
<%!  public int dia_semana(int dia,int mes,int ao)
   {
   
	Calendar cal =new GregorianCalendar();
	cal.set(ao,mes-1,dia);

	int valor=cal.get(cal.DAY_OF_WEEK);

	return valor;}


%>

<%!  public int semanaAo()
   {
	Calendar cale = Calendar.getInstance(); 
	int valor=cale.get(Calendar.WEEK_OF_YEAR);


	return valor;}


%>


<%!  

	public String traeVariable(HttpServletRequest request, String nombre)
   {
	String output="";
	if (request.getParameter(nombre) != null) { output=request.getParameter(nombre);}
	return output;
	}


%>
<%!  public String porc(double x)
   {
	String pattern="###.##%";
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	String output = myFormatter.format(x);
	return output;}


%>
<%!  public String formatcurrency(double x)
   {
	String pattern="$#,###.00";
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	String output = myFormatter.format(x);
	return output;}


%>
<%!  public String formatMiles(double x)
   {
	String pattern="#,###";
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	String output = myFormatter.format(x);
	return output;}


%>

<%!  public String checaNulo(String x)
   {
	String output="";
	if (x != null) { output=x;}
	return output;}


%>
<%!  public String buscacampo(String[][] x,String campo,int y)
   {
	String fin="";
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo.toUpperCase())) { fin=x[i][1];}
		}
		

	return fin;
	}
%>
<%!  public String buscacampoDebug(String[][] x,String campo,int y)
   {
	String fin="";
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo.toUpperCase())) { fin=x[i][1];}
		}
		
	fin=campo;
	return fin;
	}
%>
<%!  public String bc(String[][] x,String campo,int y)
   {
	String fin="";
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo.toUpperCase())) { fin=x[i][1];}
		}
	return fin;
	}
%>

<%!  public String inbc(String[][] x,int [] e,String campo,int y,int l,int forma)
   {
	String fin="";
	String err="";
	String campo2=campo.substring(1,campo.length());
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { fin=x[i][1]; if (e[i]==1) {err="Error";} }
		}
		
	String c="";
	if (forma==0) {c="<input name=\""+campo+"\" type=\"text\" class=\"cajacampo"+err+"\" id=\""+campo+"\" onChange=\"javascript:this.value=this.value.toUpperCase();\" value=\""+fin+"\" size=\""+l+"\">";	}
	else { c=fin; }
	return c;
	}
%>
<%!  public String inbcg(String[][] x,int [] e,String campo,int y,int l,int z,int forma)
   {
	String fin="";
	String err="";
	String campo2=campo.substring(1,campo.length());
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { fin=x[i][1]; if (e[i]==1) {err="Error";} }
		}
		
	String c="";
	
	if (forma==0) {c="<textarea name=\""+campo+"\" cols=\""+l+"\" rows=\""+z+"\" id=\""+campo+"\" class=\"cajacampo"+err+"\" onChange=\"javascript:this.value=this.value.toUpperCase();\">"+fin+"</textarea>";	}
	else { c=fin; }
	return c;
	}
%>

<%!  public String inbc_num(String[][] x,int [] e,String campo,int y,int l,int forma)
   {
	String fin="";
	String err="";
	String campo2=campo.substring(1,campo.length());
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { fin=x[i][1]; if (e[i]==1) {err="Error";} }
		}
		
	String c="";
	if (forma==0) {c="<input name=\""+campo+"\" type=\"text\" class=\"cajacampo"+err+"\" id=\""+campo+"\" onChange=\"javascript:valida_numero(this);\" value=\""+fin+"\" size=\""+l+"\">";	}
	else { c=fin; }
	return c;
	}
%>
<%!  public String inbcReadOnly(String[][] x,int [] e,String campo,int y,int l,int forma)
   {
	String fin="";
	String err="";
	String campo2=campo.substring(1,campo.length());
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { fin=x[i][1]; if (e[i]==1) {err="Error";} }
		}
		
	String c="";
	if (forma==0) {c="<input name=\""+campo+"\" type=\"text\" class=\"cajacampo"+err+"\" id=\""+campo+"\" value=\""+fin+"\" size=\""+l+"\" READONLY=true>";	}
	else { c=fin; }
	return c;
	}
%>
<%!  public String inbcr(String[][] x,String valor,String campo,int y,int forma,String js,int b)
   {
	String fin="";
	String adc="";
	String campo2=campo.substring(1,campo.length());
	
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { 
			if (x[i][1].equals(valor)) { adc=" checked"; }
			}
		}
		
	if (adc.equals("") && b==1 && forma==0) {adc=" checked"; }
	String c="";
	if (forma==0) {c="<input type=\"radio\" name=\""+campo+"\" value=\""+valor+"\" "+adc+" onClick=\""+js+"\">"; }
	else { 
		if (adc.equals("")) { c="<img src=\"http://registro.iliux.com/t1.gif\" width=\"15\" height=\"15\">"; }
		else { c="<img src=\"http://registro.iliux.com/t.gif\" width=\"15\" height=\"15\">"; }
		}
	return c;
	}
%>
<%!  public String inbcc(String[][] x,String valor,String campo,int y,int forma,String js)
   {
	String fin="";
	String adc="";
	String campo2=campo.substring(1,campo.length());
	
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo2.toUpperCase())) { 
			if (x[i][1].equals(valor)) { adc=" checked"; }
			}
		}
		
	String c="";
	if (forma==0) { c="<input type=\"checkbox\" name=\""+campo+"\" value=\""+valor+"\" "+adc+">"; }
	else { 
		if (adc.equals("")) { c="<img src=\"http://registro.iliux.com/t1.gif\" width=\"15\" height=\"15\">"; }
		else { c="<img src=\"http://registro.iliux.com/t.gif\" width=\"15\" height=\"15\">"; }
		}
	return c;
	}
%>

<%!  public int esNulo(String x)
   {
	int output=1;
	if (x.equals("")) { output=0;}
	return output;}


%>
<%!  public int errorcampo(String[][] x,int[] error,String campo,int y)
   {
	int fin=0;
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo.toUpperCase())) { fin=error[i];}
		}
	return fin;
	}
%>

<%!  public String hayerror(String[][] x,int[] error,String campo,int y)
   {
   	String elerror="";
	int fin=0;
	for (int i=0;i<y;i++) 
		{
		if (x[i][0].toUpperCase().equals(campo.toUpperCase())) { fin=error[i];}
		}
	if (fin != 0) {elerror="Error";}
	return elerror;
	}
%>
<%!  public int dia()
   {
	Calendar cale = Calendar.getInstance(); 
	int valor=cale.get(Calendar.DAY_OF_MONTH);


	return valor;}


%>
<%!  public int mes()
   {
	Calendar cale = Calendar.getInstance(); 
	int valor=cale.get(Calendar.MONTH)+1;


	return valor;}

%>
<%!  public int ao()
   {
	Calendar cale = Calendar.getInstance(); 
	int valor=cale.get(Calendar.YEAR);


	return valor;}

%>
<%!  public int cint(String valor)
   {
   	int resultado=0;
   	try {resultado = Integer.valueOf(valor).intValue();}
	catch (Exception e) {resultado=0;}
	return resultado ;}

%>
<%!  public int esnumero(String valor)
   {
	int resultado=0;
	double elvalor=0.00;
	try {	elvalor = Double.valueOf(valor).doubleValue(); 
			resultado=1;}
	catch (Exception e) { resultado=0; }

	return resultado ;}

%>
<%!  public double cdouble(String valor)
   	{
	double resultado = 0;
	try{
		resultado = Double.valueOf(valor).doubleValue();
	}catch(Exception e){
		resultado = 0;
	}
	
	return resultado ;
	}

%>
<%

	int def_debug=0;
	int def_sql=0;
	String fcampo="style=\"BACKGROUND: #ffffff; BORDER-BOTTOM: #666699 1px solid; BORDER-LEFT: #666699 1px solid; BORDER-RIGHT: #666699 1px solid; BORDER-TOP: #666699 1px solid; COLOR: #666699; FONT-FAMILY: verdana, arial; FONT-SIZE: 8pt; FONT-WEIGHT: bold; \"";




%>
<%!  public String checaEstado(int x)
   {
	String estado="";
	switch (x) {
	        case 0:  estado="Sin atender"; break;
            case 1:  estado="Cobrado"; break;
            case 2:  estado="Sin cobro manual"; break;
            case 3:  estado="Facturado"; break;
            case 4:  estado="Cancelado"; break;
            case 5:  estado="Sin cobro manual"; break;
            case 6:  estado="Cancelado"; break;
            case 7:  estado="Con Fraude"; break;
            case 8:  estado="Deteniodo sin envio"; break;
        }
    
	return estado;}


%>
<%!public String repl(String original,String toReplace, String replacement)
{
String newString = original;

int index = 0;
//com.ibm.uvm.tools.DebugSupport.halt();

while (index != -1) 
{
	index = newString.indexOf(toReplace);
	if (index != -1) 
		{
			if (index == 0)
				{newString = replacement + newString.substring(toReplace.length());}
			else
				{newString = newString.substring(0,index) + replacement + newString.substring(index + toReplace.length());}
		}
}
return newString;

}

%>
<%!  public String cantidad(double monto)
   {
   	String unidades[]={"","Un","Dos","Tres","Cuatro","Cinco","Seis","Siete","Ocho","Nueve"};
   	String descenas[]={"","Diez","Veinte","Treinta","Cuarenta","Cincuenta","Sesenta","Setenta","Ochenta","Noventa"};	
   	String centenas[]={"","Ciento","Docientos","Trecientos","Cuatrocientos","Quiniento","Seiscientos","Setecientos","Ochocientos","Novecientos"};	
	// Checa unidades
	int m=(int)(monto / 10);
	int m1=(int)monto-m*10;
	int centavos=(int)((monto-(int)monto)*100);
	
	
	String dato=" pesos ("+centavos+"/100) M.N.";
	if (m1 != 0) {
		dato=" y "+unidades[m1]+dato;}
	
	//Checa decenas
	m=(int)(monto / 100);
	m1=(int)monto-m*100;
	if (m1/10 != 0) {
		dato=descenas[m1/10]+dato;}

	//Checa Centenas
	m=(int)(monto / 1000);
	m1=(int)monto-m*1000;
	if (m1/100 != 0) {
		dato=centenas[m1/100]+" "+dato;}
	
	//Checa Miles
	m=(int)(monto / 10000);
	m1=(int)monto-m*10000;
	if (m1/1000 != 0) {
		dato=unidades[m1/1000]+" mil "+dato;}
	
	//Checa Decenas de Miles
	if (m != 0) {
		dato=descenas[m]+" "+dato;}
	
	return dato;}

%>
<%!  public String aleatorioNumerico()
   {
	Calendar cale = Calendar.getInstance(); 
	String dato="";
	dato=cale.get(Calendar.MONTH) + cale.get(Calendar.DAY_OF_MONTH) + "" + cale.get(Calendar.YEAR)+cale.get(Calendar.MINUTE) + cale.get(Calendar.MILLISECOND)+""+cale.get(Calendar.HOUR);
	return dato;}

%>
<%!  public String hora()
   {
	Calendar cale = Calendar.getInstance(); 
	String dato="";
	dato=cale.get(Calendar.HOUR_OF_DAY)+":"+cale.get(Calendar.MINUTE) ;
	return dato;}

%>
<%!  public String cadenaAaleatorio(int n,Random r)
   {

	char a='a';
	
	String t="";
	int k=0;
	for (int y=1;y<=n;y++) {
		k = 65 + r.nextInt(26);
		a=(char)k;
		t+=a;
		}
	return t;
	}
%>

<%!  public String limpiaNumero(String numero)
   {

	numero=repl(numero,"$","");
	numero=repl(numero,",","");
	numero=repl(numero," ","");
	
	return numero;}


%>
<%!  public String moneda(String cantidad)
   {
   	String output="";
   
   cantidad=checaNulo(cantidad);
   if (cantidad.equals("")) cantidad="0";
   
   cantidad=limpiaNumero(cantidad);
   	try {
		double resultado = Double.valueOf(cantidad).doubleValue();
	
		String pattern="$#,###.00";
		double value=41177502.02;
		DecimalFormat myFormatter = new DecimalFormat(pattern);
		output = myFormatter.format(resultado);
		}
	catch (Exception e) { output="ERROR!"; }
	return output;}


%>
<%!  public double convDoble(String valor)
   {
   valor=limpiaNumero(valor);
   	double resultado=0;
	try {
		resultado = Double.valueOf(valor).doubleValue();
		}
	catch (Exception e) { }
	return resultado ;}

%>
<%!  public String formatporcent(double x)
   {
	String pattern="###.00%";
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	String output = myFormatter.format(x);
	return output;}


%>
<%!  public String currencyString(String x)
   {
   
   
   	x=repl(x,"$","");
	x=repl(x,",","");
	String pattern="$#,###.00";
	String output="E**";
	
	double resultado = 0;
	
	try {
	
	resultado=Double.valueOf(x).doubleValue();
	
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	output = myFormatter.format(resultado);
	}
	catch (Exception e) { output=x;}
	
	
	
	return output;}


%>
<%!  public String banamex(String sucursal,String cuenta,String numero)
   {
		String output="";
		int s[]={23,29,31,37};
		int c[]={13,17,19,23,29,31,37};
		int n[]={11,13,17,19,23,29,31,37};
		
		// convertir    
   		cuenta="00000000"+cuenta;
		cuenta=cuenta.substring(cuenta.length()-7,cuenta.length());

   		sucursal="0000"+sucursal;
		sucursal=sucursal.substring(sucursal.length()-4,sucursal.length());

   		numero="00000000"+numero;
		numero=numero.substring(numero.length()-8,numero.length());

		int total=0;
		for (int x=0;x<=3;x++) {
			total+=cint(sucursal.substring(x,x+1))*s[x];
			}

		for (int x=0;x<=6;x++) {
			total+=cint(cuenta.substring(x,x+1))*c[x];
			}
		
		for (int x=0;x<=7;x++) {
			total+=cint(numero.substring(x,x+1))*n[x];
			}
			
			
		int r=0;
		r=total-(total/97)*97;
		r=99-r;
	output="00"+r;
	
	output=output.substring(output.length()-2,output.length());
	
	
	return output;}


%>
<%!  public String hsbc(String numero)
   {
   
		String output="";


		// Toma todos los digitos del numero pasado
		
		int n=2;
		int total=0;
		
	
		
		for (int x=0;x<=numero.length()-1;x++) {
			String digito=numero.substring(x,x+1);
			int ndigito=cint(digito);
			// MUltiplicalo por 1 o por 2
			int db=ndigito*n;
			
			
			// Suma los digitos del numero calculado
			String nv=""+db;
			if (nv.length()==2) 
				{nv=nv; } 
			else {nv="0"+nv; }
			
			
			int sdigito=0;
			if (n==2) {
				sdigito=cint(nv.substring(0,1))+cint(nv.substring(1,2)); }
			else { sdigito=cint(nv); }
			// Acomula los valores calculados
			total+=sdigito;
			if (n==1) { n=2; } else { n=1; }
			}
		
		String cfinal=""+total;
		cfinal=cfinal.substring(cfinal.length()-1,cfinal.length());

		int nfinal=cint(cfinal);
		if (nfinal==0) cfinal="0";
		if (nfinal==1) cfinal="9";
		if (nfinal==2) cfinal="8";
		if (nfinal==3) cfinal="7";
		if (nfinal==4) cfinal="6";
		if (nfinal==5) cfinal="5";
		if (nfinal==6) cfinal="4";
		if (nfinal==7) cfinal="3";
		if (nfinal==8) cfinal="2";
		if (nfinal==9) cfinal="1";
		
		output=""+cfinal;	
	
	return output;}


%>
<%!  public String hsbc2(String numero)
   {
   
		String output="";


		// Toma todos los digitos del numero pasado
		
		int n=2;
		int total=0;
		
	
		
		for (int x=0;x<=numero.length()-1;x++) {
			String digito=numero.substring(x,x+1);
			int ndigito=cint(digito);
			// MUltiplicalo por 1 o por 2
			int db=ndigito*n;
			
			
			// Suma los digitos del numero calculado
			String nv=""+db;
			if (nv.length()==2) 
				{nv=nv; } 
			else {nv="0"+nv; }
			
			
			int sdigito=0;
			if (n==2) {
				sdigito=cint(nv.substring(0,1))+cint(nv.substring(1,2)); }
			else { sdigito=cint(nv); }
			// Acomula los valores calculados
			total+=sdigito;
			if (n==1) { n=2; } else { n=1; }
			}
		
		String cfinal=""+total;
		cfinal=cfinal.substring(cfinal.length()-1,cfinal.length());

		int nfinal=cint(cfinal);
		if (nfinal==0) cfinal="0";
		if (nfinal==1) cfinal="9";
		if (nfinal==2) cfinal="8";
		if (nfinal==3) cfinal="7";
		if (nfinal==4) cfinal="6";
		if (nfinal==5) cfinal="5";
		if (nfinal==6) cfinal="4";
		if (nfinal==7) cfinal="3";
		if (nfinal==8) cfinal="2";
		if (nfinal==9) cfinal="1";
		
		output=""+cfinal;	
	
	return output;}


%>
<%! public String mayus(String palabra)
	{
		String palMayus = "";
		
		palMayus = palabra.toUpperCase();
	
	return palMayus;
	}
%>
<%! public String minus(String palabra)
	{
		String palMinus = "";
		
		palMinus = palabra.toLowerCase();
	
	return palMinus;
	}
%>
<%!  public String nombreDia(int dia)
   {
	String nombre="";
	switch (dia) {
	        case 1:  nombre="Domingo"; break;
            case 2:  nombre="Lunes"; break;
            case 3:  nombre="Martes"; break;
            case 4:  nombre="Miercoles"; break;
            case 5:  nombre="Jueves"; break;
            case 6:  nombre="Viernes"; break;
            case 7:  nombre="Sabado"; break;
        }
    
	return nombre;}


%>
<%!  public String digitoHSBC(String numero)
   {
   
		String output="";


		// Toma todos los digitos del numero pasado
		
		int n=1;
		if(numero.length()==9){
			n = 2;
		}
		int total=0;
		
	
		
		for (int x=0;x<=numero.length()-1;x++) {
			String digito=numero.substring(x,x+1);
			int ndigito=cint(digito);
			// MUltiplicalo por 1 o por 2
			int db=ndigito*n;
			
			
			// Suma los digitos del numero calculado
			String nv=""+db;
			if (nv.length()==2) 
				{nv=nv; } 
			else {nv="0"+nv; }
			
			
			int sdigito=0;
			if (n==2) {
				sdigito=cint(nv.substring(0,1))+cint(nv.substring(1,2)); }
			else { sdigito=cint(nv); }
			// Acomula los valores calculados
			total+=sdigito;
			if (n==1) { n=2; } else { n=1; }
			}
		
		String cfinal=""+total;
		cfinal=cfinal.substring(cfinal.length()-1,cfinal.length());

		int nfinal=cint(cfinal);
		if (nfinal==0) cfinal="0";
		if (nfinal==1) cfinal="9";
		if (nfinal==2) cfinal="8";
		if (nfinal==3) cfinal="7";
		if (nfinal==4) cfinal="6";
		if (nfinal==5) cfinal="5";
		if (nfinal==6) cfinal="4";
		if (nfinal==7) cfinal="3";
		if (nfinal==8) cfinal="2";
		if (nfinal==9) cfinal="1";
		
		output=""+cfinal+"";	
	
	return output;}


%>
<%!  public String cstring2(int valor)
   {
	String resultado = String.valueOf(valor);
	return resultado ;}
%>
<%!  public String formatcurrencyCPF(double x)
   {
	String pattern="#,###.00";
	double value=41177502.02;
	DecimalFormat myFormatter = new DecimalFormat(pattern);
	String output = myFormatter.format(x);
	return output;}


%>
<%! public String consultaIdentificador(String tarjeta)
	{
	String identificador = "";
	int ltarjeta = tarjeta.length();
	switch(ltarjeta){
		case 9:	identificador = tarjeta.substring(0,2);	break;
		case 16: identificador = tarjeta.substring(6,9); break;
	}
	return identificador;	
	}
%>
<%!  public String cstring(double valor)
   {
	String resultado = String.valueOf(valor);
	return resultado ;}
%>