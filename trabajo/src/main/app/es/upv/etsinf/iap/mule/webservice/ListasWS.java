package es.upv.etsinf.iap.mule.webservice;

import java.util.Collection;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface ListasWS {
	@WebMethod
	public Collection<Listas> getListasSubidas();
}
