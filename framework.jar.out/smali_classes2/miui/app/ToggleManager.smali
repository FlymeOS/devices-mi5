.class public Lmiui/app/ToggleManager;
.super Ljava/lang/Object;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManager$OnToggleOrderChangedListener;,
        Lmiui/app/ToggleManager$OnToggleChangedListener;
    }
.end annotation


# static fields
.field public static final ALPHA_DEFAULT:I = 0xff

.field public static final ALPHA_HALF:I = 0x7d

.field public static final DEFAULT_BACKLIGHT:I = 0x66

.field public static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final MINIMUM_BACKLIGHT:I

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final RANGE:I

.field private static final SETTINGS_MIDROP:Ljava/lang/String; = "key_midrop_enabled"

.field static final TAG:Ljava/lang/String; = "ToggleManager"

.field public static final TOGGLE_ADVANCED_SYNC:I = 0x13

.field public static final TOGGLE_AUTO_BRIGHTNESS:I = 0x16

.field public static final TOGGLE_BLUETOOTH:I = 0x2

.field public static final TOGGLE_BRIGHTNESS:I = 0x4

.field public static final TOGGLE_CAST:I = 0x1c

.field public static final TOGGLE_COUNT:I = 0x1e

.field public static final TOGGLE_DATA:I = 0x1

.field public static final TOGGLE_DIVIDER:I = 0x0

.field public static final TOGGLE_DRIVE_MODE:I = 0x15

.field public static final TOGGLE_EDIT:I = 0x1d

.field public static final TOGGLE_FLIGHT_MODE:I = 0x9

.field public static final TOGGLE_GPS:I = 0x7

.field public static final TOGGLE_LOCK:I = 0xa

.field public static final TOGGLE_MIDROP:I = 0x1b

.field public static final TOGGLE_NETWORK_TYPE:I = 0x11

.field public static final TOGGLE_PAPER_MODE:I = 0x1a

.field public static final TOGGLE_POWER_MODE:I = 0x17

.field public static final TOGGLE_QUIET_MODE:I = 0x19

.field public static final TOGGLE_REBOOT:I = 0xc

.field public static final TOGGLE_RINGER:I = 0x5

.field public static final TOGGLE_ROTATE:I = 0x3

.field public static final TOGGLE_SCREENSHOT:I = 0x12

.field public static final TOGGLE_SCREEN_BUTTON:I = 0x14

.field public static final TOGGLE_SHUTDOWN:I = 0xd

.field public static final TOGGLE_SYNC:I = 0x8

.field public static final TOGGLE_TORCH:I = 0xb

.field public static final TOGGLE_VIBRATE:I = 0x6

.field public static final TOGGLE_WIFI:I = 0xf

.field public static final TOGGLE_WIFI_AP:I = 0x18

.field public static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mHasMiDrop:Z

