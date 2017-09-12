.class public abstract Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field private static final DOUBLE_TAP_HOME_RECENT_PANEL:I = 0x1

.field private static final ENABLE_HOME_KEY_DOUBLE_TAP_INTERVAL:I = 0x12c

.field private static final ENABLE_HOME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_HOME_KEY_PRESS_INTERVAL:I = 0x12c

.field private static final ENABLE_VOLUME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_VOLUME_KEY_PRESS_INTERVAL:I = 0x12c

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_NONE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_PAY:I = 0x2

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_STREET_SNAP:I = 0x1

.field private static final LONG_PRESS_VOLUME_TIME:I = 0x3e8

.field private static final PERMISSION_INTERNAL_GENERAL_API:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final SCREEN_KEY_LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "screen_key_long_press_volume_down"

.field private static final SHORTCUT_ENABLE_SCREEN_BUTTONS:I

.field private static final SHORTCUT_MAX_BRIGHTNESS:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_SCREENSHOT_SINGLE_KEY:I

.field private static final SHORTCUT_UNLOCK:I

.field private static final SYSTEM_SETTINGS_VR_MODE:Ljava/lang/String; = "vr_mode"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static sPhoneWindowManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field private mCameraIntent:Landroid/content/Intent;

.field mCameraKeyWakeScreen:Z

.field private mCurrentUserId:I

.field private mDoubleTapOnHomeBehavior:I

.field protected mFpNavEventNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrontFingerprintSensor:Z

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field mHaveBankCard:Z

.field mHaveTranksCard:Z

.field mHideNavBar:Z

.field mHomeConsumed:Z

.field mHomeDoubleClickPending:Z

.field private final mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyPrePressedTime:J

.field private mHomeKeyPressedCount:J

.field private mIgnoreAppSwitch:Z

.field private mInputMethodWindowVisibleHeight:I

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mIsVRMode:Z

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mLongPressVolumeDownBehavior:I

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field private mMiuiSettingsReceiver:Landroid/database/ContentObserver;

.field mNavBarHeight:I

.field mNavBarHeightLand:I

.field mNavBarWidth:I

.field private mNeedResetTimeout:Z

.field private mNfcIntent:Landroid/content/Intent;

.field mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field mScreenButtonsDisabled:Z

.field private mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

.field protected mScreenOffReason:I

.field mScreenOffWhenHomeDown:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutPressing:I

.field private mShortcutTriggered:Z

.field private mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSingleKeyUse:Z

.field private mSmartCoverLidOpen:Z

.field private mSoftKeyboardWinToken:Landroid/os/IBinder;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTestModeEnabled:Z

.field private mTorchEnabled:Z

.field private mTorchIsJustTurnedOn:Z

.field private mTorchStateReceiver:Landroid/database/ContentObserver;

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field private mVolumeButtonPrePressedTime:J

.field private mVolumeButtonPressedCount:J

.field mVolumeKeyLaunchCamera:Z

.field private mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVolumeKeyWakeScreen:Z

.field private mWifiOnly:Z

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x52

    const/16 v5, 0x1a

    const/16 v4, 0x18

    const/4 v3, 0x3

    const/16 v2, 0x19

    .line 134
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    .line 136
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    .line 138
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 140
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 142
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 144
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    .line 205
    const/16 v0, 0x3a98

    sput v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 573
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 177
    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 181
    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    .line 195
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    .line 218
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    .line 517
    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 846
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    .line 855
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    .line 872
    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 873
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 890
    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 891
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffWhenHomeDown:Z

    .line 1283
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 1320
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    .line 1321
    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1368
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 1370
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1437
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 1446
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1466
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    .line 2335
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2345
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_0

    move v1, v3

    .line 399
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    move v0, v3

    .line 401
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    .line 402
    .local v2, "notFocusableForIm":Z
    if-nez v2, :cond_2

    :goto_2
    return v3

    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    move v1, v4

    .line 397
    goto :goto_0

    .restart local v1    # "notFocusable":Z
    :cond_1
    move v0, v4

    .line 399
    goto :goto_1

    .restart local v0    # "altFocusableIm":Z
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    move v3, v4

    .line 402
    goto :goto_2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2458
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2459
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2460
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2461
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "ShowCameraWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2462
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2463
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2464
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 116
    sparse-switch p0, :sswitch_data_0

    .line 131
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 119
    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 121
    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 123
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 125
    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    .line 127
    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    .line 129
    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method private getNfcIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2450
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2451
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2452
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2470
    const/4 v1, 0x0

    .line 2471
    .local v1, "cn":Landroid/content/ComponentName;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2472
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 2473
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2474
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2475
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2478
    .end local v2    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    return-object v1
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .locals 3

    .prologue
    .line 2177
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 2179
    .local v0, "service":Landroid/view/IWindowManager;
    if-nez v0, :cond_0

    .line 2180
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    :cond_0
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2355
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 2356
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2357
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    .line 2359
    :cond_0
    return-void
.end method

