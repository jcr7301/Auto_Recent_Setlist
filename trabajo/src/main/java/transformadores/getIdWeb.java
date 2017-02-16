/*Esta clase es necesaría ya que si no hacemos una búsqueda mediante la Id del grupo y de su nombre al mismo tiempo
puede devolver resultados erroneos como por ejemplo salas de música o festivales que lleven el mismo nombre ej.: Rory Gallagher*/

package transformadores;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
public class getIdWeb extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		
		String id="";
		
		try{
			String plainText=(String)message.getPayload();

				String iniStr = "<a href=\"search?artist=";
				String finStr = "&amp;query=";
				if(plainText.indexOf(iniStr)!=-1){
					int ini = plainText.indexOf(iniStr);
					ini = ini + iniStr.length();
					int fin = plainText.indexOf(finStr);

					id = plainText.substring(ini, fin);
	
				}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}

		return id;
	}

}
