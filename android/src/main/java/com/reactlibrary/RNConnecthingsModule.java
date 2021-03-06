
package com.reactlibrary;

import io.herow.sdk.connection.HerowPlatform;
import io.herow.sdk.detection.HerowInitializer;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.WritableNativeMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;

import java.util.HashMap;

public class RNConnecthingsModule extends ReactContextBaseJavaModule  {
    private final ReactApplicationContext reactContext;
    private HerowInitializer herowInitializer;
   

    public RNConnecthingsModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
        herowInitializer =  HerowInitializer.getInstance(reactContext);
       
    }

    @Override
    public String getName() {
    return "RNConnecthings";
  }


    @ReactMethod
    public void acceptOptin() {
        herowInitializer.acceptOptin();
    }

     @ReactMethod
    public void refuseOptin() {
        herowInitializer.refuseOptin();
    }

    @ReactMethod
    public void setCustomId(String customID) {
      herowInitializer.setCustomId(customID);
    }
     @ReactMethod
    public void removeCustomId() {
      herowInitializer.removeCustomId();
    }

     @ReactMethod
    public void launchClickAndCollect() {
      herowInitializer.launchClickAndCollect();
    }

     @ReactMethod
    public void stopClickAndCollect() {
      herowInitializer.stopClickAndCollect();
    }


    
}