.field private static mWifiApEnabler:Lmiui/app/WifiApEnabler;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static sLongClickActions:[I

.field private static final sRemoveByMultiUserList:[I

.field private static sToggleDisabled:[Z

.field private static sToggleGeneralImages:[I

.field private static sToggleImages:[I

.field private static sToggleManager:Lmiui/app/ToggleManager;

.field private static sToggleNames:[I

.field private static sToggleOffImages:[I

.field private static sToggleOnImages:[I

.field private static sToggleStatus:[Z

.field private static sToggleStatusNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sToggleStringToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccelerometer:Z

.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBrightnessAutoAvailable:Z

.field private mBrightnessAutoLevel:F

.field private mBrightnessAutoMode:Z

.field private mBrightnessManualLevel:I

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mFlightMode:Z

.field private final mFlightModeObserver:Landroid/database/ContentObserver;

.field private mGpsEnable:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSimMissing:Z

.field private final mLocationAllowedObserver:Landroid/database/ContentObserver;

.field private mMiDropChanging:Z

.field private final mMiDropObserver:Landroid/database/ContentObserver;

.field private mMobileDataEnable:Z

.field private final mMobileDataEnableObserver:Landroid/database/ContentObserver;

.field private mMobileDataUtils:Landroid/app/MobileDataUtils;

.field private mMobilePolicyEnable:Z

.field private final mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

.field private mPaperMode:Z

.field private final mPaperModeObserver:Landroid/database/ContentObserver;

.field private mPowerMode:Ljava/lang/String;

.field private final mPowerModeObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Z

.field private final mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResource:Landroid/content/res/Resources;

.field private mScreenButtonDisabled:Z

.field private final mScreenButtonStateObserver:Landroid/database/ContentObserver;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private final mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTorchEnable:Z

.field private final mTorchEnableObserver:Landroid/database/ContentObserver;

.field private final mUpdateSyncStateRunnable:Ljava/lang/Runnable;

.field private final mVibrateEnableObserver:Landroid/database/ContentObserver;

.field mWifiChanging:Z

.field mWifiConnected:Z

.field mWifiEnable:Z

.field mWifiSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x1e

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    .line 133
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "bluetooth"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "brightness_mode"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "flight_mode"

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "gps"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "lock"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "power_mode"

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "quiet_mode"

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "rotate"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "ringer_mode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screenshot"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "screen_button"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "sync_mode"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "torch"

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "vibration_mode"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string/jumbo v2, "wifi_ap"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "paper_mode"

    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "midrop"

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "cast"

    const/16 v3, 0x1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    const-string v2, "edit"

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    .line 156
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x16

    const v3, 0x11070001

    aput v3, v1, v2

    .line 157
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/high16 v2, 0x11070000

    aput v2, v1, v6

    .line 158
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070002

    aput v2, v1, v5

    .line 159
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x9

    const v3, 0x11070003

    aput v3, v1, v2

    .line 160
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x7

    const v3, 0x11070004

    aput v3, v1, v2

    .line 161
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xa

    const v3, 0x11070005

    aput v3, v1, v2

    .line 162
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070006

    aput v2, v1, v8

    .line 163
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x17

    const v3, 0x1107000e

    aput v3, v1, v2

    .line 164
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const v2, 0x11070007

    aput v2, v1, v7

    .line 165
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x14

    const v3, 0x11070008

    aput v3, v1, v2

    .line 166
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x12

    const v3, 0x11070009

    aput v3, v1, v2

    .line 167
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x8

    const v3, 0x1107000a

    aput v3, v1, v2

    .line 168
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xb

    const v3, 0x1107000b

    aput v3, v1, v2

    .line 169
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/4 v2, 0x6

    const v3, 0x1107000c

    aput v3, v1, v2

    .line 170
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0xf

    const v3, 0x1107000d

    aput v3, v1, v2

    .line 171
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x18

    const v3, 0x1107000f

    aput v3, v1, v2

    .line 172
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x19

    const v3, 0x11070010

    aput v3, v1, v2

    .line 173
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1a

    const v3, 0x11070011

    aput v3, v1, v2

    .line 174
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1b

    const v3, 0x11070012

    aput v3, v1, v2

    .line 175
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1c

    const v3, 0x11070013

    aput v3, v1, v2

    .line 176
    sget-object v1, Lmiui/app/ToggleManager;->sToggleNames:[I

    const/16 v2, 0x1d

    const v3, 0x11070014

    aput v3, v1, v2

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 179
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    .line 186
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x16

    const v3, 0x11070017

    aput v3, v1, v2

    .line 187
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070015

    aput v2, v1, v5

    .line 188
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x11070016

    aput v2, v1, v6

    .line 189
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x9

    const v3, 0x11070018

    aput v3, v1, v2

    .line 190
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x7

    const v3, 0x11070019

    aput v3, v1, v2

    .line 191
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001a

    aput v2, v1, v8

    .line 192
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x17

    const v3, 0x1107001f

    aput v3, v1, v2

    .line 193
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const v2, 0x1107001b

    aput v2, v1, v7

    .line 194
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x8

    const v3, 0x1107001c

    aput v3, v1, v2

    .line 195
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/4 v2, 0x6

    const v3, 0x1107001d

    aput v3, v1, v2

    .line 196
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0xf

    const v3, 0x1107001e

    aput v3, v1, v2

    .line 197
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x18

    const v3, 0x11070020

    aput v3, v1, v2

    .line 198
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x19

    const v3, 0x11070021

    aput v3, v1, v2

    .line 199
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1a

    const v3, 0x11070022

    aput v3, v1, v2

    .line 200
    sget-object v1, Lmiui/app/ToggleManager;->sLongClickActions:[I

    const/16 v2, 0x1b

    const v3, 0x11070023

    aput v3, v1, v2

    .line 208
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    .line 209
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x16

    const v3, 0x11020083

    aput v3, v1, v2

    .line 210
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020082

    aput v2, v1, v6

    .line 211
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020088

    aput v2, v1, v5

    .line 212
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x9

    const v3, 0x1102008c

    aput v3, v1, v2

    .line 213
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x7

    const v3, 0x1102008e

    aput v3, v1, v2

    .line 214
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x11020094

    aput v2, v1, v8

    .line 215
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x17

    const v3, 0x11020099

    aput v3, v1, v2

    .line 216
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const v2, 0x1102009d

    aput v2, v1, v7

    .line 217
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x14

    const v3, 0x1102009e

    aput v3, v1, v2

    .line 218
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x8

    const v3, 0x110200a3

    aput v3, v1, v2

    .line 219
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xb

    const v3, 0x110200a5

    aput v3, v1, v2

    .line 220
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/4 v2, 0x6

    const v3, 0x110200a7

    aput v3, v1, v2

    .line 221
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xf

    const v3, 0x110200ab

    aput v3, v1, v2

    .line 222
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x18

    const v3, 0x110200a9

    aput v3, v1, v2

    .line 223
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x19

    const v3, 0x1102009b

    aput v3, v1, v2

    .line 224
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1a

    const v3, 0x11020097

    aput v3, v1, v2

    .line 225
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1b

    const v3, 0x11020092

    aput v3, v1, v2

    .line 228
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0xa

    const v3, 0x1102008f

    aput v3, v1, v2

    .line 229
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x12

    const v3, 0x110200a0

    aput v3, v1, v2

    .line 230
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020085

    aput v3, v1, v2

    .line 231
    sget-object v1, Lmiui/app/ToggleManager;->sToggleImages:[I

    const/16 v2, 0x1d

    const v3, 0x1102008a

    aput v3, v1, v2

    .line 233
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    .line 234
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 235
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    :cond_1
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0xa

    const v3, 0x11020090

    aput v3, v1, v2

    .line 238
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x12

    const v3, 0x110200a1

    aput v3, v1, v2

    .line 239
    sget-object v1, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020086

    aput v3, v1, v2

    .line 241
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    .line 242
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 243
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    sget-object v2, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 246
    :cond_2
    new-array v1, v4, [I

    sput-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    .line 247
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x16

    const v3, 0x11020084

    aput v3, v1, v2

    .line 248
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020081

    aput v2, v1, v6

    .line 249
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020087

    aput v2, v1, v5

    .line 250
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x9

    const v3, 0x1102008b

    aput v3, v1, v2

    .line 251
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x7

    const v3, 0x1102008d

    aput v3, v1, v2

    .line 252
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x11020093

    aput v2, v1, v8

    .line 253
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x17

    const v3, 0x11020098

    aput v3, v1, v2

    .line 254
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const v2, 0x1102009c

    aput v2, v1, v7

    .line 255
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x14

    const v3, 0x1102009f

    aput v3, v1, v2

    .line 256
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x8

    const v3, 0x110200a2

    aput v3, v1, v2

    .line 257
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xb

    const v3, 0x110200a4

    aput v3, v1, v2

    .line 258
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/4 v2, 0x6

    const v3, 0x110200a6

    aput v3, v1, v2

    .line 259
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xf

    const v3, 0x110200aa

    aput v3, v1, v2

    .line 260
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x18

    const v3, 0x110200a8

    aput v3, v1, v2

    .line 261
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x19

    const v3, 0x1102009a

    aput v3, v1, v2

    .line 262
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1a

    const v3, 0x11020096

    aput v3, v1, v2

    .line 263
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1b

    const v3, 0x11020091

    aput v3, v1, v2

    .line 266
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0xa

    const v3, 0x1102008f

    aput v3, v1, v2

    .line 267
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x12

    const v3, 0x110200a0

    aput v3, v1, v2

    .line 268
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1c

    const v3, 0x11020085

    aput v3, v1, v2

    .line 269
    sget-object v1, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    const/16 v2, 0x1d

    const v3, 0x11020089

    aput v3, v1, v2

    .line 275
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    .line 276
    new-array v1, v4, [Z

    sput-object v1, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    .line 294
    const-string v1, "persist.power.useautobrightadj"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 714
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    sput-object v1, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    .line 910
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    .line 913
    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    sput v1, Lmiui/app/ToggleManager;->RANGE:I

    return-void

    .line 714
    nop

    :array_0
    .array-data 4
        0x18
        0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    .line 299
    iput v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    .line 915
    iput-object v6, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 929
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    .line 931
    new-instance v3, Lmiui/app/ToggleManager$1;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$1;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 951
    new-instance v3, Lmiui/app/ToggleManager$2;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$2;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 962
    new-instance v3, Lmiui/app/ToggleManager$3;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$3;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    .line 969
    new-instance v3, Lmiui/app/ToggleManager$4;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$4;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    .line 977
    new-instance v3, Lmiui/app/ToggleManager$5;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$5;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    .line 986
    new-instance v3, Lmiui/app/ToggleManager$6;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$6;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    .line 993
    new-instance v3, Lmiui/app/ToggleManager$7;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$7;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    .line 1000
    new-instance v3, Lmiui/app/ToggleManager$8;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$8;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    .line 1006
    new-instance v3, Lmiui/app/ToggleManager$9;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$9;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 1013
    new-instance v3, Lmiui/app/ToggleManager$10;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$10;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 1020
    new-instance v3, Lmiui/app/ToggleManager$11;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$11;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    .line 1026
    new-instance v3, Lmiui/app/ToggleManager$12;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$12;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .line 1033
    new-instance v3, Lmiui/app/ToggleManager$13;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$13;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    .line 1039
    new-instance v3, Lmiui/app/ToggleManager$14;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$14;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    .line 1058
    new-instance v3, Lmiui/app/ToggleManager$15;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lmiui/app/ToggleManager$15;-><init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    .line 1066
    new-instance v3, Lmiui/app/ToggleManager$16;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$16;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    .line 1072
    new-instance v3, Lmiui/app/ToggleManager$17;

    invoke-direct {v3, p0}, Lmiui/app/ToggleManager$17;-><init>(Lmiui/app/ToggleManager;)V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 1206
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1207
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1208
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1209
    iput-object v6, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    .line 311
    const-string v3, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    :goto_0
    iput v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    .line 313
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    .line 314
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    .line 316
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    .line 317
    invoke-static {}, Landroid/app/MobileDataUtils;->getInstance()Landroid/app/MobileDataUtils;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    .line 319
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sput-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 321
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Lmiui/app/ToggleManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 325
    :try_start_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.xiaomi.midrop"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    sput-boolean v3, Lmiui/app/ToggleManager;->mHasMiDrop:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_2
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResource:Landroid/content/res/Resources;

    const v5, 0x11090001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    .line 333
    sget-object v3, Lmiui/app/ToggleManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "mWifiRegexs":[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_3

    .line 335
    .local v2, "wifiAvailable":Z
    :goto_3
    if-eqz v2, :cond_0

    .line 336
    new-instance v3, Lmiui/app/WifiApEnabler;

    invoke-direct {v3, p1, p0}, Lmiui/app/WifiApEnabler;-><init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V

    sput-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    .line 339
    :cond_0
    invoke-direct {p0, v0}, Lmiui/app/ToggleManager;->registerListener(Z)V

    .line 340
    return-void

    .line 312
    .end local v1    # "mWifiRegexs":[Ljava/lang/String;
    .end local v2    # "wifiAvailable":Z
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 325
    goto :goto_1

    .restart local v1    # "mWifiRegexs":[Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 334
    goto :goto_3

    .line 326
    .end local v1    # "mWifiRegexs":[Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method static synthetic access$000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    return-void
.end method

.method static synthetic access$102(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    return p1
.end method

.method static synthetic access$1100(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    return-void
.end method

.method static synthetic access$1300(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    return-void
.end method

.method static synthetic access$1400(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    return-void
.end method

.method static synthetic access$1500(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    return-void
.end method

.method static synthetic access$1700(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    return-void
.end method

.method static synthetic access$1800(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    return-void
.end method

.method static synthetic access$1900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    return-void
.end method

.method static synthetic access$2000(Lmiui/app/ToggleManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mUpdateSyncStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lmiui/app/ToggleManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/app/ToggleManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/ToggleManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/ToggleManager;)Landroid/app/MobileDataUtils;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/app/ToggleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    return p1
.end method

.method static synthetic access$700(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/app/ToggleManager;)I
    .locals 1
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    iget v0, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$900(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    return-void
.end method

.method private static addIfUnselected(Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lmiui/app/ToggleManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    .line 306
    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleManager:Lmiui/app/ToggleManager;

    return-object v0
.end method

.method private ensureBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 1287
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1289
    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 656
    const-string v10, "support_power_mode"

    invoke-static {v10, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 657
    const/16 v10, 0x17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 662
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    .line 663
    .local v7, "wifiRegexs":[Ljava/lang/String;
    array-length v10, v7

    if-eqz v10, :cond_9

    move v6, v8

    .line 664
    .local v6, "wifiAvailable":Z
    :goto_0
    if-nez v6, :cond_1

    .line 665
    const/16 v10, 0x18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    :cond_1
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 669
    const/16 v10, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    .line 673
    .local v4, "hasMobileDataFeature":Z
    if-nez v4, :cond_3

    .line 674
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    const/16 v10, 0x19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 678
    :cond_3
    const-string/jumbo v10, "vibrator"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 679
    .local v5, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v10

    if-nez v10, :cond_4

    .line 680
    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.location.gps"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 684
    .local v2, "hasGpsFeature":Z
    if-nez v2, :cond_5

    .line 685
    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 688
    :cond_5
    const-string v10, "support_screen_paper_mode"

    invoke-static {v10, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    .line 689
    const/16 v10, 0x1a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 692
    :cond_6
    const/4 v3, 0x0

    .line 694
    .local v3, "hasMiDrop":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.xiaomi.midrop"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    if-eqz v10, :cond_a

    move v3, v8

    .line 698
    :goto_1
    if-nez v3, :cond_7

    .line 699
    const/16 v10, 0x1b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 701
    :cond_7
    const/4 v1, 0x0

    .line 703
    .local v1, "hasCast":Z
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x10000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-lez v10, :cond_b

    move v1, v8

    .line 708
    :goto_2
    if-nez v1, :cond_8

    .line 709
    const/16 v8, 0x1c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 711
    :cond_8
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 712
    return-void

    .end local v1    # "hasCast":Z
    .end local v2    # "hasGpsFeature":Z
    .end local v3    # "hasMiDrop":Z
    .end local v4    # "hasMobileDataFeature":Z
    .end local v5    # "vibrator":Landroid/os/Vibrator;
    .end local v6    # "wifiAvailable":Z
    :cond_9
    move v6, v9

    .line 663
    goto/16 :goto_0

    .restart local v2    # "hasGpsFeature":Z
    .restart local v3    # "hasMiDrop":Z
    .restart local v4    # "hasMobileDataFeature":Z
    .restart local v5    # "vibrator":Landroid/os/Vibrator;
    .restart local v6    # "wifiAvailable":Z
    :cond_a
    move v3, v9

    .line 694
    goto :goto_1

    .restart local v1    # "hasCast":Z
    :cond_b
    move v1, v9

    .line 703
    goto :goto_2

    .line 705
    :catch_0
    move-exception v8

    goto :goto_2

    .line 695
    .end local v1    # "hasCast":Z
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method private static filterToggleByUser(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 721
    sget-object v0, Lmiui/app/ToggleManager;->sRemoveByMultiUserList:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    .line 722
    .local v2, "index":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "index":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public static getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 539
    return-object v0
.end method

.method private static getCastIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MIPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1187
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1189
    return-object v0
.end method

.method public static getDefaultToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 511
    return-object v0
.end method

.method public static getEditFixedPosition(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x11060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getGeneralImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 839
    sget-object v0, Lmiui/app/ToggleManager;->sToggleGeneralImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImage(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 798
    sget-object v0, Lmiui/app/ToggleManager;->sToggleImages:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 826
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getImageResource(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 831
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 832
    new-instance v1, Lmiui/app/ToggleDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11020095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmiui/app/ToggleDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 835
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method public static getImageResource(IZ)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .prologue
    .line 810
    if-eqz p1, :cond_0

    sget-object v0, Lmiui/app/ToggleManager;->sToggleOnImages:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleOffImages:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getName(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 786
    sget-object v0, Lmiui/app/ToggleManager;->sToggleNames:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStatus(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 802
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 790
    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 791
    .local v0, "statusName":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 792
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "statusName":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    :goto_0
    return-object v1

    .restart local v0    # "statusName":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getToggleIdFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "toggleString"    # Ljava/lang/String;

    .prologue
    .line 770
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const/4 v0, -0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getToggleOrderSettingID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 585
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status_bar_toggle_list_order_new"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "status_bar_toggle_page_order"

    goto :goto_0
.end method

.method public static getToggleStringFromId(I)Ljava/lang/String;
    .locals 3
    .param p0, "toggleId"    # I

    .prologue
    .line 777
    sget-object v2, Lmiui/app/ToggleManager;->sToggleStringToId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 782
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 576
    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 577
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    const-string v4, "status_bar_toggle_list_order_new"

    .line 486
    .local v4, "settingID":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v8

    invoke-static {v7, v4, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "toggleList":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 491
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, "toggles":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 494
    :try_start_0
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 495
    .local v2, "id":I
    invoke-static {v2}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "settingID":Ljava/lang/String;
    .end local v5    # "toggleList":Ljava/lang/String;
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_1
    const-string v4, "status_bar_toggle_page_order"

    goto :goto_0

    .line 498
    .restart local v1    # "i":I
    .restart local v4    # "settingID":Ljava/lang/String;
    .restart local v5    # "toggleList":Ljava/lang/String;
    .restart local v6    # "toggles":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 504
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v6    # "toggles":[Ljava/lang/String;
    :cond_2
    invoke-static {p0, v3, p1}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 505
    return-object v3
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1268
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1269
    .local v3, "ssid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1271
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1272
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1273
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1274
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1279
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "<unknown ssid>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1280
    const/4 v3, 0x0

    .line 1282
    :cond_2
    return-object v3
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 843
    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 806
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_style_type"

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSyncOn()Z
    .locals 7

    .prologue
    .line 1536
    :try_start_0
    const-class v2, Landroid/content/ContentResolver;

    const-string v3, "getMasterSyncAutomaticallyAsUser"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1537
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1540
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ToggleManager"

    const-string v3, "getMasterSyncAutomaticallyAsUser not found."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    goto :goto_0
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 473
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private longClickScreenshot()Z
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1690
    const/4 v8, 0x0

    .line 1691
    .local v8, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    sget-object v12, Lmiui/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v12}, Lmiui/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v13, "Screenshots"

    invoke-direct {v10, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1693
    .local v10, "screenShotFolder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1695
    new-instance v9, Lmiui/app/ToggleManager$18;

    invoke-direct {v9, p0}, Lmiui/app/ToggleManager$18;-><init>(Lmiui/app/ToggleManager;)V

    .line 1707
    .local v9, "pictureFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v10, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1708
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 1726
    .end local v2    # "files":[Ljava/io/File;
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_0
    :goto_0
    return v11

    .line 1711
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_1
    const-wide/16 v6, 0x0

    .line 1712
    .local v6, "maxLastModifed":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 1713
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v12, v12, v6

    if-lez v12, :cond_2

    .line 1714
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1715
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1712
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1720
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "maxLastModifed":J
    .end local v9    # "pictureFilter":Ljava/io/FilenameFilter;
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1722
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1723
    .local v4, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1724
    const/high16 v11, 0x10000000

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1725
    iget-object v11, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1726
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private queryBrightnessStatus()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1046
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1052
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0x66

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    .line 1054
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v1, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    .line 1056
    return-void

    :cond_0
    move v0, v1

    .line 1046
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private registerListener(Z)V
    .locals 8
    .param p1, "isSystemUI"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 343
    if-eqz p1, :cond_0

    const/4 v6, -0x1

    .line 344
    .local v6, "userId":I
    :goto_0
    if-eqz p1, :cond_1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 345
    .local v2, "user":Landroid/os/UserHandle;
    :goto_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 355
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_toggle_list_order_new"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 359
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_toggle_page_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 363
    const v0, 0x7fffffff

    iget-object v1, p0, Lmiui/app/ToggleManager;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 370
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mFlightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 374
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 379
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4}, Landroid/app/MobileDataUtils;->registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 381
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mobile_policy"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 385
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 389
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 393
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 397
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_buttons_state"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 401
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 409
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 413
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 417
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 418
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_paper_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 422
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "key_midrop_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lmiui/app/ToggleManager;->mMiDropObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 426
    iget v0, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateAllToggles(I)V

    .line 427
    return-void

    .line 343
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "userId":I
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    goto/16 :goto_0

    .line 344
    .restart local v6    # "userId":I
    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    goto/16 :goto_1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 1264
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1260
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1261
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1262
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setBrightnessMode()V
    .locals 4

    .prologue
    .line 1341
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1346
    return-void

    .line 1341
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManager;->isListStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 549
    return-void
.end method

.method public static setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    const-string v1, "status_bar_toggle_list_order_new"

    .line 555
    .local v1, "settingId":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, p2}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    .local v2, "toggleList":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 558
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 553
    .end local v0    # "i":I
    .end local v1    # "settingId":Ljava/lang/String;
    .end local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, "status_bar_toggle_page_order"

    goto :goto_0

    .line 561
    .restart local v0    # "i":I
    .restart local v1    # "settingId":Ljava/lang/String;
    .restart local v2    # "toggleList":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lmiui/app/ToggleManager;->getUserId(Landroid/content/Context;)I

    move-result v5

    invoke-static {v3, v1, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 566
    return-void
.end method

.method private showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "length"    # I

    .prologue
    .line 1469
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/app/ToggleManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 1470
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 1473
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1474
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 1475
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1476
    return-void
.end method

.method private toggleAccelerometer()V
    .locals 3

    .prologue
    .line 1427
    :try_start_0
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1429
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v1, :cond_0

    .line 1430
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 1439
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 1432
    .restart local v0    # "wm":Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1433
    const v1, 0x11070024

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lmiui/app/ToggleManager;->showToast(II)V

    .line 1435
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1437
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleAutoBrightness()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1329
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v2, :cond_0

    .line 1330
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    .line 1336
    :goto_0
    invoke-direct {p0}, Lmiui/app/ToggleManager;->setBrightnessMode()V

    .line 1337
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->getCurBrightness()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lmiui/app/ToggleManager;->applyBrightness(IZ)V

    .line 1338
    return-void

    .line 1333
    :cond_0
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBrightnessAutoAvailable:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    goto :goto_0
.end method

.method private toggleBluetooth()V
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x2

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method private toggleData()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1386
    const/4 v1, 0x0

    .line 1387
    .local v1, "result":Z
    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1388
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v5, :cond_2

    .line 1389
    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-nez v5, :cond_1

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1390
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/MobileDataUtils;->enableMobileData(Landroid/content/Context;Z)V

    .line 1405
    :cond_0
    :goto_1
    return v1

    .line 1389
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1392
    :cond_2
    iget-object v4, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/MobileDataUtils;->getSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1393
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1394
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1395
    .local v3, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1396
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.miui.securitycenter"

    const-string v6, "com.miui.networkassistant.ui.activity.NetworkOverLimitActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1398
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1399
    const-string v4, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1400
    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1401
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private toggleEdit()V
    .locals 5

    .prologue
    .line 1758
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1759
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1760
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1761
    const-string v2, ":android:show_fragment"

    const-string v3, "com.android.settings.ToggleArrangementFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    const-string v2, ":android:no_headers"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SubSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    :try_start_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :goto_0
    return-void

    .line 1766
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggleEdit() Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toggleFlightMode()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1549
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1550
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "airplane_mode_on"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1553
    const-string v1, "state"

    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1554
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1555
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 1549
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1550
    goto :goto_1
.end method

.method private toggleGps()V
    .locals 4

    .prologue
    .line 1499
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 1501
    return-void

    .line 1499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleMiDrop()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1648
    const/16 v2, 0x1b

    invoke-static {v2}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1649
    iput-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 1650
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v1

    .line 1651
    .local v1, "isMiDropOn":Z
    new-instance v0, Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v2, "miui.intent.action.midrop_off"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1652
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaomi.midrop"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1654
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1655
    const-string v3, "ToggleManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: toggle MiDrop to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "OFF"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1658
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isMiDropOn":Z
    :cond_0
    return-void

    .line 1651
    .restart local v1    # "isMiDropOn":Z
    :cond_1
    const-string v2, "miui.intent.action.midrop_on"

    goto :goto_0

    .line 1655
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "ON"

    goto :goto_1
.end method

.method private togglePaperMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1624
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1625
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_paper_mode_enabled"

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v4, :cond_1

    :goto_1
    iget v2, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1627
    return-void

    :cond_0
    move v0, v2

    .line 1624
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1625
    goto :goto_1
.end method

.method private togglePowerMode()V
    .locals 5

    .prologue
    .line 1585
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1591
    :goto_0
    const-string v1, "persist.sys.aries.power_profile"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget-object v3, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v0, "powerModeChange":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1596
    return-void

    .line 1588
    .end local v0    # "powerModeChange":Landroid/content/Intent;
    :cond_0
    const-string v1, "high"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private toggleQuietMode()V
    .locals 2

    .prologue
    .line 1611
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1612
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 1613
    return-void

    .line 1611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleRinger()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 1458
    return-void
.end method

.method private toggleScreenButtonState()V
    .locals 7

    .prologue
    const v4, 0x110700c3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1730
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 1732
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    .line 1734
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_buttons_has_been_disabled"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1736
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget v6, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1741
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x7da

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 1742
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1743
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1752
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :goto_1
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_buttons_state"

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v5, :cond_3

    :goto_2
    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1755
    return-void

    :cond_0
    move v1, v3

    .line 1730
    goto :goto_0

    .line 1746
    :cond_1
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-direct {p0, v1, v3}, Lmiui/app/ToggleManager;->showToast(II)V

    goto :goto_1

    :cond_2
    const v1, 0x110700c2

    goto :goto_3

    :cond_3
    move v2, v3

    .line 1752
    goto :goto_2
.end method

.method private toggleScreenshot()V
    .locals 3

    .prologue
    .line 1685
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1686
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1687
    return-void
.end method

.method private toggleSync()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1517
    :try_start_0
    const-class v4, Landroid/content/ContentResolver;

    const-string v5, "setMasterSyncAutomaticallyAsUser"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1519
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    iget v7, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v3

    .line 1519
    goto :goto_0

    .line 1520
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ToggleManager"

    const-string v5, "setMasterSyncAutomaticallyAsUser not found."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2
.end method

.method private toggleTorch()V
    .locals 3

    .prologue
    .line 1578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_TOGGLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1580
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1581
    return-void
.end method

.method private toggleVibrate()V
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    .line 1484
    return-void
.end method

.method private updateAccelerometerToggle()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1442
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    iget v4, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    .line 1445
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v5, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1446
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mAccelerometer:Z

    if-eqz v0, :cond_2

    const v0, 0x1102009c

    :goto_2
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1449
    return-void

    :cond_0
    move v0, v2

    .line 1442
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1445
    goto :goto_1

    .line 1446
    :cond_2
    const v0, 0x1102009d

    goto :goto_2
.end method

.method private updateBrightnessToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1320
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v1, :cond_0

    const v0, 0x11020083

    .line 1324
    .local v0, "autoResId":I
    :goto_0
    iget-boolean v1, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1325
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1326
    return-void

    .line 1320
    .end local v0    # "autoResId":I
    :cond_0
    const v0, 0x11020084

    goto :goto_0
.end method

.method private updateDataToggle()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1409
    iget-object v3, p0, Lmiui/app/ToggleManager;->mMobileDataUtils:Landroid/app/MobileDataUtils;

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/app/MobileDataUtils;->isMobileEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    .line 1410
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-nez v3, :cond_2

    move v0, v1

    .line 1411
    .local v0, "isDataEnabled":Z
    :goto_0
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMobileDataEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mMobilePolicyEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mFlightMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";mIsSimMissing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1416
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1417
    if-eqz v0, :cond_3

    const v2, 0x11020088

    :goto_1
    invoke-virtual {p0, v1, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1419
    return-void

    .end local v0    # "isDataEnabled":Z
    :cond_2
    move v0, v2

    .line 1410
    goto :goto_0

    .line 1417
    .restart local v0    # "isDataEnabled":Z
    :cond_3
    const v2, 0x11020087

    goto :goto_1
.end method

.method private updateFlightModeToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 1558
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    .line 1560
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1561
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    if-eqz v0, :cond_1

    const v0, 0x1102008c

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1565
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateDataToggle()V

    .line 1566
    return-void

    .line 1561
    :cond_1
    const v0, 0x1102008b

    goto :goto_0
.end method

.method private updateGpsToggle()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1504
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    iget v2, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    .line 1506
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1507
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mGpsEnable:Z

    if-eqz v0, :cond_0

    const v0, 0x1102008e

    :goto_0
    invoke-virtual {p0, v3, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1510
    return-void

    .line 1507
    :cond_0
    const v0, 0x1102008d

    goto :goto_0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManager;->updateImageView(ILandroid/widget/ImageView;I)V

    .line 847
    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .prologue
    .line 850
    if-eqz p1, :cond_1

    .line 851
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManager;->getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 852
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 855
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->initDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 858
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private updateMiDropToggle()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1661
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_midrop_enabled"

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1662
    .local v0, "setting":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    .line 1663
    const-string v1, "ToggleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiDrop: isMiDropDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1b

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isWifiAPDisabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x18

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiDropChanging:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-virtual {p0, v2}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1667
    return-void
.end method

.method private updatePaperModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/4 v0, 0x0

    .line 1630
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_paper_mode_enabled"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    .line 1632
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1633
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mPaperMode:Z

    if-eqz v0, :cond_1

    const v0, 0x11020097

    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1636
    return-void

    .line 1633
    :cond_1
    const v0, 0x11020096

    goto :goto_0
.end method

.method private updatePowerModeToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 1599
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "power_mode"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1600
    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const-string v1, "middle"

    iput-object v1, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    .line 1603
    :cond_0
    const-string v1, "high"

    iget-object v2, p0, Lmiui/app/ToggleManager;->mPowerMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1604
    .local v0, "isHigh":Z
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1605
    if-eqz v0, :cond_1

    const v1, 0x11020099

    :goto_0
    invoke-virtual {p0, v4, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1608
    return-void

    .line 1605
    :cond_1
    const v1, 0x11020098

    goto :goto_0
.end method

.method private updateQuietModeToggle()V
    .locals 2

    .prologue
    const/16 v1, 0x19

    .line 1616
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    .line 1617
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1618
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mQuietMode:Z

    if-eqz v0, :cond_0

    const v0, 0x1102009b

    :goto_0
    invoke-virtual {p0, v1, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1621
    return-void

    .line 1618
    :cond_0
    const v0, 0x1102009a

    goto :goto_0
.end method

.method private updateScreenButtonState()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x0

    .line 1772
    iget-object v1, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_buttons_state"

    iget v3, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    .line 1774
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1775
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mScreenButtonDisabled:Z

    if-eqz v0, :cond_1

    const v0, 0x1102009e

    :goto_0
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1778
    return-void

    .line 1775
    :cond_1
    const v0, 0x1102009f

    goto :goto_0
.end method

.method private updateSyncToggle()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1527
    invoke-direct {p0}, Lmiui/app/ToggleManager;->isSyncOn()Z

    move-result v0

    .line 1528
    .local v0, "isSyncOn":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1529
    if-eqz v0, :cond_0

    const v1, 0x110200a3

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1532
    return-void

    .line 1529
    :cond_0
    const v1, 0x110200a2

    goto :goto_0
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 861
    if-eqz p1, :cond_0

    .line 862
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    :cond_0
    return-void
.end method

.method private updateTorchToggle()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1569
    iget-object v2, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    .line 1571
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1572
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mTorchEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x110200a5

    :goto_1
    invoke-virtual {p0, v4, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1575
    return-void

    :cond_0
    move v0, v1

    .line 1569
    goto :goto_0

    .line 1572
    :cond_1
    const v0, 0x110200a4

    goto :goto_1
.end method

.method private static validateEditPosition(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0x1d

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 731
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 734
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_2
    :goto_1
    return-void

    .line 737
    :cond_3
    invoke-static {p0}, Lmiui/app/ToggleManager;->getEditFixedPosition(Landroid/content/Context;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 602
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 603
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 604
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 605
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 606
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 607
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 608
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 609
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 610
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 611
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 612
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 613
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 614
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 615
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 616
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 617
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 618
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 619
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 620
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 622
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 623
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateEditPosition(Landroid/content/Context;Ljava/util/List;)V

    .line 624
    return-void
.end method

.method private static validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isListStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 592
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateToggleList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static validateTogglePage(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 629
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 630
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 631
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 632
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 633
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 634
    const/16 v0, 0x1b

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 635
    const/16 v0, 0x16

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 636
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 638
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 639
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 640
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 641
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 642
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 643
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 644
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 645
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 646
    const/16 v0, 0x17

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 647
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 648
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lmiui/app/ToggleManager;->addIfUnselected(Ljava/util/ArrayList;I)V

    .line 650
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->filterToggle(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 652
    return-void
.end method


# virtual methods
.method public applyBrightness(IZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "write"    # Z

    .prologue
    .line 1355
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 1356
    .local v2, "power":Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 1358
    :try_start_0
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v4, :cond_1

    .line 1359
    sget-boolean v4, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_0

    .line 1360
    int-to-float v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sget v5, Lmiui/app/ToggleManager;->RANGE:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v4, v5

    .line 1361
    .local v3, "valf":F
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 1362
    if-eqz p2, :cond_0

    .line 1363
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_auto_brightness_adj"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1379
    .end local v3    # "valf":F
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    sget v4, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    add-int v0, p1, v4

    .line 1369
    .local v0, "brightnessValue":I
    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 1370
    if-eqz p2, :cond_0

    .line 1371
    iget-object v4, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    iget v6, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1375
    .end local v0    # "brightnessValue":I
    :catch_0
    move-exception v1

    .line 1376
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1785
    const-string v3, "  - ToggleManager ------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    const-string v3, "  - wifi ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    const-string v3, "  mWifiEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1789
    const-string v3, "  mWifiConnected="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1791
    const-string v3, "  mWifiChanging="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1793
    const-string v3, "  mWifiSsid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    iget-object v3, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    const-string v3, "  - data ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    const-string v3, "  mMobileDataEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobileDataEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1798
    const-string v3, "  mMobilePolicyEnable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1800
    const-string v3, "  mIsSimMissing="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1801
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mIsSimMissing:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1802
    const-string v3, "  mFlightMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mFlightMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1804
    const-string v3, "  - toggles ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_0

    .line 1806
    const-string v3, "  Toggle:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1808
    const-string v3, "  Status:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    sget-object v3, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1811
    :cond_0
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1812
    const-string v3, "  - listeners ---"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1814
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1815
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1816
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    const-string v3, "  listener:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1813
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1820
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method public getCurBrightness()I
    .locals 2

    .prologue
    .line 1349
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoLevel:F

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lmiui/app/ToggleManager;->mBrightnessManualLevel:I

    sget v1, Lmiui/app/ToggleManager;->MINIMUM_BACKLIGHT:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public isBrightnessAutoMode()Z
    .locals 1

    .prologue
    .line 1781
    iget-boolean v0, p0, Lmiui/app/ToggleManager;->mBrightnessAutoMode:Z

    return v0
.end method

.method isDisplayMiDropOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1643
    iget-object v3, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_midrop_enabled"

    iget v5, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1644
    .local v0, "settings":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 452
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 453
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobileDataEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 454
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mTorchEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 456
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mScreenButtonStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 457
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mLocationAllowedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 458
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 459
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 460
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 461
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 462
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mQuietModeObserver:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    invoke-static {v0, v1}, Lmiui/provider/ExtraTelephony;->unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V

    .line 463
    iget-object v0, p0, Lmiui/app/ToggleManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManager;->mPaperModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 464
    iget-object v0, p0, Lmiui/app/ToggleManager;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v0}, Lmiui/app/WifiApEnabler;->unregisterReceiver()V

    .line 470
    :cond_0
    return-void
.end method

.method public performToggle(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1098
    const-string v2, "ToggleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performToggle:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aget-boolean v1, v1, p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "mustCollapse":Z
    packed-switch p1, :pswitch_data_0

    .line 1173
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 1098
    .end local v0    # "mustCollapse":Z
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 1102
    .restart local v0    # "mustCollapse":Z
    :pswitch_1
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAutoBrightness()V

    goto :goto_1

    .line 1105
    :pswitch_2
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleBluetooth()V

    goto :goto_1

    .line 1108
    :pswitch_3
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleData()Z

    move-result v0

    .line 1109
    goto :goto_1

    .line 1111
    :pswitch_4
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleFlightMode()V

    goto :goto_1

    .line 1114
    :pswitch_5
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleGps()V

    goto :goto_1

    .line 1117
    :pswitch_6
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1

    .line 1121
    :pswitch_7
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleRinger()V

    goto :goto_1

    .line 1124
    :pswitch_8
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleAccelerometer()V

    goto :goto_1

    .line 1127
    :pswitch_9
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenButtonState()V

    goto :goto_1

    .line 1130
    :pswitch_a
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleScreenshot()V

    .line 1131
    const/4 v0, 0x1

    .line 1132
    goto :goto_1

    .line 1134
    :pswitch_b
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleSync()V

    goto :goto_1

    .line 1137
    :pswitch_c
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleTorch()V

    goto :goto_1

    .line 1140
    :pswitch_d
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleVibrate()V

    goto :goto_1

    .line 1143
    :pswitch_e
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleWifi()V

    goto :goto_1

    .line 1146
    :pswitch_f
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePowerMode()V

    goto :goto_1

    .line 1149
    :pswitch_10
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 1150
    sget-object v1, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v1}, Lmiui/app/WifiApEnabler;->toggleWifiAp()V

    goto :goto_1

    .line 1154
    :pswitch_11
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleQuietMode()V

    goto :goto_1

    .line 1157
    :pswitch_12
    invoke-direct {p0}, Lmiui/app/ToggleManager;->togglePaperMode()V

    goto :goto_1

    .line 1160
    :pswitch_13
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleMiDrop()V

    goto :goto_1

    .line 1163
    :pswitch_14
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->toggleCast()V

    .line 1164
    const/4 v0, 0x1

    .line 1165
    goto :goto_1

    .line 1167
    :pswitch_15
    invoke-direct {p0}, Lmiui/app/ToggleManager;->toggleEdit()V

    .line 1168
    const/4 v0, 0x1

    .line 1169
    goto :goto_1

    .line 1100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_d
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 757
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 758
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 759
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    :cond_0
    iget-object v2, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 757
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    :cond_2
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 766
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .prologue
    .line 749
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .prologue
    .line 753
    iget-object v0, p0, Lmiui/app/ToggleManager;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrderStatic(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 544
    return-void
.end method

.method public startLongClickAction(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 867
    const/16 v7, 0x12

    if-ne v7, p1, :cond_1

    .line 868
    invoke-direct {p0}, Lmiui/app/ToggleManager;->longClickScreenshot()Z

    move-result v5

    .line 904
    :cond_0
    :goto_0
    return v5

    .line 871
    :cond_1
    if-ne v6, p1, :cond_2

    invoke-static {p1}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 875
    :cond_2
    sget-object v7, Lmiui/app/ToggleManager;->sLongClickActions:[I

    aget v4, v7, p1

    .line 876
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 880
    iget-object v7, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 885
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 886
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 890
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 892
    if-ne v6, p1, :cond_3

    .line 894
    const-string v5, ":miui:starting_window_label"

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    :cond_3
    const/high16 v5, 0x14000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 900
    :try_start_0
    iget-object v5, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v5, v6

    .line 904
    goto :goto_0

    .line 901
    :catch_0
    move-exception v2

    .line 902
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ToggleManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start activity exception, component = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method toggleCast()V
    .locals 4

    .prologue
    .line 1178
    :try_start_0
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/app/ToggleManager;->getCastIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method toggleWifi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1193
    const/16 v4, 0xf

    invoke-static {v4}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1194
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1195
    .local v0, "currentWifiState":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x1

    .line 1197
    .local v1, "enable":Z
    :goto_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 1198
    .local v2, "wifiApState":I
    if-eqz v1, :cond_1

    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 1200
    :cond_0
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1202
    :cond_1
    sget-object v3, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1204
    .end local v0    # "currentWifiState":I
    .end local v1    # "enable":Z
    .end local v2    # "wifiApState":I
    :cond_2
    return-void

    .restart local v0    # "currentWifiState":I
    :cond_3
    move v1, v3

    .line 1195
    goto :goto_0
.end method

.method public updateAllToggles(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 430
    iput p1, p0, Lmiui/app/ToggleManager;->mCurrentUserId:I

    .line 431
    invoke-direct {p0}, Lmiui/app/ToggleManager;->queryBrightnessStatus()V

    .line 432
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateBluetoothToggle()V

    .line 433
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 435
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateSyncToggle()V

    .line 436
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateAccelerometerToggle()V

    .line 437
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateFlightModeToggle()V

    .line 438
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateGpsToggle()V

    .line 439
    iget-object v0, p0, Lmiui/app/ToggleManager;->mMobilePolicyEnableObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 440
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateBrightnessToggle()V

    .line 441
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateScreenButtonState()V

    .line 442
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateTorchToggle()V

    .line 443
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    .line 444
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePowerModeToggle()V

    .line 445
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateQuietModeToggle()V

    .line 446
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updatePaperModeToggle()V

    .line 447
    invoke-direct {p0}, Lmiui/app/ToggleManager;->updateMiDropToggle()V

    .line 448
    return-void
.end method

.method updateBluetoothToggle()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "bluetoothChanging":Z
    invoke-direct {p0}, Lmiui/app/ToggleManager;->ensureBluetoothAdapter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 1306
    .local v1, "currentState":I
    iget-object v2, p0, Lmiui/app/ToggleManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, v6, :cond_3

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    .line 1307
    if-eq v1, v6, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_1
    move v0, v4

    .line 1310
    .end local v1    # "currentState":I
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1311
    invoke-virtual {p0, v5, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1313
    iget-boolean v2, p0, Lmiui/app/ToggleManager;->mBluetoothEnable:Z

    if-eqz v2, :cond_5

    const v2, 0x11020082

    :goto_2
    invoke-virtual {p0, v5, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1317
    return-void

    .restart local v1    # "currentState":I
    :cond_3
    move v2, v3

    .line 1306
    goto :goto_0

    :cond_4
    move v0, v3

    .line 1307
    goto :goto_1

    .line 1313
    .end local v1    # "currentState":I
    :cond_5
    const v2, 0x11020081

    goto :goto_2
.end method

.method updateMiDropToggle(Z)V
    .locals 7
    .param p1, "updateWifiAp"    # Z

    .prologue
    const/16 v6, 0x1b

    const/4 v2, 0x0

    .line 1670
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1671
    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3, v2}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    .line 1673
    :cond_0
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->isDisplayMiDropOn()Z

    move-result v0

    .line 1674
    .local v0, "isMiDropOn":Z
    invoke-virtual {p0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    invoke-virtual {v3}, Lmiui/app/WifiApEnabler;->isWifiApDisabled()Z

    move-result v1

    .line 1675
    .local v1, "isWifiApDisabled":Z
    :goto_0
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiDrop: updateMiDropToggle(boolean) isMiDropOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWifiApDisabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMiDropChanging = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWifiChanging = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mMiDropChanging:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v6, v2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1678
    invoke-virtual {p0, v6, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1679
    if-eqz v0, :cond_4

    const v2, 0x11020092

    :goto_1
    invoke-virtual {p0, v6, v2}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1682
    return-void

    .end local v1    # "isWifiApDisabled":Z
    :cond_3
    move v1, v2

    .line 1674
    goto :goto_0

    .line 1679
    .restart local v1    # "isWifiApDisabled":Z
    :cond_4
    const v2, 0x11020091

    goto :goto_1
.end method

.method public updateRingerToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1461
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1462
    .local v0, "silentEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1463
    if-eqz v0, :cond_0

    const v1, 0x11020094

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1466
    return-void

    .line 1463
    :cond_0
    const v1, 0x11020093

    goto :goto_0
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 818
    sget-object v0, Lmiui/app/ToggleManager;->sToggleDisabled:[Z

    aput-boolean p2, v0, p1

    .line 819
    return-void
.end method

.method protected updateToggleImage(II)V
    .locals 6
    .param p1, "toggleId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1081
    sget-object v3, Lmiui/app/ToggleManager;->sToggleImages:[I

    aput p2, v3, p1

    .line 1083
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1084
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1085
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1086
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 1087
    .local v2, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v2, :cond_0

    .line 1088
    const-string v3, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listener is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v3, p0, Lmiui/app/ToggleManager;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1084
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1091
    :cond_0
    invoke-interface {v2, p1}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    goto :goto_1

    .line 1095
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v2    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :cond_1
    return-void
.end method

.method protected updateToggleStatus(IZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "isOpen"    # Z

    .prologue
    .line 814
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatus:[Z

    aput-boolean p2, v0, p1

    .line 815
    return-void
.end method

.method protected updateToggleStatusName(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "statusName"    # Ljava/lang/Object;

    .prologue
    .line 822
    sget-object v0, Lmiui/app/ToggleManager;->sToggleStatusNames:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    return-void
.end method

.method public updateVibrateToggle()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1487
    iget-object v1, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1488
    .local v0, "isVibrateEnabled":Z
    invoke-virtual {p0, v2, v0}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1489
    if-eqz v0, :cond_0

    const v1, 0x110200a7

    :goto_0
    invoke-virtual {p0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1492
    return-void

    .line 1489
    :cond_0
    const v1, 0x110200a6

    goto :goto_0
.end method

.method updateWifiToggle(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/16 v8, 0xf

    const/4 v5, 0x0

    .line 1211
    if-eqz p1, :cond_2

    .line 1212
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1214
    const-string/jumbo v4, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1215
    .local v3, "wifiState":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    if-ne v3, v9, :cond_3

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    .line 1217
    if-eq v3, v9, :cond_1

    if-nez v3, :cond_4

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    .line 1219
    const-string v4, "ToggleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mWifiChanging = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {p0, v5}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    .line 1246
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "wifiState":I
    :cond_2
    :goto_2
    const-string v5, "ToggleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";isWifiContected="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_a

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    if-nez v4, :cond_b

    iget-object v4, p0, Lmiui/app/ToggleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1107000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatusName(ILjava/lang/Object;)V

    .line 1250
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 1251
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiChanging:Z

    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 1252
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    if-eqz v4, :cond_c

    const v4, 0x110200ab

    :goto_5
    invoke-virtual {p0, v8, v4}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    .line 1256
    return-void

    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "wifiState":I
    :cond_3
    move v4, v5

    .line 1215
    goto/16 :goto_0

    :cond_4
    move v6, v5

    .line 1217
    goto/16 :goto_1

    .line 1221
    .end local v3    # "wifiState":I
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1222
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1224
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    iput-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    .line 1225
    iget-boolean v4, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    if-eqz v4, :cond_9

    .line 1227
    const-string/jumbo v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1228
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_6

    .line 1229
    sget-object v4, Lmiui/app/ToggleManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1231
    :cond_6
    if-eqz v1, :cond_8

    .line 1232
    invoke-direct {p0, v1}, Lmiui/app/ToggleManager;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lmiui/app/ToggleManager;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    .line 1236
    :goto_7
    const-string v4, "ToggleManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifiEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";isWifiContected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lmiui/app/ToggleManager;->mWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";WifiInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    move v6, v5

    .line 1224
    goto :goto_6

    .line 1234
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto :goto_7

    .line 1241
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_9
    iput-object v7, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_2

    .line 1246
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 1249
    :cond_b
    iget-object v4, p0, Lmiui/app/ToggleManager;->mWifiSsid:Ljava/lang/String;

    goto/16 :goto_4

    .line 1252
    :cond_c
    const v4, 0x110200aa

    goto/16 :goto_5
.end method

.method useWifiApForMiDrop()Z
    .locals 1

    .prologue
    .line 1639
    sget-object v0, Lmiui/app/ToggleManager;->mWifiApEnabler:Lmiui/app/WifiApEnabler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/app/ToggleManager;->mHasMiDrop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
