.class public Lcom/android/server/MiuiInputFilter;
.super Landroid/view/InputFilter;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiInputFilter$ClickableRect;,
        Lcom/android/server/MiuiInputFilter$H;,
        Lcom/android/server/MiuiInputFilter$KeyData;
    }
.end annotation


# static fields
.field static ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final GESTURE_DETECT_FAIL_ALERT_INTERVAL:I = 0x1388

.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static MIDDLE_KEYCODE:I = 0x0

.field static NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final PERSIST_SYS_HANDSWAP_PROPERTY:Ljava/lang/String; = "persist.sys.handswap"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4

.field private static isDpadDevice:Z

.field private static sEdgeDistance:F

.field private static sThreeGestureThreshold:I


# instance fields
.field private mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/MiuiInputFilter$H;

.field private mInitMotionY:[F

.field private mInstalled:Z

.field private mOutsideClickableRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$ClickableRect;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MiuiInputFilter$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIds:[I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mThreeGestureState:I

.field private mWasInside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x52

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const-string v0, "middle_keycode_is_dpad_center"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    .line 42
    sget-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    :goto_0
    sput v0, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    .line 55
    new-array v0, v5, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 61
    new-array v0, v6, [[I

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v6, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [I

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v3

    aput v7, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    aput v6, v1, v3

    sget v2, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [I

    aput v7, v2, v3

    sget v3, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    .line 84
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    .line 85
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    .line 128
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/MiuiInputFilter$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiInputFilter$H;-><init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    .line 131
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    .line 132
    const/high16 v0, 0x43160000    # 150.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/server/MiuiInputFilter;->sThreeGestureThreshold:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MiuiInputFilter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/MiuiInputFilter;->setIsShowThreeGestureAlert(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MiuiInputFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MiuiInputFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MiuiInputFilter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->gotoScreenshotSetting()V

    return-void
.end method

.method private changeThreeGestureState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    .line 385
    return-void
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
    const/4 v1, 0x1

    .line 370
    .local v1, "maxY":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 371
    .local v2, "minY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 373
    .local v3, "y":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v3    # "y":F
    :cond_0
    sub-float v4, v1, v2

    iget-object v5, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 377
    const/4 v4, 0x0

    .line 380
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 446
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 447
    .local v0, "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    iget-object v2, v0, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    .end local v0    # "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    .line 465
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 467
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 468
    if-eqz v2, :cond_0

    .line 469
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 473
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 464
    goto :goto_0

    .line 475
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 479
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    .line 480
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 482
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 483
    if-eqz v2, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 488
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    move v1, v3

    .line 479
    goto :goto_0

    .line 490
    .restart local v0    # "i":I
    .restart local v1    # "oldSize":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private gotoScreenshotSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "settingIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.display.ScreenshotFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 422
    return-void
.end method

.method private isShowThreeGestureAlert()Z
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_show_three_gesture_alert"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private isThreeGestureScreenshotEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "three_gesture_screenshot"

    invoke-static {v0, v1, v2, v2}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private isTouchInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 455
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchInsideOrEdge(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 459
    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needDelayKey(Z)Z
    .locals 1
    .param p1, "isSecondKey"    # Z

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needShowDialog()Z
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 507
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 508
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 511
    :cond_2
    const/4 v9, 0x0

    .line 512
    .local v9, "needDelay":Z
    const/4 v10, 0x0

    .line 513
    .local v10, "needTrigger":Z
    const/4 v7, 0x0

    .line 514
    .local v7, "isSecondKey":Z
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    :cond_3
    :goto_1
    if-nez v9, :cond_4

    .line 570
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 573
    :cond_4
    if-eqz v10, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->triggerCombinationClick()V

    .line 575
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    .end local v7    # "isSecondKey":Z
    .end local v9    # "needDelay":Z
    .end local v10    # "needTrigger":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 516
    .restart local v7    # "isSecondKey":Z
    .restart local v9    # "needDelay":Z
    .restart local v10    # "needTrigger":Z
    :pswitch_0
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkKeyNeedListen(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 519
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v9, :cond_5

    :goto_2
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_1

    :cond_5
    move v5, v2

    goto :goto_2

    .line 524
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v0, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v1, v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 528
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 529
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v9, :cond_8

    :goto_3
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_1

    :cond_8
    move v5, v2

    goto :goto_3

    .line 531
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto :goto_1

    .line 537
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v6, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 538
    .local v6, "firstKeyEvent":Landroid/view/KeyEvent;
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v8, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 539
    .local v8, "lastKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 546
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v9

    .line 547
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    :goto_4
    const/4 v4, 0x1

    if-nez v9, :cond_d

    :goto_5
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1

    :cond_c
    move v3, v5

    goto :goto_4

    :cond_d
    move v5, v2

    goto :goto_5

    .line 550
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    goto/16 :goto_1

    .line 556
    .end local v6    # "firstKeyEvent":Landroid/view/KeyEvent;
    .end local v8    # "lastKeyEvent":Landroid/view/KeyEvent;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v11, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 557
    .local v11, "pendingKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 559
    const/4 v10, 0x1

    .line 560
    const/4 v9, 0x1

    .line 561
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v9, :cond_f

    :goto_6
    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_1

    :cond_f
    move v5, v2

    goto :goto_6

    .line 563
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 183
    .local v0, "consumed":Z
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method static processCoordinate(FFFF)F
    .locals 1
    .param p0, "coordValue"    # F
    .param p1, "offset"    # F
    .param p2, "scale"    # F
    .param p3, "scalePivot"    # F

    .prologue
    .line 178
    sub-float v0, p3, p0

    mul-float/2addr v0, p2

    sub-float v0, p3, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 206
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v21

    .line 207
    .local v21, "mode":I
    if-eqz v21, :cond_9

    .line 208
    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/server/HandyMode;->sScale:F

    div-float v23, v4, v5

    .line 210
    .local v23, "scaleInverse":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 211
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 212
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 213
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v9, :cond_1

    .line 214
    aget-object v4, v11, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 216
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_0

    sget v4, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v4

    move/from16 v24, v0

    .line 217
    .local v24, "xPivot":F
    :goto_1
    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 219
    sget v4, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v4

    move/from16 v25, v0

    .line 220
    .local v25, "yPivot":F
    aget-object v4, v11, v20

    aget-object v5, v11, v20

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 222
    aget-object v4, v10, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 213
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 216
    .end local v24    # "xPivot":F
    .end local v25    # "yPivot":F
    :cond_0
    const/16 v24, 0x0

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 239
    .local v22, "newEvent":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    if-ne v9, v4, :cond_8

    .line 240
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 242
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 246
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInside(FF)Z

    move-result v4

    if-nez v4, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 251
    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v4, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v4, v4, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_4
    :goto_2
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    .line 276
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    .end local v22    # "newEvent":Landroid/view/MotionEvent;
    .end local v23    # "scaleInverse":F
    :goto_3
    return-void

    .line 254
    .restart local v9    # "pointerCount":I
    .restart local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "i":I
    .restart local v22    # "newEvent":Landroid/view/MotionEvent;
    .restart local v23    # "scaleInverse":F
    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/MiuiInputFilter;->isTouchInsideOrEdge(FF)Z

    move-result v4

    if-nez v4, :cond_4

    .line 255
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_2

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v4, :cond_7

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 260
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 262
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 263
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 264
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_2

    .line 267
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 268
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 269
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_2

    .line 274
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    .end local v22    # "newEvent":Landroid/view/MotionEvent;
    .end local v23    # "scaleInverse":F
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_3
.end method

.method private processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;I)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->isThreeGestureScreenshotEnabled()Z

    move-result v24

    .line 280
    .local v24, "isGestureEnabled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->isShowThreeGestureAlert()Z

    move-result v25

    .line 281
    .local v25, "isShowThreeGestureAlert":Z
    if-nez v25, :cond_1

    if-nez v24, :cond_1

    .line 282
    const/16 v24, 0x0

    .line 364
    .end local v24    # "isGestureEnabled":Z
    :cond_0
    :goto_0
    return v24

    .line 285
    .restart local v24    # "isGestureEnabled":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 286
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 324
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 325
    const/16 v24, 0x0

    goto :goto_0

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 288
    invoke-direct/range {p0 .. p1}, Lcom/android/server/MiuiInputFilter;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 289
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto :goto_1

    .line 291
    :cond_4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 292
    if-eqz v24, :cond_6

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v27

    .line 294
    .local v27, "pointerCount":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 295
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 296
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 297
    aget-object v4, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 298
    aget-object v4, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 296
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 300
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x3

    add-int/lit8 v9, v27, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 314
    .local v20, "cancelEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 317
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v22    # "i":I
    .end local v27    # "pointerCount":I
    :cond_6
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v4, v22

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v22

    .line 317
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 328
    .end local v22    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    if-eqz v4, :cond_d

    .line 329
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/MiuiInputFilter;->mThreeGestureState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    .line 334
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto/16 :goto_0

    .line 337
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 339
    :pswitch_0
    const/16 v21, 0x0

    .line 340
    .local v21, "distance":F
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ge v0, v4, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mPointerIds:[I

    aget v4, v4, v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 342
    .local v23, "index":I
    if-ltz v23, :cond_9

    const/4 v4, 0x3

    move/from16 v0, v23

    if-lt v0, v4, :cond_a

    .line 343
    :cond_9
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    goto/16 :goto_0

    .line 346
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MiuiInputFilter;->mInitMotionY:[F

    aget v5, v5, v22

    sub-float/2addr v4, v5

    add-float v21, v21, v4

    .line 340
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 348
    .end local v23    # "index":I
    :cond_b
    sget v4, Lcom/android/server/MiuiInputFilter;->sThreeGestureThreshold:I

    int-to-float v4, v4

    cmpl-float v4, v21, v4

    if-ltz v4, :cond_0

    .line 349
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/MiuiInputFilter;->changeThreeGestureState(I)V

    .line 350
    if-eqz v24, :cond_c

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->takeScreenshot()V

    goto/16 :goto_0

    .line 353
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/KeyguardManager;

    .line 354
    .local v26, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v26 .. v26}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_0

    .line 355
    #invoke-direct/range {p0 .. p0}, Lcom/android/server/MiuiInputFilter;->showGestureDetectAlert()V

    goto/16 :goto_0

    .line 364
    .end local v21    # "distance":F
    .end local v22    # "i":I
    .end local v26    # "km":Landroid/app/KeyguardManager;
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v5, "count_event"

    .line 431
    .local v5, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v4, "com.miui.gallery"

    .line 432
    .local v4, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v0, "com.miui.gallery.intent.action.SEND_STAT"

    .line 433
    .local v0, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string v3, "stat_type"

    .line 434
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v1, "category"

    .line 435
    .local v1, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v2, "event"

    .line 437
    .local v2, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method private setIsShowThreeGestureAlert(Z)V
    .locals 3
    .param p1, "val"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_show_three_gesture_alert"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 203
    return-void
.end method

.method private showGestureDetectAlert()V
    .locals 5

    .prologue
    .line 388
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const v4, 0x1107009f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1107009c

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1107009d

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1107009e

    new-instance v3, Lcom/android/server/MiuiInputFilter$2;

    invoke-direct {v3, p0}, Lcom/android/server/MiuiInputFilter$2;-><init>(Lcom/android/server/MiuiInputFilter;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/MiuiInputFilter$1;

    invoke-direct {v2, p0}, Lcom/android/server/MiuiInputFilter$1;-><init>(Lcom/android/server/MiuiInputFilter;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    .line 409
    .local v0, "dlg":Lmiui/app/AlertDialog;
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 410
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 411
    return-void
.end method

.method private takeScreenshot()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    const-string v1, "screenshot"

    const-string v2, "threefingers"

    invoke-static {v0, v1, v2}, Lcom/android/server/MiuiInputFilter;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method


# virtual methods
.method public addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    invoke-direct {v1, p1, p2}, Lcom/android/server/MiuiInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method declared-synchronized addPendingData(Landroid/view/KeyEvent;IIZZ)V
    .locals 6
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "index"    # I
    .param p4, "delayEnhance"    # Z
    .param p5, "isSended"    # Z

    .prologue
    const/4 v1, 0x1

    .line 643
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 645
    new-instance v0, Lcom/android/server/MiuiInputFilter$KeyData;

    invoke-direct {v0}, Lcom/android/server/MiuiInputFilter$KeyData;-><init>()V

    .line 646
    .local v0, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iput-object p1, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 647
    iput p2, v0, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    .line 648
    iput-boolean p5, v0, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    .line 649
    if-gez p3, :cond_1

    .line 650
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v3, 0x1

    sget v4, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    if-eqz p4, :cond_0

    const/4 v1, 0x2

    :cond_0
    mul-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/MiuiInputFilter$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    monitor-exit p0

    return-void

    .line 652
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    .end local v0    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method checkKeyNeedListen(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v2

    .line 581
    .local v2, "listenCombinationKeys":[[I
    array-length v0, v2

    .line 582
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 583
    aget-object v4, v2, v1

    aget v4, v4, v3

    if-ne v4, p1, :cond_1

    .line 584
    const/4 v3, 0x1

    .line 587
    :cond_0
    return v3

    .line 582
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method checkSecondKey(I)Z
    .locals 8
    .param p1, "secondKeyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v4

    .line 600
    .local v4, "listenCombinationKeys":[[I
    iget-object v5, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v5, v5, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 601
    .local v1, "firstKeyCode":I
    array-length v0, v4

    .line 602
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 603
    aget-object v3, v4, v2

    .line 604
    .local v3, "keySequence":[I
    aget v5, v3, v7

    if-ne v5, v1, :cond_0

    aget v5, v3, v6

    if-ne v5, p1, :cond_0

    move v5, v6

    .line 608
    .end local v3    # "keySequence":[I
    :goto_1
    return v5

    .line 602
    .restart local v3    # "keySequence":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "keySequence":[I
    :cond_1
    move v5, v7

    .line 608
    goto :goto_1
.end method

.method declared-synchronized clearPendingList()V
    .locals 2

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 661
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized flushPending()V
    .locals 4

    .prologue
    .line 633
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$KeyData;

    .line 635
    .local v1, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iget-boolean v2, v1, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    if-nez v2, :cond_0

    .line 636
    iget-object v3, v1, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MiuiInputFilter$KeyData;

    iget v2, v2, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    .end local v1    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 633
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getListenCombinationKeys()[[I
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 594
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    return v0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 149
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 159
    :goto_0
    return-void

    .line 152
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_1

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Landroid/view/KeyEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 158
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 165
    return-void
.end method

.method public onUninstalled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 170
    iput-boolean v1, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 171
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v1}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V

    .line 175
    return-void
.end method

.method public removeOutsideClickableRect(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v1, v1, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 145
    :cond_1
    return-void
.end method

.method declared-synchronized triggerCombinationClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 612
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_buttons_state"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    :goto_0
    monitor-exit p0

    return-void

    .line 615
    :cond_0
    :try_start_1
    const-string v3, "persist.sys.handswap"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "handswap":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 618
    .local v1, "keyDirectionExchanged":Z
    const/4 v2, 0x0

    .line 619
    .local v2, "newMode":I
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3

    .line 620
    if-eqz v1, :cond_2

    move v2, v4

    .line 625
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 626
    invoke-static {v2}, Lcom/android/server/HandyMode;->alertToEnter(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 612
    .end local v0    # "handswap":Ljava/lang/String;
    .end local v1    # "keyDirectionExchanged":Z
    .end local v2    # "newMode":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "handswap":Ljava/lang/String;
    .restart local v1    # "keyDirectionExchanged":Z
    .restart local v2    # "newMode":I
    :cond_2
    move v2, v5

    .line 620
    goto :goto_1

    .line 621
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v6, 0x52

    if-ne v3, v6, :cond_1

    .line 622
    if-eqz v1, :cond_4

    move v2, v5

    :goto_2
    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 628
    :cond_5
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
