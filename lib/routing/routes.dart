const rootRoute = "/";
const overViewPageDisplayName = "Overview";
const overViewPageRoute = "/overview";
const driverPageDisplayName = "Drivers";
const driverPageRoute = "/drivers";
const clientsPageDisplayName = "Clients";
const clientsPageRoute = "/clients";
const authenticationPageDisplayName = "Log Out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(overViewPageDisplayName, overViewPageRoute),
  MenuItem(driverPageDisplayName, driverPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
