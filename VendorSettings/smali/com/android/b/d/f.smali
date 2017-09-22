.class Lcom/android/b/d/f;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aKB:Lcom/android/b/d/e;


# direct methods
.method constructor <init>(Lcom/android/b/d/e;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 321
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    invoke-static {v1, v0}, Lcom/android/b/d/e;->a(Lcom/android/b/d/e;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 324
    iget-object v1, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/b/d/e;->a(Lcom/android/b/d/e;Z)Z

    .line 325
    iget-object v1, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    iget-object v2, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/b/d/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/b/d/e;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/b/d/e;->a(Lcom/android/b/d/e;Z)Z

    .line 331
    iget-object v0, p0, Lcom/android/b/d/f;->aKB:Lcom/android/b/d/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/b/d/e;->removeMessages(I)V

    .line 332
    return-void
.end method
