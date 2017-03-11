package sprs;

import java.util.Map;

import yahoofinance.Stock;
import yahoofinance.YahooFinance;

@SuppressWarnings("unused")
public class Stockdata {

	public static void main(String[] args) {

		/*String[] symbols = new String[] { "INTC", "BABA", "TSLA", "AIR.PA",
				"YHOO" };*/
		String[] symbols = new String[] { "IBM", "ORCL", "MSFT", "AKAM","HPQ" };
		Map<String, Stock> stocks = YahooFinance.get(symbols); // single request
		Stock intel = stocks.get("INTC");
		Stock airbus = stocks.get("AIR.PA");

		for (Map.Entry<String, Stock> entry : stocks.entrySet()) {
			String value = entry.getValue().toString();
			String[] arr = value.split(":");
			System.out.println("Company Name " + entry.getKey() + "/"
					+ " Price " + arr[1]);
			// int sum1=+Integer.parseInt(arr[1]);
			// System.out.println("Result sum" +sum1);

		}

	}

}
