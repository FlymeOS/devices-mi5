.class Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NLPProxy"
.end annotation


# instance fields
.field private mProxyInterval:I

.field private mProxyOneShot:Z

.field private mProxyRequested:Z

.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 429
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 431
    iput-boolean v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    .line 432
    iput v0, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 433
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "MiuiGpsProvider"

    const-string v2, "cancelRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$900(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 477
    .local v0, "manager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 479
    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 480
    iput-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    .line 481
    iput v3, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 482
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 437
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get location from nlp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$800(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$400(Lcom/android/server/MiuiFakeGpsProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mThread:Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$800(Lcom/android/server/MiuiFakeGpsProvider;)Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/MiuiFakeGpsProvider$ReportLocationThread;->setLocationLocked(Landroid/location/Location;)V

    .line 441
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    if-eqz v1, :cond_3

    .line 444
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "MiuiGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProxyOneShort\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$900(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 446
    .local v0, "manager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 448
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_3
    return-void

    .line 441
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 454
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 450
    return-void
.end method

.method public requestLocation(IZ)V
    .locals 6
    .param p1, "interval"    # I
    .param p2, "oneShort"    # Z

    .prologue
    .line 457
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    if-eq v1, p2, :cond_0

    .line 458
    iput-boolean p2, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyOneShot:Z

    .line 460
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    if-eq v1, p1, :cond_4

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # getter for: Lcom/android/server/MiuiFakeGpsProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$900(Lcom/android/server/MiuiFakeGpsProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 462
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    iget v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    if-eq v1, p1, :cond_3

    .line 464
    sget-boolean v1, Lcom/android/server/MiuiFakeGpsProvider;->D:Z

    if-eqz v1, :cond_2

    const-string v1, "MiuiGpsProvider"

    const-string v2, "remove updates in requestLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 467
    :cond_3
    const-string v1, "network"

    int-to-long v2, p1

    const/high16 v4, 0x41200000    # 10.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 468
    iput p1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyInterval:I

    .line 469
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/MiuiFakeGpsProvider$NLPProxy;->mProxyRequested:Z

    .line 472
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_4
    return-void
.end method
