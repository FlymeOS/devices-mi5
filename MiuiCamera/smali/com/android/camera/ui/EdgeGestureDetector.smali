.class public Lcom/android/camera/ui/EdgeGestureDetector;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;,
        Lcom/android/camera/ui/EdgeGestureDetector$PointerState;,
        Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TAP_TO_TOUCH_TIME:I

.field private final TOUCH_SLOP_SQUARE:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

.field private mLastTapEvent:J

.field private mMaxNumPointers:I

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/EdgeGestureDetector$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

    .prologue
    const v2, 0x4285570a    # 66.67f

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "edgetouch_slop_quare"

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TOUCH_SLOP_SQUARE:I

    .line 17
    const-string v0, "tap_timeout"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TIMEOUT:I

    .line 18
    const-string v0, "tap_to_touch_min_time"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TO_TOUCH_TIME:I

    .line 23
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mPrintCoords:Z

    .line 25
    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    invoke-direct {v0}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mText:Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

    .line 31
    return-void
.end method

.method private detectMoving(FFLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V
    .locals 10
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "ps"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    const/4 v9, 0x1

    .line 34
    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z
    invoke-static {p3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$000(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F
    invoke-static {p3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$100(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F

    move-result v3

    sub-float v3, p1, v3

    float-to-int v0, v3

    .line 36
    .local v0, "deltaX":I
    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F
    invoke-static {p3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$200(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F

    move-result v3

    sub-float v3, p2, v3

    float-to-int v1, v3

    .line 37
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int v2, v3, v4

    .line 38
    .local v2, "distance":I
    iget v3, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TOUCH_SLOP_SQUARE:I

    if-le v2, v3, :cond_0

    .line 39
    const-string v3, "EdgeGestureDetector"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "detectMoving success currentX=%f currentY=%f distance=%d ps=%s TOUCH_SLOP_SQUARE=%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    const/4 v7, 0x4

    iget v8, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TOUCH_SLOP_SQUARE:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z
    invoke-static {p3, v9}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$002(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    goto :goto_0
.end method

.method private detectTap(FFJLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V
    .locals 7
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "upTime"    # J
    .param p5, "ps"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 52
    const-string v0, "EdgeGestureDetector"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "detectTap currentX=%f currentY=%f upTime=%d ps=%s TAP_TIMEOUT=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TIMEOUT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z
    invoke-static {p5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$300(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z
    invoke-static {p5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$000(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z
    invoke-static {p5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$400(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J
    invoke-static {p5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$500(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)J

    move-result-wide v2

    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TIMEOUT:I

    int-to-long v4, v0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const-string v0, "EdgeGestureDetector"

    const-string v1, "detectTap sucess"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;->onEdgeTap(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput-wide p3, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mLastTapEvent:J

    .line 63
    :cond_0
    return-void
.end method

.method private detectTouch(FFJLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V
    .locals 9
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "eventTime"    # J
    .param p5, "ps"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 66
    const-string v0, "EdgeGestureDetector"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "detectTouch currentX=%f currentY=%f ps=%s eventTime=%d mLastTapEvent=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v6, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mLastTapEvent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z
    invoke-static {p5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$400(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mLastTapEvent:J

    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->TAP_TO_TOUCH_TIME:I

    int-to-long v4, v0

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mEdgeGestureListener:Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;->onEdgeTouch(II)Z

    move-result v0

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z
    invoke-static {p5, v0}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$302(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 73
    :cond_0
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 180
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 182
    .local v2, "buttonState":I
    and-int/lit16 v5, p2, 0xff

    packed-switch v5, :pswitch_data_0

    .line 227
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "prefix":Ljava/lang/String;
    :goto_0
    const-string v5, "EdgeGestureDetector"

    iget-object v6, p0, Lcom/android/camera/ui/EdgeGestureDetector;->mText:Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    invoke-virtual {v6}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->clear()Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " id "

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    add-int/lit8 v7, p5, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(I)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ") Pressure="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Size="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " TouchMajor="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " TouchMinor="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolMajor="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolMinor="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Orientation="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Tilt="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x19

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Distance="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x18

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " VScroll="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " HScroll="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " BoundingBox=[("

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x21

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", ("

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x23

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(FI)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolType="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ButtonState="

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/EdgeGestureDetector$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 184
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string v3, "DOWN"

    .line 185
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string v3, "UP"

    .line 188
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 190
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string v3, "MOVE"

    .line 191
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 193
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string v3, "CANCEL"

    .line 194
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 196
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_4
    const-string v3, "OUTSIDE"

    .line 197
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 199
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_5
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_0

    .line 201
    const-string v3, "DOWN"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 203
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v3, "MOVE"

    .line 205
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 207
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_6
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_1

    .line 209
    const-string v3, "UP"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 211
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v3, "MOVE"

    .line 213
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 215
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string v3, "HOVER MOVE"

    .line 216
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 218
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string v3, "HOVER ENTER"

    .line 219
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 221
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string v3, "HOVER EXIT"

    .line 222
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 224
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string v3, "SCROLL"

    .line 225
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 77
    .local v11, "action":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 79
    .local v17, "NP":I
    if-eqz v11, :cond_0

    and-int/lit16 v3, v11, 0xff

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 81
    :cond_0
    const v3, 0xff00

    and-int/2addr v3, v11

    shr-int/lit8 v19, v3, 0x8

    .line 83
    .local v19, "index":I
    if-nez v11, :cond_2

    .line 84
    const/16 v20, 0x0

    .local v20, "p":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .line 86
    .local v8, "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    const/4 v3, 0x0

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$402(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 84
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 88
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurDown:Z

    .line 89
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    .line 90
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mMaxNumPointers:I

    .line 93
    .end local v20    # "p":I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    .line 94
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    if-ge v3, v4, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mMaxNumPointers:I

    .line 98
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 99
    .local v14, "id":I
    :goto_1
    move/from16 v0, v17

    if-gt v0, v14, :cond_4

    .line 100
    new-instance v8, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    invoke-direct {v8}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;-><init>()V

    .line 101
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v17, v17, 0x1

    .line 103
    goto :goto_1

    .line 105
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .line 106
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    const/4 v3, 0x1

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$402(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 107
    const/4 v3, 0x0

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$002(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 108
    const/4 v3, 0x0

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$302(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J
    invoke-static {v8, v4, v5}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$502(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;J)J

    .line 110
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$102(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F

    .line 111
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$202(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F

    .line 112
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/EdgeGestureDetector;->detectTouch(FFJLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V

    .line 113
    const-string v3, "EdgeGestureDetector"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "new TouchDown event ps=%s mMaxNumPointers=%d mCurNumPointers=%d action=%d index=%d id=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mMaxNumPointers:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .end local v14    # "id":I
    .end local v19    # "index":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 120
    .local v16, "NI":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    .line 121
    .local v2, "N":I
    const/16 v18, 0x0

    .local v18, "historyPos":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 122
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_b

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 124
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_7

    .line 122
    :cond_6
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 125
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurDown:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    move-object v8, v3

    .line 126
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :goto_5
    if-eqz v8, :cond_a

    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$600(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v13

    .line 127
    .local v13, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 128
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPrintCoords:Z

    if-eqz v3, :cond_8

    .line 129
    const-string v10, "Pointer"

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/ui/EdgeGestureDetector;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 131
    :cond_8
    if-eqz v8, :cond_6

    .line 132
    iget v3, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lcom/android/camera/ui/EdgeGestureDetector;->detectMoving(FFLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V

    goto :goto_4

    .line 125
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .end local v13    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 126
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 121
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .end local v14    # "id":I
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 136
    .end local v12    # "i":I
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_7
    move/from16 v0, v16

    if-ge v12, v0, :cond_12

    .line 137
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 138
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_e

    .line 136
    :cond_d
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 139
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurDown:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    move-object v8, v3

    .line 140
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :goto_9
    if-eqz v8, :cond_11

    # getter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$600(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v13

    .line 141
    .restart local v13    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 142
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPrintCoords:Z

    if-eqz v3, :cond_f

    .line 143
    const-string v10, "Pointer"

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/ui/EdgeGestureDetector;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 145
    :cond_f
    if-eqz v8, :cond_d

    .line 146
    iget v3, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v8}, Lcom/android/camera/ui/EdgeGestureDetector;->detectMoving(FFLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V

    goto :goto_8

    .line 139
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .end local v13    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_10
    const/4 v8, 0x0

    goto :goto_9

    .line 140
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_a

    .line 150
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .end local v14    # "id":I
    :cond_12
    const/4 v3, 0x1

    if-eq v11, v3, :cond_13

    const/4 v3, 0x3

    if-eq v11, v3, :cond_13

    and-int/lit16 v3, v11, 0xff

    const/4 v4, 0x6

    if-ne v3, v4, :cond_16

    .line 153
    :cond_13
    const v3, 0xff00

    and-int/2addr v3, v11

    shr-int/lit8 v19, v3, 0x8

    .line 156
    .restart local v19    # "index":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 157
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_14

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .line 159
    .restart local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    const-string v3, "EdgeGestureDetector"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "new TouchUp event ps=%s mMaxNumPointers=%d mCurNumPointers=%d action=%d index=%d id=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mMaxNumPointers:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/EdgeGestureDetector;->detectTap(FFJLcom/android/camera/ui/EdgeGestureDetector$PointerState;)V

    .line 164
    const/4 v3, 0x0

    # setter for: Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z
    invoke-static {v8, v3}, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->access$402(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z

    .line 167
    .end local v8    # "ps":Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    :cond_14
    const/4 v3, 0x1

    if-eq v11, v3, :cond_15

    const/4 v3, 0x3

    if-ne v11, v3, :cond_17

    .line 169
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurDown:Z

    .line 170
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    .line 175
    .end local v14    # "id":I
    .end local v19    # "index":I
    :cond_16
    :goto_b
    return-void

    .line 171
    .restart local v14    # "id":I
    .restart local v19    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_16

    .line 172
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/ui/EdgeGestureDetector;->mCurNumPointers:I

    goto :goto_b
.end method
