package xyz.ls.search.config;

import java.net.InetAddress;

import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

//实现的接口已被bean注解给封装
@Configuration
public class EsConfig implements InitializingBean,FactoryBean<TransportClient>{

	@Value("${cluster-name}")
	private String name;
	
	@Value("${cluster-nodes}")
	private String nodes;
	
	private TransportClient client;
	
	@Override
	public Class<?> getObjectType() {
		return TransportClient.class;
	}

	@Override
	public TransportClient getObject() throws Exception {
		return client;
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		
		//这里可以选择设置setting
		Settings set=Settings.builder().put("cluster.name",name).build();
		client=new PreBuiltTransportClient(set);
		
		String[] node=nodes.split(",");
		for (String hostandport : node) {
			String host=hostandport.split(":")[0];
			int port=Integer.parseInt(hostandport.split(":")[1]);
			client.addTransportAddress(
					new InetSocketTransportAddress(
							InetAddress.getByName(host), port));
		}
	}
	
	//是否单例
	@Override
	public boolean isSingleton() {
		return false;
	}
	
	

}
