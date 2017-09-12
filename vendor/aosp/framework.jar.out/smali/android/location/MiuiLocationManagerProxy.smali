.class public Landroid/location/MiuiLocationManagerProxy;
.super Ljava/lang/Object;
.source "MiuiLocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/MiuiLocationManagerProxy$ProxyBinder;,
        Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    }
.end annotation


# static fields
.field private static sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    return-object v0
.end method

.method public static getProxy(Landroid/location/ILocationManager;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "locationManager"    # Landroid/location/ILocationManager;

    .prologue
    .line 26
    new-instance v0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;

    invoke-interface {p0}, Landroid/location/ILocationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    return-object v0
.end method

.method public static setInvokeMonitor(Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;)V
    .locals 2
    .param p0, "m"    # Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    .prologue
    .line 20
    const-class v1, Landroid/location/MiuiLocationManagerProxy;

    monitor-enter v1

    .line 21
    :try_start_0
    sput-object p0, Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
