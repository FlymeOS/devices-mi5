.class public Lmiui/view/VolumeDialog;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumeDialog$VolumePanelDelegate;,
        Lmiui/view/VolumeDialog$StreamState;,
        Lmiui/view/VolumeDialog$VolumeRow;,
        Lmiui/view/VolumeDialog$VolumeIconRes;,
        Lmiui/view/VolumeDialog$CustomDialog;,
        Lmiui/view/VolumeDialog$SafetyWarningDialog;,
        Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;,
        Lmiui/view/VolumeDialog$H;
    }
.end annotation


# static fields
.field private static final LAYOUT_TRANSITION_ANIMATION_DURATION:I = 0xc8

.field private static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field private static final STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final TAG:Ljava/lang/String; = "VolumeDialog"

.field private static final TYPE_FM:I = 0xa

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_DELAY:I = 0x12c

.field private static final VOLUME_ICON_TYPE_ALARM:I = 0x0

.field private static final VOLUME_ICON_TYPE_BLUETOOTH:I = 0x1

.field private static final VOLUME_ICON_TYPE_FM:I = 0x8

.field private static final VOLUME_ICON_TYPE_HEADSET:I = 0x2

.field private static final VOLUME_ICON_TYPE_HIFI:I = 0x7

.field private static final VOLUME_ICON_TYPE_MEDIA:I = 0x3

.field private static final VOLUME_ICON_TYPE_PHONE:I = 0x4

.field private static final VOLUME_ICON_TYPE_RING:I = 0x5

.field private static final VOLUME_ICON_TYPE_SPEAKER:I = 0x6

.field private static final sVolumeIconTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumeDialog$VolumeIconRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private mActiveStream:I

.field private final mAm:Landroid/media/AudioManager;

.field private mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClickExpand:Landroid/view/View$OnClickListener;

.field private mCollapseTime:J

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

.field private mDialog:Lmiui/view/VolumeDialog$CustomDialog;

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDialogShowTime:J

.field private mDialogView:Landroid/view/ViewGroup;

.field private mExpandAnimating:Z

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mExpanded:Z

