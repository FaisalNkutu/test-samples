package ca.medis.web.util.amqp;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;

import org.apache.log4j.Logger;

import com.ibm.mqlight.api.ClientOptions;

import com.ibm.mqlight.api.Delivery;
import com.ibm.mqlight.api.DestinationAdapter;
import com.ibm.mqlight.api.NonBlockingClient;
import com.ibm.mqlight.api.NonBlockingClientAdapter;
import com.ibm.mqlight.api.StringDelivery;

import ca.medis.web.util.amqp.AMQPConfiguration;

public class AMQPCallExecutorDemo {

	private static AMQPConfiguration amqpConfiguration = null;
	private static Logger logger = Logger.getLogger(AMQPCallExecutorDemo.class.getName());

	public static void main(String[] cmdline) {
		Set<String> tradingPartnerCodes = new HashSet<>();
		String tpCpde = "MSD";
		tradingPartnerCodes.add(tpCpde);
		try {
			amqpConfiguration = amqpConfiguration.getInstance(tradingPartnerCodes);
		} catch (IOException e) {
			logger.error("Failed to load configuration: " + e);
		}
		String host = amqpConfiguration.getForTrading(tpCpde, "Host");
		String userName = amqpConfiguration.getForTrading(tpCpde, "Username");
		String password = amqpConfiguration.getForTrading(tpCpde, "Password");
		String topic = amqpConfiguration.getForTrading(tpCpde, "OutTopicName");
		ClientOptions clientOpts = ClientOptions.builder().setCredentials(userName, password).build();
		//final ExecutorService executor = Executors.newFixedThreadPool(5);
		NonBlockingClient.create(host, clientOpts, new NonBlockingClientAdapter<Void>() {

			public void onStarted(NonBlockingClient client, Void context) {
				client.subscribe(topic, new DestinationAdapter<Void>() {

					public void onMessage(NonBlockingClient client, Void context, Delivery delivery) {
						if (delivery.getType() == Delivery.Type.STRING)
							System.out.println("Consumed from Topic: " + ((StringDelivery) delivery).getData());
					}
				}, null, null);
			}
		}, null);

		NonBlockingClient.create(host, clientOpts, new NonBlockingClientAdapter<Void>() {

			public void onStarted(NonBlockingClient client, Void context) {
				for (int j = 0; j < 900; j++) {
					String message = "Jms Queue is Formed 5 For Demo Purposes - No Consuming!==>" + j;
					client.send("amqp/mdp.batch.out.topic", message, null);
				}
			}

		}, null);

	}

}
