.class final Lcom/android/b/e/e;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# instance fields
.field final synthetic aLc:Lcom/android/b/e/c;


# direct methods
.method public constructor <init>(Lcom/android/b/e/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    .line 558
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 559
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->d(Lcom/android/b/e/c;)Lcom/android/b/e/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->d(Lcom/android/b/e/c;)Lcom/android/b/e/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/b/e/h;->xz()V

    goto :goto_0

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->d(Lcom/android/b/e/c;)Lcom/android/b/e/h;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/b/e/h;->dC(I)V

    goto :goto_0

    .line 574
    :pswitch_2
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    invoke-static {v0}, Lcom/android/b/e/c;->d(Lcom/android/b/e/c;)Lcom/android/b/e/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/b/e/h;->xA()V

    goto :goto_0

    .line 577
    :pswitch_3
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->resume()V

    goto :goto_0

    .line 582
    :pswitch_4
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/b/e/e;->aLc:Lcom/android/b/e/c;

    iget-object v0, v0, Lcom/android/b/e/c;->aLb:Lcom/android/b/e/g;

    invoke-virtual {v0}, Lcom/android/b/e/g;->pause()V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