.method private handleKeyCombination()Z
    .locals 4

    .prologue
    .line 754
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 801
    :cond_1
    :goto_0
    return v0

    .line 756
    :cond_2
    const/4 v0, 0x0

    .line 757
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 758
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 760
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_4

    .line 761
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 762
    const/4 v0, 0x1

    .line 798
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 799
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    goto :goto_0

    .line 766
    :cond_5
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    if-ne v1, v2, :cond_6

    .line 767
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    .line 768
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v1, :cond_4

    .line 769
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_SCREEN_BUTTONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 770
    const/4 v0, 0x1

    goto :goto_1

    .line 773
    :cond_6
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    if-ne v1, v2, :cond_7

    .line 774
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_4

    .line 775
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 776
    const/4 v0, 0x1

    goto :goto_1

    .line 779
    :cond_7
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    if-ne v1, v2, :cond_8

    .line 783
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "screenshot"

    const-string v3, "menu_power"

    invoke-static {v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x1

    goto :goto_1

    .line 790
    :cond_8
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    if-ne v1, v2, :cond_4

    .line 791
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_4

    .line 792
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 794
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private inFingerprintEnrolling()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1271
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1273
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1274
    .local v2, "topClassName":Ljava/lang/String;
    const-string v3, "com.android.settings.NewFingerprintInternalActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 1280
    .end local v2    # "topClassName":Ljava/lang/String;
    :goto_0
    return v3

    .line 1277
    :catch_0
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v5

    .line 1280
    goto :goto_0
.end method

.method private isAudioActive()Z
    .locals 6

    .prologue
    .line 2482
    const/4 v0, 0x0

    .line 2483
    .local v0, "active":Z
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 2484
    .local v3, "mode":I
    if-lez v3, :cond_0

    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    .line 2485
    const/4 v0, 0x1

    move v1, v0

    .line 2499
    .end local v0    # "active":Z
    .local v1, "active":I
    :goto_0
    return v1

    .line 2488
    .end local v1    # "active":I
    .restart local v0    # "active":Z
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    .line 2489
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 2490
    const/4 v5, 0x1

    if-ne v5, v2, :cond_2

    .line 2489
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2494
    :cond_2
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 2495
    if-eqz v0, :cond_1

    :cond_3
    move v1, v0

    .line 2499
    .restart local v1    # "active":I
    goto :goto_0
.end method

.method private isInCallScreenShowing()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 732
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 734
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "runningActivity":Ljava/lang/String;
    const-string v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isNfcEnable(Z)Z
    .locals 4
    .param p1, "ishomeclick"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2362
    if-eqz p1, :cond_2

    .line 2363
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2365
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 821
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 822
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 824
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 825
    return-object v0
.end method

.method private markShortcutTriggered()V
    .locals 2

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 748
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 749
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 751
    return-void
.end method

.method private originalCanHideNavigationBar()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundEffect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1828
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1829
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 1833
    :goto_0
    return v1

    .line 1832
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1833
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private releaseScreenOnProximitySensor()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release()Z

    .line 571
    :cond_0
    return-void
.end method

.method private resetKeyStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 837
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 838
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 839
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 840
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 841
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    .line 842
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 843
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 844
    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 407
    .local v3, "typeLayers":Lorg/json/JSONObject;
    const/16 v2, 0x7d0

    .local v2, "type":I
    :goto_0
    const/16 v4, 0xbb7

    if-gt v2, v4, :cond_1

    .line 408
    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 409
    .local v1, "layer":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 411
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 417
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "layer":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_type_layer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    return-void
.end method

.method public static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 805
    const-string v5, "count_event"

    .line 806
    .local v5, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v4, "com.miui.gallery"

    .line 807
    .local v4, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    .line 808
    .local v0, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string v3, "stat_type"

    .line 809
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v1, "category"

    .line 810
    .local v1, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v2, "event"

    .line 812
    .local v2, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 818
    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1377
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 1379
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1380
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 1381
    if-eqz p1, :cond_0

    const/high16 v2, -0x80000000

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1397
    :goto_1
    return-void

    .line 1386
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0

    .line 1394
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1395
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setTorch(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1456
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1463
    :goto_0
    return v1

    .line 1458
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    .line 1459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1461
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startCameraProcess()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 509
    return-void
.end method


# virtual methods
.method public beginLayoutLw(ZIII)V
    .locals 2
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(ZIII)V

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    .line 318
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBottom:I

    .line 322
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    .line 323
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedScreenHeight:I

    .line 324
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 331
    :goto_0
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockTop:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurTop:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceContentTop:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContentTop:I

    .line 332
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurBottom:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContentBottom:I

    .line 333
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockLeft:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurLeft:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContentLeft:I

    .line 334
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockRight:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurRight:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceContentRight:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContentRight:I

    .line 336
    :cond_0
    return-void

    .line 326
    :cond_1
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemRight:I

    .line 327
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockRight:I

    .line 328
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedScreenWidth:I

    .line 329
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_0
.end method

.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2209
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2210
    const/4 v0, 0x0

    .line 2212
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .locals 7
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2186
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2187
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return v4

    .line 2191
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2193
    .local v3, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 2197
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2198
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2199
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2509
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BaseMiuiPhoneWindowManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInputMethodWindowVisibleHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrontFingerprintSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSmartCoverLidOpen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2515
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOffReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2517
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsStatusBarVisibleInFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasCameraFlash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTorchIsJustTurnedOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2521
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWifiOnly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2522
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyPress"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    const-string v0, " mKeyPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    const-string v0, " mShortcutPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_MENU KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_APP_SWITCH KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_HOME KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_BACK KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_POWER KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_DOWN KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2532
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_UP KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ElSE KEYCODE KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_ENABLE_SCREEN_BUTTONS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_ENABLE_SCREEN_BUTTONS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_MAX_BRIGHTNESS="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MAX_BRIGHTNESS:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_ANDROID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_MIUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_UNLOCK="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortcutTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2540
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyResponseSetting"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPressToAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2543
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2544
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTrackballWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2546
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeKeyLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2547
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenButtonsDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPrePressedTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2549
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeButtonPressedCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 2550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveBankCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2551
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveTranksCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2552
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressVolumeDownBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2553
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRequestShowMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2554
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIgnoreAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2555
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsVRMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2556
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2290
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 2291
    const-string v5, "ro.radio.noril"

    invoke-static {v5, v4}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    .line 2294
    const-string v1, "persist.sys.smartcover_enabled"

    .line 2295
    .local v1, "legacySmartcoverModeKey":Ljava/lang/String;
    const-string v5, "persist.sys.smartcover_enabled"

    invoke-static {v5, v4}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2296
    const-string v5, "persist.sys.smartcover_enabled"

    invoke-static {v5, v4}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Z)V

    .line 2297
    const-string v5, "persist.sys.smartcover_mode"

    invoke-static {v5, v3}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 2300
    :cond_0
    const-string v5, "persist.sys.smartcover_mode"

    invoke-static {v5, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2302
    .local v2, "smartcoverMode":I
    if-ne v3, v2, :cond_1

    .line 2303
    invoke-static {v3}, Landroid/provider/MiuiSettings$System;->setSmartCoverMode(Z)V

    .line 2306
    :cond_1
    const/4 v0, 0x0

    .line 2307
    .local v0, "inSmallWindowMode":Z
    const-string v5, "persist.sys.smartcover_mode"

    invoke-static {v5, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2309
    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    .line 2310
    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 2311
    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v5, :cond_3

    move v0, v3

    .line 2313
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_small_window"

    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v4, v0, v5}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 2315
    return-void

    :cond_3
    move v0, v4

    .line 2311
    goto :goto_0
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishLayoutLw()V
    .locals 5

    .prologue
    .line 2319
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishLayoutLw()V

    .line 2320
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDockBottom:I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurBottom:I

    sub-int v0, v2, v3

    .line 2321
    .local v0, "inputMethodHeight":I
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    if-eq v2, v0, :cond_0

    .line 2322
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    .line 2323
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input method visible height changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2325
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "miui.intent.extra.input_method_visible_height"

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2327
    const-string v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2329
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 6

    .prologue
    .line 1323
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 1324
    .local v0, "changes":I
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1325
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1326
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    .line 1328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 1329
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 1330
    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string v5, "system"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_1
    return v0

    .line 1330
    .restart local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    const/16 v3, 0x100

    goto :goto_0

    .line 1336
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 1337
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when disable status bar visible"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1339
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v0, :cond_0

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    goto :goto_0
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1347
    .local v0, "statusBar":Landroid/view/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_0

    .line 1348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1349
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1350
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1353
    :cond_0
    return-void
.end method

.method protected forceShowNavigationBar()Z
    .locals 1

    .prologue
    .line 2332
    invoke-static {}, Lmiui/util/CustomizeUtil;->needChangeSize()Z

    move-result v0

    return v0
.end method

.method protected abstract forceStopPackage(Ljava/lang/String;I)V
.end method

.method getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v2

    .line 1291
    .local v2, "keyguard":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideLockScreen:Z

    if-nez v4, :cond_1

    move-object v3, v2

    .line 1293
    .local v3, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    const/4 v1, 0x0

    .line 1294
    .local v1, "flags":I
    if-eqz v3, :cond_0

    .line 1295
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v1, v4

    .line 1296
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1297
    or-int/lit8 v1, v1, 0x1

    .line 1301
    :cond_0
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v0

    .line 1302
    .local v0, "disabledFlag":I
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v5, p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1317
    invoke-static {v1}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v4

    return v4

    .line 1291
    .end local v0    # "disabledFlag":I
    .end local v1    # "flags":I
    .end local v3    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method protected abstract getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public getSoftKeyboardToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSoftKeyboardWinToken:Landroid/os/IBinder;

    return-object v0
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2174
    return-void
.end method

.method hideNavBar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1976
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setNavBarDimensions(III)V

    .line 1977
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 241
    sput-object p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sPhoneWindowManager:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 243
    .local v6, "res":Landroid/content/res/Resources;
    const v0, 0x105001a

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarWidth:I

    .line 244
    const v0, 0x1050018

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeight:I

    .line 245
    const v0, 0x1050019

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeightLand:I

    .line 246
    new-instance v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    .line 247
    .local v7, "settingsObserver":Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
    invoke-virtual {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 249
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVolumeKeyWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 257
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v0, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackageChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 273
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, v8}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 275
    new-instance v0, Lmiui/util/AutoDisableScreenButtonsManager;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-direct {v0, p1, v1}, Lmiui/util/AutoDisableScreenButtonsManager;-><init>(Landroid/content/Context;Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchStateReceiver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_key_press_app_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiSettingsReceiver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "persist.camera.snap.enable"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "Street-snap"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 302
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    .line 305
    new-instance v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v1, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;

    invoke-direct {v1, p1, p0}, Lcom/android/server/policy/ShowNavBarGesturesListenerCallbacks;-><init>(Landroid/content/Context;Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 307
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "policy_control"

    const-string v2, "immersive.preconfirms=*"

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 312
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    const-string v2, "none"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    .line 861
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 862
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 865
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 867
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 869
    :cond_0
    return p4

    .line 862
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2373
    const/4 v2, 0x0

    .line 2374
    .local v2, "intercept":Z
    invoke-direct {p0, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v8

    if-nez v8, :cond_0

    move v3, v2

    .line 2404
    .end local v2    # "intercept":Z
    .local v3, "intercept":I
    :goto_0
    return v3

    .line 2377
    .end local v3    # "intercept":I
    .restart local v2    # "intercept":Z
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    move v0, v6

    .line 2378
    .local v0, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 2381
    .local v5, "keyCode":I
    const/high16 v8, 0x1000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_3

    move v4, v6

    .line 2382
    .local v4, "isInjected":Z
    :goto_2
    if-eqz p3, :cond_4

    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_1
    move v3, v2

    .line 2383
    .restart local v3    # "intercept":I
    goto :goto_0

    .end local v0    # "down":Z
    .end local v3    # "intercept":I
    .end local v4    # "isInjected":Z
    .end local v5    # "keyCode":I
    :cond_2
    move v0, v7

    .line 2377
    goto :goto_1

    .restart local v0    # "down":Z
    .restart local v5    # "keyCode":I
    :cond_3
    move v4, v7

    .line 2381
    goto :goto_2

    .line 2386
    .restart local v4    # "isInjected":Z
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_5

    .line 2387
    iget-boolean v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v7, :cond_6

    .line 2388
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2390
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2391
    const/4 v2, 0x1

    .line 2392
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2393
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2394
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->OnDoubleClickHome()V

    .line 2395
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    move v3, v2

    .line 2404
    .restart local v3    # "intercept":I
    goto :goto_0

    .line 2396
    .end local v3    # "intercept":I
    :catch_0
    move-exception v1

    .line 2397
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "WindowManager"

    const-string v7, "mNfcIntent problem"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2400
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2401
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 586
    .local v7, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_3

    const/4 v4, 0x1

    .line 587
    .local v4, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    .line 589
    .local v3, "canceled":Z
    if-eqz v4, :cond_0

    if-nez v7, :cond_0

    .line 590
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 597
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 598
    .local v6, "keyCode":I
    const/16 v12, 0x52

    if-ne v6, v12, :cond_1

    const/16 v6, 0xbb

    .line 604
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v12, :cond_2

    .line 605
    sparse-switch v6, :sswitch_data_0

    .line 615
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isFingerPrintKey(Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I

    move-result v12

    int-to-long v12, v12

    .line 720
    :goto_1
    return-wide v12

    .line 586
    .end local v3    # "canceled":Z
    .end local v4    # "down":Z
    .end local v6    # "keyCode":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 611
    .restart local v3    # "canceled":Z
    .restart local v4    # "down":Z
    .restart local v6    # "keyCode":I
    :sswitch_0
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 619
    :cond_4
    const/16 v12, 0xbb

    if-ne v6, v12, :cond_b

    .line 620
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v12, :cond_5

    .line 621
    const-string v12, "BaseMiuiPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring MENU because mTestModeEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 625
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-eqz v12, :cond_9

    .line 626
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIgnoreAppSwitch:Z

    if-nez v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v12

    if-nez v12, :cond_6

    .line 627
    if-eqz v4, :cond_7

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    .line 633
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-eqz v12, :cond_8

    .line 634
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    .line 636
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 630
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->launchRecentPanel()Z
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    goto :goto_2

    .line 638
    :cond_8
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 640
    :cond_9
    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->showMenu()Z
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 641
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 643
    :cond_a
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 647
    :cond_b
    const/4 v12, 0x3

    if-ne v6, v12, :cond_1b

    .line 648
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v12, :cond_c

    .line 649
    const-string v12, "BaseMiuiPhoneWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring HOME because mTestModeEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 653
    :cond_c
    if-nez v4, :cond_15

    .line 654
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    if-eqz v12, :cond_d

    .line 655
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 656
    const-wide/16 v12, -0x1

    goto/16 :goto_1

    .line 658
    :cond_d
    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v12, :cond_14

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v9

    .line 660
    .local v9, "telecomManager":Landroid/telecom/TelecomManager;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v12, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 663
    const-string v12, "WindowManager"

    const-string v13, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .end local v9    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_e
    :goto_3
    if-nez v7, :cond_f

    .line 709
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v12, :cond_1a

    .line 710
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleDoubleTapOnHome()V

    .line 717
    :cond_f
    :goto_4
    const-wide/16 v12, -0x1

    goto/16 :goto_1

    .line 666
    .restart local v9    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v12}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v13, "statusbar"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 669
    .local v8, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v8}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 671
    .end local v8    # "sbm":Landroid/app/StatusBarManager;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffWhenHomeDown:Z

    if-nez v12, :cond_13

    .line 672
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v12, :cond_12

    .line 673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 674
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    const-wide/16 v12, -0x1

    goto/16 :goto_1

    .line 678
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_3

    .line 680
    :cond_13
    const-string v12, "WindowManager"

    const-string v13, "Ignoring HOME; screen is off when first Home down"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 684
    .end local v9    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_14
    const-string v12, "WindowManager"

    const-string v13, "Ignoring HOME; event canceled."

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 690
    :cond_15
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 691
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_5
    if-eqz v2, :cond_e

    .line 692
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 693
    .local v10, "type":I
    const/16 v12, 0x7d4

    if-eq v10, v12, :cond_16

    const/16 v12, 0x7d9

    if-ne v10, v12, :cond_18

    .line 696
    :cond_16
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 690
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "type":I
    :cond_17
    const/4 v2, 0x0

    goto :goto_5

    .line 698
    .restart local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "type":I
    :cond_18
    sget-object v12, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v11, v12

    .line 699
    .local v11, "typeCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-ge v5, v11, :cond_e

    .line 700
    sget-object v12, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v12, v12, v5

    if-ne v10, v12, :cond_19

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    invoke-virtual {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 699
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 713
    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "i":I
    .end local v10    # "type":I
    .end local v11    # "typeCount":I
    :cond_1a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->preloadRecentApps()V
    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->access$500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;)V

    goto/16 :goto_4

    .line 720
    :cond_1b
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v12

    goto/16 :goto_1

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .locals 32
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 893
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 895
    const/16 v27, 0x0

    .line 1265
    :goto_0
    return v27

    .line 898
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_1

    const/4 v10, 0x1

    .line 899
    .local v10, "down":Z
    :goto_1
    const/high16 v27, 0x1000000

    and-int v27, v27, p2

    if-eqz v27, :cond_2

    const/4 v13, 0x1

    .line 901
    .local v13, "isInjected":Z
    :goto_2
    const-string v27, "BaseMiuiPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "keyCode:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " down:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " policyFlags="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " deviceId:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " isScreenOn:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 907
    const-string v27, "WindowManager"

    const-string v28, "VR mode drop all keys."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 898
    .end local v10    # "down":Z
    .end local v13    # "isInjected":Z
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 899
    .restart local v10    # "down":Z
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 911
    .restart local v13    # "isInjected":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v16

    .line 912
    .local v16, "keyCode":I
    const/16 v27, 0x52

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v16, 0xbb

    .line 914
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioManager;->getMode()I

    move-result v20

    .line 915
    .local v20, "mode":I
    const/16 v27, 0xe0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    new-instance v28, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 927
    :cond_5
    const-string v27, "sys.in_shutdown_progress"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 929
    const-string v27, "WindowManager"

    const-string v28, "this device is being shut down, ignore key event."

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 932
    :cond_6
    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 933
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 934
    const-string v27, "BaseMiuiPhoneWindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Ignoring POWER because mTestModeEnabled = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 939
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v27, v0

    if-nez v27, :cond_8

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 943
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    move/from16 v27, v0

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 944
    const/16 v27, 0xbb

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    const/16 v27, 0x4

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 945
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 949
    :cond_a
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v27

    if-nez v27, :cond_b

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 951
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffWhenHomeDown:Z

    .line 958
    :cond_b
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 960
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 953
    :cond_c
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffWhenHomeDown:Z

    goto :goto_3

    .line 963
    :cond_d
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    if-nez v10, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 964
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    const-wide/16 v30, 0x7d0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 968
    :cond_e
    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 969
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 970
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchIsJustTurnedOn:Z

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 979
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v27

    if-eqz v27, :cond_15

    const-string v27, "synaptics_dsx_edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string v27, "atmel-maxtouch-edge"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 982
    :cond_10
    const/16 v27, 0x78

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_13

    .line 990
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 974
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 975
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 974
    :cond_12
    const/16 v27, 0x0

    goto :goto_4

    .line 993
    :cond_13
    const/16 v27, 0x1c

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    .line 1002
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1005
    :cond_14
    const/16 v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "edge_handgrip_back"

    const/16 v29, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    move/from16 v30, v0

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    .line 1009
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1014
    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v15

    .line 1015
    .local v15, "keyBitMask":I
    if-eqz v10, :cond_16

    .line 1016
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v27, v0

    or-int v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v27, v0

    or-int v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 1023
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleKeyCombination()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1024
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1020
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    move/from16 v27, v0

    xor-int/lit8 v28, v15, -0x1

    and-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_5

    .line 1027
    :cond_17
    const/16 v27, 0x1a

    move/from16 v0, v27

    move/from16 v1, v16

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlocked(Landroid/view/KeyEvent;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    .line 1030
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1033
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    move/from16 v27, v0

    if-eqz v27, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_19

    .line 1034
    sparse-switch v16, :sswitch_data_0

    .line 1044
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 1045
    sparse-switch v16, :sswitch_data_1

    .line 1057
    :cond_1a
    if-nez v10, :cond_1c

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    .line 1068
    :cond_1b
    :goto_6
    const/16 v27, 0x3

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->inFingerprintEnrolling()Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 1069
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1038
    :sswitch_0
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1051
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lmiui/util/AutoDisableScreenButtonsManager;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v10, v2}, Lmiui/util/AutoDisableScreenButtonsManager;->onInterceptKey(IZI)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 1052
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1059
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v27

    if-nez v27, :cond_1b

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    move/from16 v27, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->send(I)V

    goto :goto_6

    .line 1064
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenKeyLongPress:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$ScreenKeyLongPressRunnable;->remove()V

    goto :goto_6

    .line 1074
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    move/from16 v27, v0

    and-int v27, v27, v15

    if-eqz v27, :cond_1f

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    move/from16 v27, v0

    xor-int/lit8 v28, v15, -0x1

    and-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 1076
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1079
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    move/from16 v27, v0

    if-nez v27, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22

    if-nez p3, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 1082
    const/16 v17, 0x0

    .line 1083
    .local v17, "keyIntent":Landroid/content/Intent;
    const/16 v27, 0x18

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    const/16 v27, 0x19

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    .line 1086
    :cond_20
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "keyIntent":Landroid/content/Intent;
    const-string v27, "miui.intent.action.CAMERA_KEY_BUTTON"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .restart local v17    # "keyIntent":Landroid/content/Intent;
    :cond_21
    :goto_7
    if-eqz v17, :cond_22

    .line 1093
    const-string v27, "com.android.camera"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v27, "key_code"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    const-string v27, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    const-string v27, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    sget-object v28, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1102
    .end local v17    # "keyIntent":Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z

    move-result v27

    if-eqz v27, :cond_24

    .line 1103
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1087
    .restart local v17    # "keyIntent":Landroid/content/Intent;
    :cond_23
    if-eqz v10, :cond_21

    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    .line 1089
    new-instance v17, Landroid/content/Intent;

    .end local v17    # "keyIntent":Landroid/content/Intent;
    const-string v27, "android.intent.action.KEYCODE_POWER_UP"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v17    # "keyIntent":Landroid/content/Intent;
    goto :goto_7

    .line 1105
    .end local v17    # "keyIntent":Landroid/content/Intent;
    :cond_24
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z

    move-result v27

    if-eqz v27, :cond_25

    .line 1106
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1109
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    move-object/from16 v27, v0

    if-nez v27, :cond_27

    const/16 v18, 0x0

    .line 1112
    .local v18, "keyguardActive":Z
    :goto_8
    const-string v27, "WindowManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "keyguardActive="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-nez p3, :cond_26

    if-eqz v13, :cond_29

    .line 1115
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2e

    if-eqz v18, :cond_2e

    const/16 v27, 0x1b

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_2e

    if-nez v10, :cond_2e

    .line 1116
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1109
    .end local v18    # "keyguardActive":Z
    :cond_27
    if-eqz p3, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v18

    goto :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v18

    goto :goto_8

    .line 1119
    .restart local v18    # "keyguardActive":Z
    :cond_29
    const/4 v14, 0x1

    .line 1120
    .local v14, "isWakeKey":Z
    const/4 v6, 0x0

    .line 1123
    .local v6, "allowToWake":Z
    sparse-switch v16, :sswitch_data_2

    .line 1144
    const/4 v14, 0x0

    .line 1147
    :cond_2a
    :goto_9
    if-eqz v14, :cond_2e

    .line 1148
    if-eqz v6, :cond_2d

    .line 1149
    if-eqz v10, :cond_2b

    .line 1151
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1125
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1126
    goto :goto_9

    .line 1129
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1130
    goto :goto_9

    .line 1134
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->screenOffBecauseOfProxSensor()Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 1139
    const/4 v6, 0x0

    goto :goto_9

    .line 1154
    :cond_2b
    if-eqz v18, :cond_2c

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    move-object/from16 v27, v0

    const/16 v28, 0x1a

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 1157
    :cond_2c
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1160
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v27

    xor-int/lit8 v27, v27, -0x1

    and-int p2, p2, v27

    .line 1164
    .end local v6    # "allowToWake":Z
    .end local v14    # "isWakeKey":Z
    :cond_2e
    const/16 v27, 0x4f

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_31

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "enable_mikey_mode"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    move/from16 v30, v0

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    if-eqz v27, :cond_30

    const/4 v11, 0x1

    .line 1170
    .local v11, "enabled":Z
    :goto_a
    if-eqz v11, :cond_31

    .line 1171
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v27

    if-nez v27, :cond_2f

    .line 1172
    new-instance v19, Landroid/content/Intent;

    const-string v27, "miui.intent.action.MIKEY_BUTTON"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v19, "mikeyIntent":Landroid/content/Intent;
    const-string v27, "com.xiaomi.miclick"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string v27, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const-string v27, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1179
    .end local v19    # "mikeyIntent":Landroid/content/Intent;
    :cond_2f
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1165
    .end local v11    # "enabled":Z
    :cond_30
    const/4 v11, 0x0

    goto :goto_a

    .line 1183
    :cond_31
    if-eqz v10, :cond_3e

    .line 1187
    if-eqz p3, :cond_33

    if-nez v18, :cond_33

    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_32

    const/16 v27, 0x19

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_32

    const/16 v27, 0x18

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_32

    const/16 v27, 0xa4

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_32

    const/16 v27, 0x4f

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_33

    .line 1192
    :cond_32
    new-instance v12, Landroid/content/Intent;

    const-string v27, "miui.intent.action.KEYCODE_EXTERNAL"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v12, "i":Landroid/content/Intent;
    const-string v27, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1194
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1195
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1198
    .end local v12    # "i":Landroid/content/Intent;
    :cond_33
    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    const/16 v25, 0x1

    .line 1199
    .local v25, "stopNotification":Z
    :goto_b
    if-nez v25, :cond_35

    .line 1200
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWindownManagerService()Landroid/view/IWindowManager;

    move-result-object v26

    .line 1201
    .local v26, "wm":Landroid/view/IWindowManager;
    if-eqz v26, :cond_35

    invoke-interface/range {v26 .. v26}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v27

    if-eqz v27, :cond_35

    .line 1202
    const/16 v27, 0x19

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_34

    const/16 v27, 0x18

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_34

    const/16 v27, 0xa4

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_35

    .line 1205
    :cond_34
    const/16 v25, 0x1

    .line 1210
    .end local v26    # "wm":Landroid/view/IWindowManager;
    :cond_35
    if-eqz v25, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v24

    .line 1212
    .local v24, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v24, :cond_36

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1217
    .end local v24    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_36
    const/16 v27, 0x19

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_37

    const/16 v27, 0x18

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 1219
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1220
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v27, "remote_control_proc_name"

    move-object/from16 v0, v27

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1221
    .local v22, "proc":Ljava/lang/String;
    const-string v27, "remote_control_pkg_name"

    move-object/from16 v0, v27

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1223
    .local v21, "pkg":Ljava/lang/String;
    if-eqz v22, :cond_3a

    if-eqz v21, :cond_3a

    .line 1224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1225
    .local v8, "c":J
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v23

    .line 1229
    .local v23, "running":Z
    if-eqz v23, :cond_39

    .line 1230
    new-instance v12, Landroid/content/Intent;

    const-string v27, "miui.intent.action.REMOTE_CONTROL"

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1231
    .restart local v12    # "i":Landroid/content/Intent;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const/high16 v27, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1233
    const-string v27, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1234
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1235
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v27

    goto/16 :goto_0

    .line 1198
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":J
    .end local v12    # "i":Landroid/content/Intent;
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v22    # "proc":Ljava/lang/String;
    .end local v23    # "running":Z
    .end local v25    # "stopNotification":Z
    :cond_38
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 1237
    .restart local v7    # "cr":Landroid/content/ContentResolver;
    .restart local v8    # "c":J
    .restart local v21    # "pkg":Ljava/lang/String;
    .restart local v22    # "proc":Ljava/lang/String;
    .restart local v23    # "running":Z
    .restart local v25    # "stopNotification":Z
    :cond_39
    const-string v27, "remote_control_proc_name"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1238
    const-string v27, "remote_control_pkg_name"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "c":J
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v22    # "proc":Ljava/lang/String;
    .end local v23    # "running":Z
    .end local v25    # "stopNotification":Z
    :cond_3a
    :goto_c
    if-eqz v10, :cond_3c

    const/16 v27, 0x18

    move/from16 v0, v27

    move/from16 v1, v16

    if-eq v0, v1, :cond_3b

    const/16 v27, 0x19

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3c

    .line 1251
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_3c
    if-eqz v10, :cond_3d

    and-int/lit8 v27, p2, 0x2

    if-eqz v27, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v27

    if-nez v27, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v27

    if-nez v27, :cond_3d

    .line 1256
    sparse-switch v16, :sswitch_data_3

    .line 1265
    :cond_3d
    :goto_d
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v27

    goto/16 :goto_0

    .line 1245
    :cond_3e
    const/16 v27, 0x1a

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 1246
    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 1262
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    goto :goto_d

    .line 1242
    .restart local v25    # "stopNotification":Z
    :catch_0
    move-exception v27

    goto :goto_c

    .line 1034
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch

    .line 1045
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
        0xbb -> :sswitch_1
    .end sparse-switch

    .line 1123
    :sswitch_data_2
    .sparse-switch
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_3
        0x110 -> :sswitch_2
    .end sparse-switch

    .line 1256
    :sswitch_data_3
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x52 -> :sswitch_5
        0x54 -> :sswitch_5
        0xbb -> :sswitch_5
    .end sparse-switch
.end method

.method protected interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 2411
    const/4 v2, 0x0

    .line 2412
    .local v2, "intercept":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v1, 0x1

    .line 2413
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 2418
    .local v5, "keyCode":I
    const/high16 v8, 0x1000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 2419
    .local v4, "isInjected":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v0, 0x1

    .line 2420
    .local v0, "KeyguardNotActive":Z
    :goto_2
    if-nez v4, :cond_1

    if-eqz p3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAudioActive()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    move v3, v2

    .line 2444
    .end local v2    # "intercept":Z
    .local v3, "intercept":I
    :goto_3
    return v3

    .line 2412
    .end local v0    # "KeyguardNotActive":Z
    .end local v1    # "down":Z
    .end local v3    # "intercept":I
    .end local v4    # "isInjected":Z
    .end local v5    # "keyCode":I
    .restart local v2    # "intercept":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2418
    .restart local v1    # "down":Z
    .restart local v5    # "keyCode":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 2419
    .restart local v4    # "isInjected":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 2424
    .restart local v0    # "KeyguardNotActive":Z
    :cond_5
    const/16 v8, 0x19

    if-ne v5, v8, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_6

    .line 2426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2427
    .local v6, "now":J
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x12c

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 2428
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 2433
    :goto_4
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-ltz v8, :cond_6

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->dismissKeyguardLw()V

    .line 2435
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2436
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2438
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2439
    const/4 v2, 0x1

    .end local v6    # "now":J
    :cond_6
    :goto_5
    move v3, v2

    .line 2444
    .restart local v3    # "intercept":I
    goto :goto_3

    .line 2430
    .end local v3    # "intercept":I
    .restart local v6    # "now":J
    :cond_7
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 2431
    iput-wide v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    goto :goto_4

    .line 2440
    :catch_0
    move-exception v8

    goto :goto_5
.end method

.method isAutoBrightnessMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2260
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2503
    const/4 v0, 0x0

    return v0
.end method

.method protected isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .locals 4

    .prologue
    .line 2216
    const/4 v0, 0x0

    .line 2217
    .local v0, "isOffhook":Z
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2218
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 2219
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    .line 2222
    :cond_0
    return v0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 340
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_2

    .line 384
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    sget-object v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 345
    .local v1, "pf":Landroid/graphics/Rect;
    sget-object v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 346
    .local v2, "df":Landroid/graphics/Rect;
    sget-object v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 347
    .local v3, "of":Landroid/graphics/Rect;
    sget-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 348
    .local v4, "cf":Landroid/graphics/Rect;
    sget-object v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 349
    .local v5, "vf":Landroid/graphics/Rect;
    sget-object v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 350
    .local v6, "dcf":Landroid/graphics/Rect;
    sget-object v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 351
    .local v7, "sf":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 353
    .local v8, "osf":Landroid/graphics/Rect;
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 354
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p1, v9}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 355
    .local v10, "fl":I
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    .line 356
    .local v12, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v11

    .line 357
    .local v11, "isDefaultDisplay":Z
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d4

    if-eq v0, v13, :cond_3

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7d9

    if-ne v0, v13, :cond_1

    :cond_3
    if-eqz v11, :cond_1

    const v0, 0x10100

    and-int/2addr v0, v10

    const v13, 0x10100

    if-ne v0, v13, :cond_1

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->originalCanHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_1

    .line 368
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 369
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 370
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 371
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 376
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 377
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 378
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 380
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 381
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v13, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v0, v13

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object v0, p1

    .line 382
    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 521
    const-string v2, "persist.sys.smartcover_mode"

    invoke-static {v2, v3}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 523
    .local v1, "smartcoverMode":I
    if-nez v1, :cond_0

    .line 524
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 525
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    .line 567
    :goto_0
    return-void

    .line 529
    :cond_0
    iput-boolean p3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    .line 532
    const-wide/32 v6, 0x7fffffff

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v8, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    int-to-long v8, v8

    invoke-static {v2, v5, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    move v0, v3

    .line 534
    .local v0, "isTimeoutMax":Z
    :goto_1
    if-eqz v0, :cond_6

    if-nez p3, :cond_6

    .line 535
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    sget v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->LID_CLOSE_SCREEN_OFF_TIMEOUT_VALUE:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    .line 542
    :cond_1
    :goto_2
    if-nez p3, :cond_2

    .line 543
    const-string v2, "sys.keyguard.screen_off_by_lid"

    const-string v5, "true"

    invoke-static {v2, v5}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v2, :cond_3

    .line 547
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "miui.intent.action.SMART_COVER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "is_smart_cover_open"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 551
    :cond_3
    const/4 v2, 0x2

    if-gt v2, v1, :cond_4

    .line 552
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "is_small_window"

    if-nez p3, :cond_7

    move v2, v3

    :goto_3
    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v5, v6, v2, v7}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 554
    if-nez p3, :cond_8

    .line 555
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x3

    invoke-virtual {v2, v6, v7, v5, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 564
    :cond_4
    :goto_4
    if-ne v3, v1, :cond_9

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    goto :goto_0

    .end local v0    # "isTimeoutMax":Z
    :cond_5
    move v0, v4

    .line 532
    goto :goto_1

    .line 537
    .restart local v0    # "isTimeoutMax":Z
    :cond_6
    if-eqz p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_off_timeout"

    const v6, 0x7fffffff

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    iput-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNeedResetTimeout:Z

    goto :goto_2

    :cond_7
    move v2, v4

    .line 552
    goto :goto_3

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->restoreScreenBrightnessByLid()V

    .line 560
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v5, "lid switch open"

    invoke-virtual {v2, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_4

    :cond_9
    move v3, v4

    .line 564
    goto :goto_5
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 1838
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_0

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    const/4 v0, 0x0

    .line 1849
    :goto_0
    return v0

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    .line 1849
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 887
    const/4 v0, -0x1

    return v0
.end method

.method protected registerStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_window_loaded"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 428
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 429
    return-void
.end method

.method restoreScreenBrightnessByLid()V
    .locals 8

    .prologue
    .line 2240
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 2241
    .local v1, "power":Landroid/os/IPowerManager;
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2243
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2244
    const-string v5, "screen_auto_brightness_adj"

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    .line 2247
    .local v3, "screenAutoBrightnessAdjustmentSetting":F
    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 2257
    .end local v3    # "screenAutoBrightnessAdjustmentSetting":F
    :goto_0
    return-void

    .line 2249
    :cond_0
    const-string v5, "screen_brightness"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v6

    const/4 v7, -0x2

    invoke-static {v2, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2252
    .local v4, "screenBrightnessSetting":I
    invoke-interface {v1, v4}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2254
    .end local v4    # "screenBrightnessSetting":I
    :catch_0
    move-exception v0

    .line 2255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method public screenTurnedOff()V
    .locals 0

    .prologue
    .line 500
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 501
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startCameraProcess()V

    .line 502
    return-void
.end method

.method protected screenTurnedOffInternal(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 513
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 514
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor()V

    .line 515
    return-void
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 7
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 470
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 471
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_screen_on_proximity_sensor"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x11090013

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 480
    .local v0, "proximitySensorEnableSettings":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-nez v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->aquire()V

    .line 489
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setMaxTemporaryScreenBrightness()V

    .line 493
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverLidOpen:Z

    if-eqz v1, :cond_3

    .line 494
    const-string v1, "sys.keyguard.screen_off_by_lid"

    const-string v2, "false"

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_3
    return-void

    .end local v0    # "proximitySensorEnableSettings":Z
    :cond_4
    move v1, v3

    .line 475
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2274
    :cond_0
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2284
    :cond_0
    return-void
.end method

.method public setCurrentUserLw(I)V
    .locals 9
    .param p1, "newUserId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2009
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 2010
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    .line 2011
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2012
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "screen_buttons_state"

    invoke-static {v2, v3, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 2014
    const-string v3, "trackball_wake_screen"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 2016
    const-string v3, "volumekey_wake_screen"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    .line 2018
    const-string v3, "volumekey_launch_camera"

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    .line 2020
    const-string v3, "camera_key_preferred_action_type"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2023
    .local v1, "cameraKeyActionType":I
    if-ne v4, v1, :cond_5

    .line 2024
    const/4 v3, 0x4

    const-string v6, "camera_key_preferred_action_shortcut_id"

    const/4 v7, -0x1

    iget v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v3, v6, :cond_4

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 2033
    :goto_5
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_key_press_app_switch"

    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    .line 2037
    const-string v3, "single_key_use_enable"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    .line 2039
    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_8
    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2040
    const-string v3, "key_bank_card_in_ese"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_9

    move v3, v4

    :goto_9
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    .line 2042
    const-string v3, "key_trans_card_in_ese"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_a

    move v3, v4

    :goto_a
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    .line 2044
    const-string v3, "key_long_press_volume_down"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2046
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 2047
    const-string v3, "Street-snap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2048
    iput v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    .line 2060
    :goto_b
    return-void

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "cameraKeyActionType":I
    :cond_0
    move v3, v5

    .line 2012
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 2014
    goto/16 :goto_1

    :cond_2
    move v3, v5

    .line 2016
    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 2018
    goto :goto_3

    .restart local v1    # "cameraKeyActionType":I
    :cond_4
    move v3, v5

    .line 2024
    goto :goto_4

    .line 2031
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    goto :goto_5

    :cond_6
    move v3, v5

    .line 2033
    goto :goto_6

    :cond_7
    move v3, v5

    .line 2037
    goto :goto_7

    :cond_8
    move v3, v5

    .line 2039
    goto :goto_8

    :cond_9
    move v3, v5

    .line 2040
    goto :goto_9

    :cond_a
    move v3, v5

    .line 2042
    goto :goto_a

    .line 2050
    .restart local v0    # "action":Ljava/lang/String;
    :cond_b
    const-string v3, "public_transportation_shortcuts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2051
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    goto :goto_b

    .line 2054
    :cond_c
    iput v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    goto :goto_b

    .line 2057
    :cond_d
    const-string v3, "key_long_press_volume_down"

    const-string v4, "none"

    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_b
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1957
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->setInitialDisplaySize(Landroid/view/Display;III)V

    .line 1958
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 1959
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavBar()V

    .line 1961
    :cond_0
    return-void
.end method

.method setMaxTemporaryScreenBrightness()V
    .locals 4

    .prologue
    .line 2226
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 2228
    .local v2, "power":Landroid/os/IPowerManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2229
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2230
    .local v0, "autoBrightnessAdjustment":F
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 2237
    .end local v0    # "autoBrightnessAdjustment":F
    :goto_0
    return-void

    .line 2232
    :cond_0
    const/16 v3, 0xff

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2234
    :catch_0
    move-exception v1

    .line 2235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setNavBarDimensions(III)V
    .locals 8
    .param p1, "wp"    # I
    .param p2, "hp"    # I
    .param p3, "hl"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPortraitRotation:I

    aget v0, v0, v1

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLandscapeRotation:I

    aget v0, v0, v1

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPortraitRotation:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLandscapeRotation:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUpsideDownRotation:I

    aput p2, v2, v3

    aput p2, v0, v1

    .line 1990
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLandscapeRotation:I

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSeascapeRotation:I

    aput p3, v2, v3

    aput p3, v0, v1

    .line 1994
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mUpsideDownRotation:I

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLandscapeRotation:I

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSeascapeRotation:I

    aput p1, v6, v7

    aput p1, v4, v5

    aput p1, v2, v3

    aput p1, v0, v1

    .line 1999
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateRotation(Z)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    instance-of v0, v0, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    .line 2001
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method protected setScreenButtonsState(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    .line 726
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_buttons_state"

    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenButtonsDisabled:Z

    if-eqz v4, :cond_1

    :goto_1
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 728
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenButtonsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    :cond_0
    move v0, v2

    .line 724
    goto :goto_0

    :cond_1
    move v1, v2

    .line 726
    goto :goto_1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2159
    return-void
.end method

.method showNavBar()V
    .locals 3

    .prologue
    .line 1972
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarWidth:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeight:I

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeightLand:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setNavBarDimensions(III)V

    .line 1973
    return-void
.end method

.method protected stopLockTaskMode()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 433
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 434
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v2, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected systemReadyInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 445
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 446
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    const-string v6, "android.hardware.sensor.proximity"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    new-instance v6, Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-direct {v6, v7, v8}, Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;)V

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 450
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torch_state"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_test_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    iput-boolean v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    .line 454
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vr_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6, v10}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 456
    invoke-static {v10}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 457
    const-string v6, "front_fingerprint_sensor"

    invoke-static {v6, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    .line 459
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 460
    const-string v6, "fp_nav_event_name_list"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "strArray":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 462
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 463
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .locals 0

    .prologue
    .line 1400
    return-void
.end method

.method updateNavBar()V
    .locals 1

    .prologue
    .line 1964
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHideNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hideNavBar()V

    .line 1969
    :goto_0
    return-void

    .line 1967
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showNavBar()V

    goto :goto_0
.end method
