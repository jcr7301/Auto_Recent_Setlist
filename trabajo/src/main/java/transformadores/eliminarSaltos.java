package transformadores;

import org.mule.api.MuleMessage;
import org.mule.api.transformer.TransformerException;
import org.mule.transformer.AbstractMessageTransformer;
public class eliminarSaltos extends AbstractMessageTransformer {

	@Override
	public Object transformMessage(MuleMessage message, String outputEncoding)
			throws TransformerException {

		String str="";
		try{
			String pay=(String)message.getPayload();
			for(int i=0;i<pay.length()-2;i++){
				str = str + pay.charAt(i);
			}
		}
		catch(Exception e){
			e.printStackTrace(); 
		}

		return str;
	}

}
