.class public Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
.super Ljava/lang/Object;
.source "EdgeGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EdgeGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mDownTime:J

.field private mHandleDown:Z

.field private mMoving:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 261
    iput p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 261
    iput p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;
    .param p1, "x1"    # J

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/EdgeGestureDetector$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/EdgeGestureDetector$PointerState;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 276
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "PointerState mDownFocusX=%f mDownFocusY=%f mDownTime=%d mCurDown=%b mHandleDown=%b  mMoving=%b"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownFocusY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mCurDown:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mHandleDown:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/android/camera/ui/EdgeGestureDetector$PointerState;->mMoving:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
