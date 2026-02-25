# getx

## flutter getx Learning

### 1. GetX State Management
- GetBuilder
    - best preformance 
    - update reebuild
- GetX
    - if you need it 
    - stream ops
- Obx
    - stream ops 
    - 

### 2. GetX Routing
- Get.to(PageTwo());
- Get.off(PageTwo());
- Get.offAll(PageTwo());
- Get.back();
- Get.offAllNamed("/pageTwo");
- Get.toNamed("/pageTwo");
- Get.offNamedUntil(PageTwo(), (route) => false);
- Get.toNamedUntil(PageTwo(), (route) => false);

### 3. GetX Dependency Injection
{class HomePage extends StatelessWidget {
	
  Controller controller; // create a variable of Controller type
	
  HomePage({this.controller}); // inject Controller dependency through contructor

}

class OtherPage extends StatelessWidget {

  Controller someController = Controller(); // Controller instantiated

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePage(controller: someController), // instance of Controller passed to HomePage
    );
  }
}}
    ## first controller instainc >> Inject controller debedncy in constractor 
    ## in get use put its do the same things in esey way
    ## depenndcy injection | put == we dont need initialize controller in every page 
    - Get.put(Controller());
        - permenet to save data in memory *** defult value is false 
        - login , user , email password  
        - on screen is have debendency inj and the souccend have init the controller 
```markdown
![Error Order](/getxcours/error-_most%20_order_in_put_memo.png)
```

    - finex ??? 
        - ???
    - Get.find 
        -  
    - Get.lazyPut(() => Controller());
        - mkae init the time of truth
        - call onece time >> or if its in inner page 
```markdown
![inner page for lazyput](/getxcours/inner_page_for_lazyput.png)
```
    - Get.putAsync(() => Controller());
        - 
        - async the controller  
    - Get.putAll(Controller());
        - put all the controller in the same time 

    - Buinddings 
        - Bindings are classes where we can declare our dependencies and then ‘bind’ them to the routes. However, this means that we can only use it when using GetX for route management. But that shouldn’t be a problem right? After all, we are in the GetX ecosystem 
        - is box have instance injectable not inject before call this box 
        - call by >>> baidding
        - when app is start by use >>> Home bindding
        - its work ass class , fast 
        #  warring if you use binding for all app when app is start its crach 
                - the slouttion is to use *** lazyPut *** 
### 4. GetX Controller life cycle
    - onInit
        - it like initial state 
    - onReady
        - after state initial 
    - onClose
        - after state close 
    

        - 


### 4. GetX Internationalization

### 5. GetX Theme Management

### 6. GetX Dialogs

### 7. GetX Bottom Sheets

### 8. GetX Snackbars

### 9. GetX Navigation

### 10. GetX Controllers

### 11. GetX Bindings

### 12. GetX Routes

### 13. GetX Services

### 14. GetX Utils

### 15. GetX Validators

### 16. GetX Middleware
    - privlege system 
    - initial route 
    - decler shaerd preferenc one time in main to use it every ware >> most have async and await  and alwaeys most use >>> widgetsFlutterBinding.ensureInitialized();
```
![shaerdpref-to-use-every-where](/getxcours/shaerdpref-to-use-every-where.png)
```
    - to stay save the login data in memory 

    # middleware func
        - GetMiddleware
        - how to use middleware in getx with example 
```dart
```dart
class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    bool isAuthenticated = true; // Replace with your logic
    return isAuthenticated ? null : const RouteSettings(name: '/login');
  }
}

// Example 2: Using Get.find to access an instance
class SettingMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Get.find<MyService>().sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: "/home");
    }
    return null;
  }
}

// Usage in GetPage
GetPage(
  name: '/home',
  page: () => const HomeView(),
  middlewares: [
    AuthMiddleware(priority: 1),
    SettingMiddleware(priority: 0),
  ],
)
```
```
        - priority  by number  if its 1 its most important every time the number is less the priority is high 
        - 

    # 


### 00. GET Services 
    - its rechabel not the all logic is here its work with controller 
    - 
### 17. GetX Storage

### 18. GetX Animations