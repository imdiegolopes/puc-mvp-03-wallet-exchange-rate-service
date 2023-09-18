
from flask import (
    jsonify
)
import requests

class ExchangeRateHandler:
    baseUrl = "https://open.er-api.com"

    def __init__(self):
        pass

    def handle_get_exchange_rates(self):
        response = requests.get(self.baseUrl + "/v6/latest/BRL")

        if response.status_code == 200:
            return jsonify(response.json())
        else:
            return jsonify({"error": "Failed to fetch exchange rates"}), response.status_code
