# photo_gallery

flutter app

statemenagement used:

BLOC - Cubit, 
used to handle rebuilding the UI after getting the data from backend of after filtered.


Archeture used: SOLID 
 seperating responsabilities and relying on interfacing to make the code more reliable and scalable.


- the app is designed by features, and for now we have only one feature which is hompe page, 
- the data sources for data is coming from the remote api
- the repository interface states the formate for the methods that are called to get and set data from json.
- the cubit populates and rebuild the ui with the retrieved data. 




api used:

banner json file: 
https://gist.githubusercontent.com/RadwaAlaa/423521c7b03dbdd2378839e2cc5e5858/raw/75aea5078b687f6d89b300a1f2ff2dd0abf4bab3/banner.json


venues json file:
https://gist.githubusercontent.com/lazarohcm/3cf83b2b2aa83d20fa196d5aad63bde3/raw/f8f155cd3767c8e1ee70a6af1daf3e33632c1c85/venues.json


packages used: 
- http: for handling http requests
- carousel_slider: for creating carousel sliding view.
- flutter_bloc: for integrating  cubit in flutter.


code magic apk release: 
https://api.codemagic.io/artifacts/bfb2c440-4ed7-4cce-a6b7-959f5c93a1ae/96cbe87b-ad7e-43ea-88f5-015962abc7c7/app-release.apk




things to be done: 
- Unit testing for api, cubit & repository.
- enhance UI by adding fonts and colors.
