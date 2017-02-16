package transformadores;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
public class getSetlist extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		
		String setlist="";
		
		try{
			String plainText=(String)message.getPayload();

				String iniStr = ".html?song=";
				String finStr = "\" title=\"Statistics for";
				while(plainText.indexOf(iniStr)!=-1){
					int ini = plainText.indexOf(iniStr);
					ini = ini + iniStr.length();
					int fin = plainText.indexOf(finStr);
					if(setlist!=""){
						setlist = setlist + "|" + plainText.substring(ini, fin);
					}
					else{
						setlist = plainText.substring(ini, fin);
					}
	
					plainText = plainText.substring(fin+1, plainText.length());
				}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}

		return setlist;
	}

}
