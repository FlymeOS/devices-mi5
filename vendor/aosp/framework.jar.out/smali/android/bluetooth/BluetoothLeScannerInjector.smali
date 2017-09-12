.class public Landroid/bluetooth/BluetoothLeScannerInjector;
.super Ljava/lang/Object;
.source "BluetoothLeScannerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLeScannerInjector"

.field private static final sLeScanStatisticsClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static cleanupLeScanStatistics()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    :cond_0
    return-void
.end method

.method public static isLeScanAllowed()Z
    .locals 5

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 36
    .local v2, "uid":I
    const/4 v0, 0x1

    .line 38
    .local v0, "allow":Z
    :try_start_0
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v3

    .line 40
    .local v3, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v3, :cond_0

    .line 41
    invoke-interface {v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy;->isLeScanAllowed(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    .end local v3    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startLeScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 10
    .param p0, "clientIf"    # I
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p3, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 54
    .local v8, "uid":I
    new-instance v0, Landroid/bluetooth/BleScanWrapper;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    .local v0, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v1, "BleScanWrapper"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    const-string v1, "IBinder"

    invoke-virtual {v6, v1, p5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 59
    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v9

    .line 61
    .local v9, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v9, :cond_0

    .line 62
    invoke-interface {v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/miui/whetstone/IPowerKeeperPolicy;->startLeScan(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uid":I
    .end local v9    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v7

    .line 65
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startLeScanStatistics(Landroid/bluetooth/IBluetoothManager;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 8
    .param p0, "btManager"    # Landroid/bluetooth/IBluetoothManager;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v4, 0x0

    .line 94
    const-string v5, "BluetoothLeScannerInjector"

    const-string/jumbo v6, "startLeScanStatistics()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez p1, :cond_0

    .line 96
    const-string v5, "BluetoothLeScannerInjector"

    const-string/jumbo v6, "startLeScanStatistics: null callback"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return v4

    .line 100
    :cond_0
    sget-object v5, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v5

    .line 102
    :try_start_0
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 103
    .local v1, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v1, :cond_1

    .line 105
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 129
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 108
    .restart local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_1
    :try_start_2
    new-instance v2, Landroid/bluetooth/BluetoothLeScannerInjector$1;

    invoke-direct {v2, p1}, Landroid/bluetooth/BluetoothLeScannerInjector$1;-><init>(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 120
    .local v2, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v3, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    invoke-direct {v3, v1, v2}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;-><init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/le/ScanCallback;)V

    .line 122
    .local v3, "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->startBleScanStatistics()V

    .line 123
    sget-object v6, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v6, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    const/4 v4, 0x1

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 126
    .end local v1    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v3    # "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothLeScannerInjector"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static stopLeScan(ILandroid/os/IBinder;)V
    .locals 10
    .param p0, "clientIf"    # I
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 72
    .local v8, "uid":I
    new-instance v0, Landroid/bluetooth/BleScanWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BleScanWrapper;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 73
    .local v0, "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "uid"

    invoke-virtual {v6, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "BleScanWrapper"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    const-string v1, "IBinder"

    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 77
    const-string/jumbo v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v9

    .line 79
    .local v9, "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    if-eqz v9, :cond_0

    .line 80
    invoke-interface {v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/miui/whetstone/IPowerKeeperPolicy;->stopLeScan(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "bleScanWrapper":Landroid/bluetooth/BleScanWrapper;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "uid":I
    .end local v9    # "ws":Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static stopLeScanStatistics(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 4
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 134
    const-string v1, "BluetoothLeScannerInjector"

    const-string/jumbo v2, "stopLeScanStatistics()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v2, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothLeScannerInjector;->sLeScanStatisticsClients:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;

    .line 138
    .local v0, "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    if-nez v0, :cond_0

    .line 139
    const-string v1, "BluetoothLeScannerInjector"

    const-string/jumbo v3, "no ble scan statistics callback found."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    monitor-exit v2

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;->stopBleScanStatistics()V

    .line 143
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wrapper":Landroid/bluetooth/BluetoothLeScannerInjector$BleScanStatisticsCallbackWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
