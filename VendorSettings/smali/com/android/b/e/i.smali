.class final Lcom/android/b/e/i;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# instance fields
.field final synthetic aLc:Lcom/android/b/e/c;


# direct methods
.method public constructor <init>(Lcom/android/b/e/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/b/e/i;->aLc:Lcom/android/b/e/c;

    .line 598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 619
    :goto_0
    return-void

    .line 605
    :pswitch_0
    iget-object v0, p0, Lcom/android/b/e/i;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->e(Lcom/android/b/e/c;)V

    goto :goto_0

    .line 608
    :pswitch_1
    iget-object v1, p0, Lcom/android/b/e/i;->aLc:Lcom/android/b/e/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 611
    :pswitch_2
    iget-object v0, p0, Lcom/android/b/e/i;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->f(Lcom/android/b/e/c;)V

    goto :goto_0

    .line 615
    :pswitch_3
    iget-object v0, p0, Lcom/android/b/e/i;->aLc:Lcom/android/b/e/c;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/b/e/c;->a(Lcom/android/b/e/c;I)V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
