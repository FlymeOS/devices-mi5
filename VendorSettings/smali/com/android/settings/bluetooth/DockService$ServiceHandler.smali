.class final Lcom/android/settings/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# instance fields
.field final synthetic RU:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->RU:Lcom/android/settings/bluetooth/DockService;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->RU:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/DockService;->a(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V

    .line 261
    return-void
.end method
