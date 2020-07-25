### FGX.ActiveNetworkInfo.Android:

 - **class function CheckPermission: Boolean;** - Check permission "android.permission.ACCESS_NETWORK_STATE"
 - **class function IsConnected: Boolean;** - Indicates whether network connectivity exists and it is possible to establish connections and pass data.
 - **class function IsWifi: Boolean;** - Is Wi-Fi connection?
 - **class function IsMobile: Boolean;** - Is Mobile connection?
 
 ### Usage:
 
 - Add **FGX.ActiveNetworkInfo.Android.pas** to FGX Native project (**Progect - Add to project**)
 - Allow checking network state in project permissions list (**Project - Options - Uses Permissions - Access network state**)
 
 ### Warning:
 **Only for FGX Native 1.4.0 and above**
 **Only for MinSdkVersion=23+**
 
 ### Sample:
 ![WIFI Connection](https://github.com/sinuke/FGX.ActiveNetworkInfo/blob/master/scr01.png)
 ![MOBILE Connection](https://github.com/sinuke/FGX.ActiveNetworkInfo/blob/master/scr02.png)
 ![No Connection](https://github.com/sinuke/FGX.ActiveNetworkInfo/blob/master/scr03.png)
 
### Original:
Based on original ActiveNetworkInfo module for FMX by Andrew Efimov. Link: https://github.com/AndrewEfimov/Android-API-Examples/tree/master/ActiveNetworkInfo
