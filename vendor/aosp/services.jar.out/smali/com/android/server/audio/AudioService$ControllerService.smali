.class Lcom/android/server/audio/AudioService$ControllerService;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerService"
.end annotation


# instance fields
.field private mComponent:Landroid/content/ComponentName;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .prologue
    .line 6406
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    .line 6407
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6408
    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService$ControllerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$ControllerService;

    .prologue
    .line 6402
    iget v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    return v0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 6416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$ControllerService;->onChange(Z)V

    .line 6417
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_controller_service_component"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6419
    return-void
.end method

.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6423
    iput v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    .line 6424
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    .line 6425
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volume_controller_service_component"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6427
    .local v1, "setting":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6437
    :cond_0
    :goto_0
    return-void

    .line 6429
    :cond_1
    :try_start_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    .line 6430
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 6431
    iget-object v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$9700(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6436
    :goto_1
    sget-boolean v2, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reloaded controller service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6433
    :catch_0
    move-exception v0

    .line 6434
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioService"

    const-string v3, "Error loading controller service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6412
    const-string v0, "{mUid=%d,mComponent=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/audio/AudioService$ControllerService;->mComponent:Landroid/content/ComponentName;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
