.class public Lcom/android/camera/CameraBrightness;
.super Ljava/lang/Object;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraBrightness$1;,
        Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
    }
.end annotation


# static fields
.field private static mScreenManualBrightnessSpline:Landroid/util/Spline;


# instance fields
.field private mBrightness:I

.field private mCameraBrightnessTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentActivity:Landroid/app/Activity;

.field private mFirstFocusChanged:Z

.field private mPaused:Z

.field private mUseDefaultValue:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraBrightness;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    return v0
.end method

.method static synthetic access$200()Landroid/util/Spline;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/CameraBrightness;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->createSpline()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/CameraBrightness;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return p1
.end method

.method private adjustBrightness()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/android/camera/Device;->adjustScreenLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 150
    new-instance v0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    .line 152
    :cond_0
    return-void
.end method

.method private cancelLastTask()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCameraBrightnessTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 156
    :cond_0
    return-void
.end method

.method private static createManualBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 8
    .param p0, "inBrightness"    # [I
    .param p1, "outBrightness"    # [I

    .prologue
    .line 212
    :try_start_0
    array-length v2, p0

    .line 213
    .local v2, "n":I
    new-array v4, v2, [F

    .line 214
    .local v4, "x":[F
    new-array v5, v2, [F

    .line 216
    .local v5, "y":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 217
    aget v6, p0, v1

    int-to-float v6, v6

    aput v6, v4, v1

    .line 218
    aget v6, p1, v1

    int-to-float v6, v6

    aput v6, v5, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 231
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "x":[F
    .end local v5    # "y":[F
    :goto_1
    return-object v3

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "CameraBrightness"

    const-string v7, "Could not create manual-brightness spline."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createSpline()V
    .locals 4

    .prologue
    .line 189
    const-string v2, "config_manualBrightnessRemapIn"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 190
    .local v0, "inBrightness":[I
    const-string v2, "config_manualBrightnessRemapOut"

    invoke-direct {p0, v2}, Lcom/android/camera/CameraBrightness;->getArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 193
    .local v1, "outBrightness":[I
    invoke-static {v1, v0}, Lcom/android/camera/CameraBrightness;->createManualBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    .line 194
    sget-object v2, Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;

    if-nez v2, :cond_0

    .line 195
    const-string v2, "CameraBrightness"

    const-string v3, "Error to create manual brightness spline"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method

.method private getArray(Ljava/lang/String;)[I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    const-class v1, Lcom/android/internal/R$array;

    const-string v2, "I"

    invoke-static {v1, p1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    .line 202
    .local v0, "field":Lmiui/reflect/Field;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .end local v0    # "field":Lmiui/reflect/Field;
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v1

    .line 207
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    goto :goto_0

    .line 204
    :catch_1
    move-exception v1

    goto :goto_1

    .line 207
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/camera/CameraBrightness;->mBrightness:I

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 185
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->cancelLastTask()V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/camera/BasePreferenceActivity;

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    .line 178
    const-string v0, "CameraBrightness"

    const-string v1, "onResume adjustBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    .line 180
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v0, 0x1

    .line 159
    const-string v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFirstFocusChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 161
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CameraBrightness;->mPaused:Z

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/camera/BasePreferenceActivity;

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z

    .line 168
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness;->adjustBrightness()V

    goto :goto_0

    .line 167
    :cond_3
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method
