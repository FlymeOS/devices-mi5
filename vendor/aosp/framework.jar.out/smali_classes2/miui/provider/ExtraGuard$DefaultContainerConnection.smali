.class Lmiui/provider/ExtraGuard$DefaultContainerConnection;
.super Ljava/lang/Object;
.source "ExtraGuard.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultContainerConnection"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 60
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    # setter for: Lmiui/provider/ExtraGuard;->gService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lmiui/provider/ExtraGuard;->access$002(Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 61
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    return-void
.end method
