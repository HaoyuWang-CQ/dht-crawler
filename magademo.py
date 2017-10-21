from maga import Maga

import logging
logging.basicConfig(level=logging.INFO)


class Crawler(Maga):
    async def handler(self, infohash, addr):
        logging.info(addr)
        logging.info(infohash)


crawler = Crawler()
# Set port to 0 will use a random available port
crawler.run(port=0)