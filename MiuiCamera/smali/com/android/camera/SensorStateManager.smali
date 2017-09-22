.class public Lcom/android/camera/SensorStateManager;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorStateManager$MainHandler;,
        Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;,
        Lcom/android/camera/SensorStateManager$SensorStateListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_POSTURE_DEGREE:I

.field private static final GYROSCOPE_MOVING_THRESHOLD:D

.field private static final GYROSCOPE_STABLE_THRESHOLD:D


# instance fields
.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleSpeed:[D

.field private mAngleSpeedIndex:I

.field private mAngleTotal:D

.field private mCapturePosture:I

.field private mDeviceStable:Z

.field private mEdgeTouchEnabled:Z

.field private mFocusSensorEnabled:Z

.field private mGradienterEnabled:Z

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mGyroscopeTimeStamp:J

.field private mHandler:Landroid/os/Handler;

.field private mIsLying:Z

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mLinearAccelerometer:Landroid/hardware/Sensor;

.field private mOrientation:F

.field private final mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mRate:I

.field private mRotationFlagEnabled:Z

.field private mSensorListenerThread:Landroid/os/HandlerThread;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegister:I

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 30
    const-string v0, "camera_stable_threshold"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    .line 31
    const-string v0, "camera_moving_threshold"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    .line 45
    const-string v0, "capture_degree"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    .line 51
    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 52
    iput v4, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 62
    iput v4, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [D

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v4

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v5

    const/4 v1, 0x2

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v6

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    .line 69
    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    .line 70
    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    .line 303
    new-instance v0, Lcom/android/camera/SensorStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$1;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 344
    new-instance v0, Lcom/android/camera/SensorStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$2;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 421
    new-instance v0, Lcom/android/camera/SensorStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$3;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    .line 91
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 93
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 94
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 95
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 96
    new-instance v0, Lcom/android/camera/SensorStateManager$MainHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/SensorStateManager$MainHandler;-><init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    .line 98
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 103
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    .line 104
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SensorStateManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/SensorStateManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/SensorStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/SensorStateManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/SensorStateManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/SensorStateManager;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBecomeStable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SensorStateManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    return-void
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBeginMoving()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/SensorStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/SensorStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/camera/SensorStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SensorStateManager;)[D
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SensorStateManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/SensorStateManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic access$618(Lcom/android/camera/SensorStateManager;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/SensorStateManager;D)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/SensorStateManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/camera/SensorStateManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/camera/SensorStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/SensorStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p1
.end method

.method private changeCapturePosture(I)V
    .locals 1
    .param p1, "posture"    # I

    .prologue
    .line 553
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    if-eq v0, p1, :cond_0

    .line 554
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 555
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->notifyDevicePostureChanged()V

    .line 559
    :cond_0
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBecomeStable()V

    .line 522
    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBeginMoving()V

    .line 514
    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceKeepMoving(D)V

    .line 533
    :cond_0
    return-void
.end method

.method private filterUnregistSensor(I)I
    .locals 1
    .param p1, "sensor"    # I

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    and-int/lit8 v0, p1, -0x3

    and-int/lit8 p1, v0, -0x5

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v0, :cond_1

    .line 153
    and-int/lit8 p1, p1, -0x5

    .line 155
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 156
    and-int/lit8 v0, p1, -0x2

    and-int/lit8 p1, v0, -0x3

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v0, :cond_3

    .line 159
    and-int/lit8 v0, p1, -0x9

    and-int/lit8 p1, v0, -0x5

    .line 161
    :cond_3
    return p1
.end method

.method private isContains(II)Z
    .locals 1
    .param p1, "total"    # I
    .param p2, "special"    # I

    .prologue
    .line 271
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPartialContains(II)Z
    .locals 1
    .param p1, "total"    # I
    .param p2, "special"    # I

    .prologue
    .line 275
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeDegree(F)F
    .locals 2
    .param p1, "degree"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 487
    :goto_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 488
    sub-float/2addr p1, v1

    goto :goto_0

    .line 490
    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 491
    add-float/2addr p1, v1

    goto :goto_1

    .line 493
    :cond_1
    return p1
.end method

.method private update(IZ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 181
    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->register(I)V

    goto :goto_0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    return v0
.end method

.method public isDeviceLying()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method public isStable()Z
    .locals 18

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    if-ltz v9, :cond_2

    .line 287
    const-wide/16 v12, 0x0

    .line 288
    .local v12, "total":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    .local v2, "arr$":[D
    array-length v8, v2

    .local v8, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v8, :cond_0

    aget-wide v10, v2, v3

    .line 289
    .local v10, "speed":D
    add-double/2addr v12, v10

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    .end local v10    # "speed":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    array-length v9, v9

    int-to-double v14, v9

    div-double v4, v12, v14

    .line 292
    .local v4, "avgSpeed":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v14 .. v16}, Lcom/android/camera/Util;->clamp(III)I

    move-result v14

    aget-wide v6, v9, v14

    .line 293
    .local v6, "lastSpeed":D
    const-string v9, "SensorStateManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isStable mAngleSpeed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lastSpeed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " threshold="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v16, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-wide v14, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    cmpg-double v9, v4, v14

    if-gtz v9, :cond_1

    sget-wide v14, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    cmpg-double v9, v6, v14

    if-gtz v9, :cond_1

    const/4 v9, 0x1

    .line 299
    .end local v2    # "arr$":[D
    .end local v3    # "i$":I
    .end local v4    # "avgSpeed":D
    .end local v6    # "lastSpeed":D
    .end local v8    # "len$":I
    .end local v12    # "total":D
    :goto_1
    return v9

    .line 295
    .restart local v2    # "arr$":[D
    .restart local v3    # "i$":I
    .restart local v4    # "avgSpeed":D
    .restart local v6    # "lastSpeed":D
    .restart local v8    # "len$":I
    .restart local v12    # "total":D
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 297
    .end local v2    # "arr$":[D
    .end local v3    # "i$":I
    .end local v4    # "avgSpeed":D
    .end local v6    # "lastSpeed":D
    .end local v8    # "len$":I
    .end local v12    # "total":D
    :cond_2
    const-string v9, "SensorStateManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isStable return true for mAngleSpeedIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " threshold="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v16, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 563
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x1

    or-int/lit8 v0, v1, 0x2

    .line 193
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_1

    .line 194
    or-int/lit8 v1, v0, 0x2

    or-int/lit8 v0, v1, 0x4

    .line 196
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_2

    .line 197
    or-int/lit8 v1, v0, 0x8

    or-int/lit8 v0, v1, 0x4

    .line 199
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eqz v1, :cond_3

    .line 200
    or-int/lit8 v0, v0, 0x4

    .line 202
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->register(I)V

    .line 203
    return-void
.end method

.method public register(I)V
    .locals 7
    .param p1, "sensor"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 206
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 213
    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    .line 214
    or-int/lit8 v0, p1, 0x1

    or-int/lit8 p1, v0, 0x2

    .line 215
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 219
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 221
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 223
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 225
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 227
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 229
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 231
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 234
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    .line 281
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    .line 283
    return-void
.end method

.method public setEdgeTouchEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 165
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eq v1, p1, :cond_2

    .line 166
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    .line 167
    const/4 v0, 0x6

    .line 168
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v1, :cond_1

    .line 169
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_0

    .line 170
    and-int/lit8 v0, v0, -0x5

    .line 172
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_1

    .line 173
    and-int/lit8 v0, v0, -0x3

    .line 176
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    .line 178
    .end local v0    # "sensor":I
    :cond_2
    return-void
.end method

.method public setFocusSensorEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    .line 112
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eq v1, p1, :cond_1

    .line 113
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    .line 114
    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    const/4 v0, 0x3

    .line 116
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregistSensor(I)I

    move-result v0

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    .end local v0    # "sensor":I
    :cond_1
    return-void

    .line 119
    .restart local v0    # "sensor":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGradienterEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eq v1, p1, :cond_1

    .line 127
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    .line 128
    const/16 v0, 0xc

    .line 129
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-nez v1, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregistSensor(I)I

    move-result v0

    .line 132
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    .line 134
    .end local v0    # "sensor":I
    :cond_1
    return-void
.end method

.method public setRotationIndicatorEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 137
    invoke-static {}, Lcom/android/camera/Device;->isOrientationIndicatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-eq v1, p1, :cond_1

    .line 139
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    .line 140
    const/4 v0, 0x4

    .line 141
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    if-nez v1, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/camera/SensorStateManager;->filterUnregistSensor(I)I

    move-result v0

    .line 144
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mRotationFlagEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    .line 146
    .end local v0    # "sensor":I
    :cond_1
    return-void
.end method

.method public setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/SensorStateManager$SensorStateListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 109
    return-void
.end method

.method public unregister(I)V
    .locals 6
    .param p1, "sensor"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 237
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    if-eqz v0, :cond_6

    .line 238
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    or-int/lit8 p1, p1, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v0, :cond_1

    .line 243
    or-int/lit8 p1, p1, 0x2

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 247
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 251
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 253
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 255
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 257
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 259
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 260
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 261
    invoke-direct {p0, v2}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    .line 263
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 265
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 268
    :cond_6
    return-void
.end method
