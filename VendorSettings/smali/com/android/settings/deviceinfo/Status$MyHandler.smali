.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# instance fields
.field private WY:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->WY:Ljava/lang/ref/WeakReference;

    .line 109
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->WY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/Status;

    .line 114
    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->ln()V

    .line 121
    const/16 v0, 0x1f4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :sswitch_1
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->pl()V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method
