package transformadores;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
public class getUltimosConciertos extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		
		String conciertos="";
		
		try{
			String plainText=(String)message.getPayload();

			for(int i=0; i<10; i++){	//Hay m�s fragmentos de html que coinciden por eso lo limitar� a los 10 primeros
				String iniStr = "<h2><a href=\"";
				String finStr = "\" title=\"View this";
				if(plainText.indexOf(iniStr)!=-1){	//Sigue buscando conciertos siempre y cuando hayan m�s de 10
					int ini = plainText.indexOf(iniStr);
					ini = ini + iniStr.length();
					int fin = plainText.indexOf(finStr);
					if(conciertos!=""){
						conciertos = conciertos + "|" + plainText.substring(ini, fin);
					}
					else{
						conciertos = plainText.substring(ini, fin);
					}
	
					plainText = plainText.substring(fin+1, plainText.length());
				}
			}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}

		return conciertos;
	}

}
