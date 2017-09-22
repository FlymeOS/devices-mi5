.class Lcom/android/camera/snap/SnapService$InnerHandler;
.super Landroid/os/Handler;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/snap/SnapService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService$InnerHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$InnerHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/snap/SnapService;

    .line 52
    .local v0, "service":Lcom/android/camera/snap/SnapService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    # getter for: Lcom/android/camera/snap/SnapService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/snap/SnapService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop service"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    # invokes: Lcom/android/camera/snap/SnapService;->destroy()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$100(Lcom/android/camera/snap/SnapService;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/camera/snap/SnapService;->stopSelf()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
