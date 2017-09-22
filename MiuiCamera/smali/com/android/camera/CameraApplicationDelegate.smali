.class public Lcom/android/camera/CameraApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "CameraApplicationDelegate.java"


# static fields
.field private static appChannel:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static sContext:Lcom/android/camera/CameraAppImpl;


# instance fields
.field private mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "2882303761517373386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    .line 20
    const-string v0, "5641737344386"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    .line 21
    const-string v0, "XiaoMi"

    sput-object v0, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraAppImpl;)V
    .locals 1
    .param p1, "cameraAppImpl"    # Lcom/android/camera/CameraAppImpl;

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 25
    sput-object p1, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    .line 26
    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/camera/CameraApplicationDelegate;->sContext:Lcom/android/camera/CameraAppImpl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    monitor-enter p0

    if-nez p1, :cond_0

    .line 68
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 4
    .param p1, "current"    # Landroid/app/Activity;

    .prologue
    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraApplicationDelegate;->getActivity(I)Landroid/app/Activity;

    move-result-object v0

    .line 82
    if-eq v0, p1, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    iget-object v3, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActivity(I)Landroid/app/Activity;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/CameraApplicationDelegate;->getActivityCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActivityCount()I
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSettingsFlag()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 31
    invoke-static {p0}, Lcom/android/camera/Util;->initialize(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraApplicationDelegate;->appID:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/CameraApplicationDelegate;->appKey:Ljava/lang/String;

    sget-object v3, Lcom/android/camera/CameraApplicationDelegate;->appChannel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 34
    const/4 v0, 0x4

    const-wide/32 v2, 0x2bf20

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    .line 36
    iput-boolean v4, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 37
    return-void
.end method

.method public declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    monitor-enter p0

    if-nez p1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetRestoreFlag()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraApplicationDelegate;->mRestoreSetting:Z

    .line 53
    return-void
.end method
