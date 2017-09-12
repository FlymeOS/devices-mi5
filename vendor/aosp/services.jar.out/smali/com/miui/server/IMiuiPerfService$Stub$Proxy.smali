.class Lcom/miui/server/IMiuiPerfService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMiuiPerfService.java"

# interfaces
.implements Lcom/miui/server/IMiuiPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/IMiuiPerfService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/server/IMiuiPerfService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 56
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/server/IMiuiPerfService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "com.miui.performance.server.IMiuiPerfService"

    return-object v0
.end method
