/*Esta clase elimina canciones repetidas y devuelve un único array ya listo para pasar al flujo de Spotify*/

package transformadores;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
public class cleanSetlist extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {
		
		String setlist="";
		
		try{
			
			String originalSetlist="";
			CopyOnWriteArrayList<String> threadSafeList = (CopyOnWriteArrayList<String>) message.getPayload();
			Iterator<String> failSafeIterator =threadSafeList.iterator();
			
	        while(failSafeIterator.hasNext()){
	        	originalSetlist=originalSetlist + failSafeIterator.next();
	        }
	        
			String[] originalCanciones = originalSetlist.split(";");
			String[] canciones = new String[originalCanciones.length];
			
			for(int i=0; i<originalCanciones.length; i++){
				boolean flag = false;
				for(int j=0; j<canciones.length; j++){
					if(originalCanciones[i].equals(canciones[j])){
						flag=true;
						break;
					}
				}
				if(!flag){
					int k=0;
					while(canciones[k]!=null){
						k++;
					}
					canciones[k]=originalCanciones[i];
				}
			}
			
			for(int i=0; i<canciones.length && canciones[i]!=null; i++){
				if(setlist!=""){
					setlist = setlist + ";" + canciones[i];
				}
				else{
					setlist = canciones[i];
				}
			}
			
		}
		catch(Exception e){
			e.printStackTrace(); 
		}

		return setlist;
	}

}