.field private final mHandler:Lmiui/view/VolumeDialog$H;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInScreenshot:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/view/VolumeDialog$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Landroid/app/AlertDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mShowing:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeRowSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeRowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const v9, 0x1102003e

    const v8, 0x1102003d

    const v7, 0x1102003c

    const/4 v6, 0x0

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    .line 82
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020028

    const v4, 0x11020029

    const v5, 0x11020027

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102002d

    const v4, 0x1102002e

    const v5, 0x1102002c

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020035

    const v4, 0x11020036

    const v5, 0x11020034

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v2, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020043

    const v4, 0x11020044

    const v5, 0x11020042

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020047

    const v4, 0x1102004b

    const v5, 0x11020046

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x1102004e

    const v4, 0x1102004f

    const v5, 0x1102004d

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v0, "scorpio"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lithium"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    invoke-direct {v0, v8, v9, v7, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020031

    const v4, 0x11020032

    const v5, 0x11020030

    invoke-direct {v2, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void

    .line 103
    :cond_1
    new-instance v0, Lmiui/view/VolumeDialog$VolumeIconRes;

    const v3, 0x11020039

    const v4, 0x1102003a

    const v5, 0x11020038

    invoke-direct {v0, v3, v4, v5, v6}, Lmiui/view/VolumeDialog$VolumeIconRes;-><init>(IIILmiui/view/VolumeDialog$1;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/view/VolumeDialog$VolumePanelDelegate;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Lmiui/view/VolumeDialog$1;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$1;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 378
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 631
    new-instance v0, Lmiui/view/VolumeDialog$5;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$5;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    .line 768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    .line 769
    new-instance v0, Lmiui/view/VolumeDialog$6;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$6;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .line 119
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    .line 120
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    .line 122
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/view/VolumeDialog;->mBootBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VolumeDialog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandlerThread:Landroid/os/HandlerThread;

    .line 127
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v0, Lmiui/view/VolumeDialog$H;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$H;-><init>(Lmiui/view/VolumeDialog;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    .line 129
    return-void

    .line 280
    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0xa
    .end array-data
.end method

.method static synthetic access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    return-object v0
.end method

.method static synthetic access$1300(Lmiui/view/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    return v0
.end method

.method static synthetic access$1302(Lmiui/view/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    return p1
.end method

.method static synthetic access$1400(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    return-void
.end method

.method static synthetic access$2500(Lmiui/view/VolumeDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lmiui/view/VolumeDialog;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    return v0
.end method

.method static synthetic access$2800(Lmiui/view/VolumeDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    return-void
.end method

.method static synthetic access$2900(Lmiui/view/VolumeDialog;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$3000(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showH(I)V

    return-void
.end method

.method static synthetic access$3100(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->dismissH()V

    return-void
.end method

.method static synthetic access$3200(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3300(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    return-void
.end method

.method static synthetic access$3400(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    return-void
.end method

.method static synthetic access$3500(Lmiui/view/VolumeDialog;II)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/view/VolumeDialog;->stateChangedH(II)V

    return-void
.end method

.method static synthetic access$3600(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V

    return-void
.end method

.method static synthetic access$3700(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$3800(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->vibrateH()V

    return-void
.end method

.method static synthetic access$3902(Lmiui/view/VolumeDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/widget/SeekBar;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SeekBar;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lmiui/view/VolumeDialog;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4400(Lmiui/view/VolumeDialog;)J
    .locals 2
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-wide v0, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    return-wide v0
.end method

.method static synthetic access$4500(Lmiui/view/VolumeDialog;I)V
    .locals 0
    .param p0, "x0"    # Lmiui/view/VolumeDialog;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->streamDeviceChanged(I)V

    return-void
.end method

.method static synthetic access$4600(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$VolumePanelDelegate;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    return-object v0
.end method

.method static synthetic access$4700(Lmiui/view/VolumeDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4800(Lmiui/view/VolumeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRow(IIZ)V
    .locals 6
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/VolumeDialog;->initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v2

    .line 144
    .local v2, "row":Lmiui/view/VolumeDialog$VolumeRow;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x1020000

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 147
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x110a0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 148
    .local v0, "h":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v2, v3}, Lmiui/view/VolumeDialog$VolumeRow;->access$202(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 154
    .end local v0    # "h":I
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v4, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    const/16 v0, 0x1388

    .line 259
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private dismissH()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 387
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 388
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 390
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 394
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v0}, Lmiui/view/VolumeDialog$CustomDialog;->dismiss()V

    .line 396
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, v2}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private findRow(I)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 205
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 206
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 208
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getConservativeCollapseDuration()I
    .locals 1

    .prologue
    .line 410
    const/16 v0, 0x258

    return v0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 5
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "progress"    # I

    .prologue
    .line 699
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 700
    .local v1, "m":I
    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v2, v3, -0x1

    .line 701
    .local v2, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 703
    .local v0, "level":I
    :goto_0
    return v0

    .line 701
    .end local v0    # "level":I
    :cond_0
    if-ne p1, v1, :cond_1

    div-int/lit8 v0, v1, 0x64

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_0
.end method

.method private getMappedStream(I)I
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 274
    const/4 v0, 0x3

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method private initRow(IIZ)Lmiui/view/VolumeDialog$VolumeRow;
    .locals 4
    .param p1, "stream"    # I
    .param p2, "iconMapKey"    # I
    .param p3, "important"    # Z

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-direct {v0, v3}, Lmiui/view/VolumeDialog$VolumeRow;-><init>(Lmiui/view/VolumeDialog$1;)V

    .line 161
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v0, p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$502(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 162
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->access$602(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 163
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {v0, p2}, Lmiui/view/VolumeDialog$VolumeRow;->access$702(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 164
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v0, p3}, Lmiui/view/VolumeDialog$VolumeRow;->access$802(Lmiui/view/VolumeDialog$VolumeRow;Z)Z

    .line 165
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v1}, Lmiui/view/VolumeDialog$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x11030019

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 166
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SeekBar;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$902(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 168
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 169
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;

    invoke-direct {v2, p0, v3}, Lmiui/view/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$1;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 172
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmiui/view/VolumeDialog$2;

    invoke-direct {v2, p0, v0}, Lmiui/view/VolumeDialog$2;-><init>(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v1

    const v2, 0x110b003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1102(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 196
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v2

    sget-object v1, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v1, v1, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 197
    return-object v0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private orderVolumeRowsH()V
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 212
    const/4 v4, 0x0

    .line 213
    .local v4, "volumeRowIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 214
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 215
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 216
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/4 v3, 0x1

    .line 217
    .local v3, "viewShow":Z
    if-nez v0, :cond_0

    .line 218
    iget v6, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-direct {p0, v6}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v1

    .line 219
    if-nez v1, :cond_0

    .line 220
    const-string v6, "VolumeDialog"

    const-string v7, "terrible thing happens in orderVolumeRowsH"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    if-nez v1, :cond_1

    .line 224
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "volumeRowIdx":I
    .local v5, "volumeRowIdx":I
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 225
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    iget v7, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v6, v7, :cond_6

    .line 226
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 228
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :goto_1
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$800(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 229
    const/4 v3, 0x0

    .line 233
    :cond_1
    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_2
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 239
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {v1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->access$1202(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 240
    const v6, 0x110b003b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$1102(Lmiui/view/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 241
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v7

    sget-object v6, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/view/VolumeDialog$VolumeIconRes;

    iget v6, v6, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 242
    const v6, 0x110b003c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/SeekBar;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$902(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/widget/SeekBar;)Lmiui/widget/SeekBar;

    .line 243
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v1}, Lmiui/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 246
    if-lez v0, :cond_4

    .line 247
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$202(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 248
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mVolumeRowSpaces:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v3, :cond_3

    move v7, v8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 236
    :cond_2
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v7, v9

    .line 248
    goto :goto_3

    .line 250
    :cond_4
    const/4 v6, 0x0

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$202(Lmiui/view/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;

    goto :goto_4

    .line 253
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "viewShow":Z
    :cond_5
    return-void

    .end local v4    # "volumeRowIdx":I
    .restart local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "viewShow":Z
    .restart local v5    # "volumeRowIdx":I
    :cond_6
    move v4, v5

    .end local v5    # "volumeRowIdx":I
    .restart local v4    # "volumeRowIdx":I
    goto/16 :goto_1
.end method

.method private prepareForCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 420
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v0, v4}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    .line 422
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V

    .line 423
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 424
    return-void
.end method

.method private recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 3
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 483
    if-nez p1, :cond_0

    .line 484
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 485
    .local v1, "r":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 488
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 490
    :cond_1
    return-void
.end method

.method private rescheduleTimeoutH()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 477
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 478
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->computeTimeoutH()I

    move-result v0

    .line 479
    .local v0, "timeout":I
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 480
    return-void
.end method

.method private setExpandedH(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .prologue
    .line 427
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 428
    :cond_0
    iput-boolean p1, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 429
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->isAttached()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 430
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_1

    .line 431
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->prepareForCollapse()V

    .line 433
    :cond_1
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 434
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-eqz v0, :cond_2

    .line 435
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 437
    :cond_2
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    new-instance v1, Lmiui/view/VolumeDialog$3;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$3;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/view/VolumeDialog$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 444
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0
.end method

.method private showH(I)V
    .locals 11
    .param p1, "stream"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 295
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 296
    new-instance v2, Lmiui/view/VolumeDialog$CustomDialog;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lmiui/view/VolumeDialog$CustomDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    .line 298
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lmiui/view/VolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 299
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 300
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {v1, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 302
    const v2, 0x1040128

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 307
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2, v7}, Lmiui/view/VolumeDialog$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 308
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v3, 0x11030018

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$CustomDialog;->setContentView(I)V

    .line 309
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 310
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 311
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 312
    const/16 v2, 0x7e4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 313
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 314
    const-string v2, "Volume Control"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 316
    const v2, 0x110c0003

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 317
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 318
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 320
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v3, 0x110b0037

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    .line 321
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    const v3, 0x110b0039

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    .line 322
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x110b0038

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    .line 323
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mClickExpand:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 326
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 327
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lmiui/view/VolumeDialog;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 329
    const/4 v2, 0x5

    invoke-direct {p0, v8, v2, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 330
    invoke-direct {p0, v10, v10, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 331
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6, v7}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 332
    const/4 v2, 0x4

    invoke-direct {p0, v6, v2, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 333
    const/4 v2, 0x6

    invoke-direct {p0, v2, v7, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 334
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 335
    const/16 v2, 0xa

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v6}, Lmiui/view/VolumeDialog;->addRow(IIZ)V

    .line 340
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 341
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    const v3, 0x110200cf

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 342
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 343
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v2, :cond_1

    .line 345
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    :cond_1
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    const-string v2, "VolumeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result p1

    .line 352
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v7}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 353
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    invoke-virtual {v2, v8}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 354
    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-eq v2, p1, :cond_3

    .line 355
    :cond_2
    iput p1, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    .line 356
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->orderVolumeRowsH()V

    .line 358
    :cond_3
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    .line 359
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateVolumeRowsH()V

    .line 361
    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mInScreenshot:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v2, :cond_6

    .line 362
    :cond_4
    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v2, :cond_5

    .line 363
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 364
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 377
    :cond_5
    :goto_0
    return-void

    .line 369
    :cond_6
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    .line 370
    iput-boolean v6, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    .line 371
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateExpandButtonH()V

    .line 372
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->updateRowsVisibilityByExpandH()V

    .line 373
    iput-boolean v7, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/view/VolumeDialog;->mDialogShowTime:J

    .line 375
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDialog:Lmiui/view/VolumeDialog$CustomDialog;

    invoke-virtual {v2}, Lmiui/view/VolumeDialog$CustomDialog;->show()V

    .line 376
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v2, v7}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->notifyVolumeControllerVisible(Z)V

    goto :goto_0
.end method

.method private showSafetyWarningH(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v0, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->showSafeVolumeDialogByFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v0, :cond_2

    .line 612
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 614
    monitor-exit v1

    .line 629
    :goto_0
    return-void

    .line 616
    :cond_1
    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v2, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    .line 617
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 618
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;

    new-instance v2, Lmiui/view/VolumeDialog$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumeDialog$4;-><init>(Lmiui/view/VolumeDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 626
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :cond_2
    invoke-direct {p0}, Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stateChangedH(II)V
    .locals 4
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->getMappedStream(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v0

    .line 265
    .local v0, "row":Lmiui/view/VolumeDialog$VolumeRow;
    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0, v0}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "VolumeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stateChangedH can not find volume row for stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private streamDeviceChanged(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lmiui/view/VolumeDialog;->findRow(I)Lmiui/view/VolumeDialog$VolumeRow;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 795
    return-void
.end method

.method private updateDialogBottomMarginH()V
    .locals 10

    .prologue
    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    sub-long v2, v6, v8

    .line 401
    .local v2, "diff":J
    iget-wide v6, p0, Lmiui/view/VolumeDialog;->mCollapseTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lmiui/view/VolumeDialog;->getConservativeCollapseDuration()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const/4 v0, 0x1

    .line 402
    .local v0, "collapsing":Z
    :goto_0
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 403
    .local v1, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 404
    .local v5, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 405
    .local v4, "height":I
    :goto_1
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 406
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    return-void

    .line 401
    .end local v0    # "collapsing":Z
    .end local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .end local v4    # "height":I
    .end local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    .restart local v0    # "collapsing":Z
    .restart local v1    # "dialogParentView":Landroid/view/ViewGroup;
    .restart local v5    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v4, -0x2

    goto :goto_1
.end method

.method private updateExpandButtonH()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget v0, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 415
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v0, :cond_2

    const v0, 0x110200ce

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 416
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mExpandButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lmiui/view/VolumeDialog;->mExpandAnimating:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 417
    return-void

    :cond_1
    move v0, v1

    .line 414
    goto :goto_0

    .line 415
    :cond_2
    const v0, 0x110200d0

    goto :goto_1
.end method

.method private updateLayoutDirectionH(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 468
    :cond_0
    return-void
.end method

.method private updateRowsVisibilityByExpandH()V
    .locals 6

    .prologue
    .line 448
    iget-object v3, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 449
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    const/16 v2, 0x8

    .line 450
    .local v2, "visibility":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v3

    iget v4, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v3, v4, :cond_2

    .line 451
    const/4 v2, 0x0

    .line 455
    :cond_1
    :goto_1
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 456
    const-string v3, "VolumeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRowsVisibilityByExpandH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$200(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 459
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->space:Landroid/view/View;
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$200(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 452
    :cond_2
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->important:Z
    invoke-static {v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$800(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    iget-boolean v3, p0, Lmiui/view/VolumeDialog;->mExpanded:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_2
    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    .line 462
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    .end local v2    # "visibility":I
    :cond_4
    return-void
.end method

.method private updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V
    .locals 14
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;

    .prologue
    .line 493
    iget-object v10, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v11

    iget-object v12, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-static {v10, v11, v12}, Lmiui/view/VolumeDialog$StreamState;->getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v8

    .line 494
    .local v8, "ss":Lmiui/view/VolumeDialog$StreamState;
    if-nez v8, :cond_0

    .line 554
    :goto_0
    return-void

    .line 495
    :cond_0
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {p1, v8}, Lmiui/view/VolumeDialog$VolumeRow;->access$1502(Lmiui/view/VolumeDialog$VolumeRow;Lmiui/view/VolumeDialog$StreamState;)Lmiui/view/VolumeDialog$StreamState;

    .line 496
    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v8}, Lmiui/view/VolumeDialog$StreamState;->access$1600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v10

    if-lez v10, :cond_1

    .line 497
    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v8}, Lmiui/view/VolumeDialog$StreamState;->access$1600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v10

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->lastLevel:I
    invoke-static {p1, v10}, Lmiui/view/VolumeDialog$VolumeRow;->access$1702(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 499
    :cond_1
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    const/4 v5, 0x1

    .line 500
    .local v5, "isRingStream":Z
    :goto_1
    if-eqz v5, :cond_c

    iget-object v10, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v10}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const/4 v6, 0x1

    .line 502
    .local v6, "isRingVibrate":Z
    :goto_2
    if-eqz v5, :cond_d

    iget-object v10, p0, Lmiui/view/VolumeDialog;->mDelegate:Lmiui/view/VolumeDialog$VolumePanelDelegate;

    invoke-interface {v10}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getRingerMode()I

    move-result v10

    if-nez v10, :cond_d

    const/4 v4, 0x1

    .line 506
    .local v4, "isRingSilent":Z
    :goto_3
    # getter for: Lmiui/view/VolumeDialog$StreamState;->levelMax:I
    invoke-static {v8}, Lmiui/view/VolumeDialog$StreamState;->access$1800(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v10

    mul-int/lit8 v7, v10, 0x64

    .line 507
    .local v7, "max":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10}, Lmiui/widget/SeekBar;->getMax()I

    move-result v10

    if-eq v7, v10, :cond_2

    .line 508
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v10

    invoke-virtual {v10, v7}, Lmiui/widget/SeekBar;->setMax(I)V

    .line 511
    :cond_2
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->initIconsMapKey:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$700(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v2

    .line 513
    .local v2, "iconsMapKey":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    iget v11, p0, Lmiui/view/VolumeDialog;->mActiveStream:I

    if-ne v10, v11, :cond_8

    .line 514
    iget-object v10, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 516
    .local v0, "device":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 517
    const/4 v2, 0x6

    .line 521
    :cond_3
    and-int/lit8 v10, v0, 0x4

    if-nez v10, :cond_4

    and-int/lit8 v10, v0, 0x8

    if-eqz v10, :cond_5

    .line 523
    :cond_4
    const/4 v2, 0x2

    .line 527
    :cond_5
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 528
    const/4 v2, 0x7

    .line 532
    :cond_6
    and-int/lit16 v10, v0, 0x80

    if-nez v10, :cond_7

    and-int/lit16 v10, v0, 0x100

    if-nez v10, :cond_7

    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    .line 535
    :cond_7
    const/4 v2, 0x1

    .line 538
    .end local v0    # "device":I
    :cond_8
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->iconsMapKey:I
    invoke-static {p1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$602(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 541
    # getter for: Lmiui/view/VolumeDialog$StreamState;->muted:Z
    invoke-static {v8}, Lmiui/view/VolumeDialog$StreamState;->access$1900(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_e

    # getter for: Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z
    invoke-static {v8}, Lmiui/view/VolumeDialog$StreamState;->access$2000(Lmiui/view/VolumeDialog$StreamState;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v9, 0x1

    .line 542
    .local v9, "streamMuted":Z
    :goto_4
    sget-object v10, Lmiui/view/VolumeDialog;->sVolumeIconTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeIconRes;

    .line 543
    .local v3, "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    if-eqz v9, :cond_f

    iget v1, v3, Lmiui/view/VolumeDialog$VolumeIconRes;->mutedIconRes:I

    .line 544
    .local v1, "iconRes":I
    :goto_5
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1200(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    if-eq v1, v10, :cond_a

    .line 545
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1200(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v6, :cond_9

    .line 546
    iget-object v10, p0, Lmiui/view/VolumeDialog;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v12, 0x32

    invoke-virtual {v10, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 548
    :cond_9
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->cachedIconRes:I
    invoke-static {p1, v1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1202(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 549
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1100(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 551
    :cond_a
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v11

    if-nez v9, :cond_10

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v11, v10}, Lmiui/widget/SeekBar;->setEnabled(Z)V

    .line 553
    if-eqz v9, :cond_11

    iget-object v10, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v10

    :goto_7
    invoke-direct {p0, p1, v10}, Lmiui/view/VolumeDialog;->updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V

    goto/16 :goto_0

    .line 499
    .end local v1    # "iconRes":I
    .end local v2    # "iconsMapKey":I
    .end local v3    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    .end local v4    # "isRingSilent":Z
    .end local v5    # "isRingStream":Z
    .end local v6    # "isRingVibrate":Z
    .end local v7    # "max":I
    .end local v9    # "streamMuted":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 500
    .restart local v5    # "isRingStream":Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 502
    .restart local v6    # "isRingVibrate":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 541
    .restart local v2    # "iconsMapKey":I
    .restart local v4    # "isRingSilent":Z
    .restart local v7    # "max":I
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    .line 543
    .restart local v3    # "iconsRes":Lmiui/view/VolumeDialog$VolumeIconRes;
    .restart local v9    # "streamMuted":Z
    :cond_f
    iget v1, v3, Lmiui/view/VolumeDialog$VolumeIconRes;->normalIconRes:I

    goto :goto_5

    .line 551
    .restart local v1    # "iconRes":I
    :cond_10
    const/4 v10, 0x0

    goto :goto_6

    .line 553
    :cond_11
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->ss:Lmiui/view/VolumeDialog$StreamState;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$1500(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/view/VolumeDialog$StreamState;

    move-result-object v10

    # getter for: Lmiui/view/VolumeDialog$StreamState;->level:I
    invoke-static {v10}, Lmiui/view/VolumeDialog$StreamState;->access$1600(Lmiui/view/VolumeDialog$StreamState;)I

    move-result v10

    goto :goto_7
.end method

.method private updateVolumeRowSliderH(Lmiui/view/VolumeDialog$VolumeRow;I)V
    .locals 12
    .param p1, "row"    # Lmiui/view/VolumeDialog$VolumeRow;
    .param p2, "vlevel"    # I

    .prologue
    .line 557
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2100(Lmiui/view/VolumeDialog$VolumeRow;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const-string v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolumeRowSliderH start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v3

    .line 563
    .local v3, "progress":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-static {v6, v3}, Lmiui/view/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 564
    .local v1, "level":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->view:Landroid/view/View;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    .line 565
    .local v4, "rowVisible":Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2200(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    const/4 v0, 0x1

    .line 567
    .local v0, "inGracePeriod":Z
    :goto_2
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Lmiui/view/VolumeDialog$H;->removeMessages(ILjava/lang/Object;)V

    .line 568
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 569
    iget-object v6, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    iget-object v7, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, p1}, Lmiui/view/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2200(Lmiui/view/VolumeDialog$VolumeRow;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lmiui/view/VolumeDialog$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 564
    .end local v0    # "inGracePeriod":Z
    .end local v4    # "rowVisible":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 565
    .restart local v4    # "rowVisible":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 573
    .restart local v0    # "inGracePeriod":Z
    :cond_4
    if-ne p2, v1, :cond_5

    .line 574
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_5

    if-nez v4, :cond_0

    .line 578
    :cond_5
    mul-int/lit8 v2, p2, 0x64

    .line 579
    .local v2, "newProgress":I
    if-eq v3, v2, :cond_0

    .line 580
    iget-boolean v6, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 582
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_6

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2400(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v6

    if-eq v6, v2, :cond_0

    .line 587
    :cond_6
    move v5, v3

    .line 588
    .local v5, "startProgress":I
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 589
    const-string v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolumeRowSliderH cancel animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->stream:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$500(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 591
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2400(Lmiui/view/VolumeDialog$VolumeRow;)I

    move-result v5

    .line 593
    :cond_7
    const-string v6, "VolumeDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateVolumeRowSliderH animation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    const-string v7, "progress"

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1, v6}, Lmiui/view/VolumeDialog$VolumeRow;->access$2302(Lmiui/view/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 595
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    # setter for: Lmiui/view/VolumeDialog$VolumeRow;->animTargetProgress:I
    invoke-static {p1, v2}, Lmiui/view/VolumeDialog$VolumeRow;->access$2402(Lmiui/view/VolumeDialog$VolumeRow;I)I

    .line 598
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x50

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 602
    .end local v5    # "startProgress":I
    :cond_8
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 603
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$2300(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 605
    :cond_9
    # getter for: Lmiui/view/VolumeDialog$VolumeRow;->slider:Lmiui/widget/SeekBar;
    invoke-static {p1}, Lmiui/view/VolumeDialog$VolumeRow;->access$900(Lmiui/view/VolumeDialog$VolumeRow;)Lmiui/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0
.end method

.method private updateVolumeRowsH()V
    .locals 3

    .prologue
    .line 471
    iget-object v2, p0, Lmiui/view/VolumeDialog;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumeDialog$VolumeRow;

    .line 472
    .local v1, "row":Lmiui/view/VolumeDialog$VolumeRow;
    invoke-direct {p0, v1}, Lmiui/view/VolumeDialog;->updateVolumeRowH(Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 474
    .end local v1    # "row":Lmiui/view/VolumeDialog$VolumeRow;
    :cond_0
    return-void
.end method

.method private vibrateH()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lmiui/view/VolumeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 382
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 383
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 984
    return-void
.end method

.method public dismiss(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 987
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 988
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Lmiui/view/VolumeDialog;->mShowing:Z

    return v0
.end method

.method public masterMuteChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1011
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1008
    return-void
.end method

.method public show(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 980
    return-void
.end method

.method public showSafeWarningDialog(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1001
    return-void
.end method

.method public stateChanged(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mAm:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/view/VolumeDialog;->stateChanged(II)V

    .line 992
    return-void
.end method

.method public stateChanged(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 995
    const-string v0, "VolumeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 997
    return-void
.end method

.method public updateLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1004
    iget-object v0, p0, Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/view/VolumeDialog$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1005
    return-void
.end method
